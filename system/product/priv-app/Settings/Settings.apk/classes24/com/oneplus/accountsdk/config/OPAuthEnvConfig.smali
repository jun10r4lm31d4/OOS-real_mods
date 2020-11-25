.class public Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountsdk/config/OPAuthEnvConfig$Builder;
    }
.end annotation


# static fields
.field public static sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;


# instance fields
.field private alitaClientId:Ljava/lang/String;

.field private alitaClientSecret:Ljava/lang/String;

.field private alitaPrivateKey:Ljava/lang/String;

.field private alitaUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "oneplussdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    new-instance v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-direct {v0}, <init>()V

    sput-object v0, sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    const-string v1, "ab8f6129c0c64f9eb2fea5fc1a4c77d5"

    invoke-virtual {v0, v1}, setAlitaClientId(Ljava/lang/String;)V

    sget-object v0, sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    const-string v1, "8d6e073edc3c415d82bcc9f048b63fef"

    invoke-virtual {v0, v1}, setAlitaClientSecret(Ljava/lang/String;)V

    sget-object v0, sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    const-string v1, "https://gateway.oneplus.net/v2/"

    invoke-virtual {v0, v1}, setAlitaUrl(Ljava/lang/String;)V

    sget-object v0, sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OPUtils;->isOverSea()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, getPrivateKeyOverSea()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {}, getPrivateKey()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, setAlitaPrivateKey(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native getPrivateKey()Ljava/lang/String;
.end method

.method private static native getPrivateKeyOverSea()Ljava/lang/String;
.end method


# virtual methods
.method public getAlitaClientId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, alitaClientId:Ljava/lang/String;

    return-object v0
.end method

.method public getAlitaClientSecret()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, alitaClientSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getAlitaPrivateKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, alitaPrivateKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAlitaUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, alitaUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAlitaClientId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, alitaClientId:Ljava/lang/String;

    return-void
.end method

.method public setAlitaClientSecret(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, alitaClientSecret:Ljava/lang/String;

    return-void
.end method

.method public setAlitaPrivateKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, alitaPrivateKey:Ljava/lang/String;

    return-void
.end method

.method public setAlitaUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, alitaUrl:Ljava/lang/String;

    return-void
.end method
