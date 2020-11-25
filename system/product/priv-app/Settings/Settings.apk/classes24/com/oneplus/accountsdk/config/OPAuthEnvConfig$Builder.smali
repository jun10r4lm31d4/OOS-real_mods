.class public Lcom/oneplus/accountsdk/config/OPAuthEnvConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private alitaClientId:Ljava/lang/String;

.field private alitaClientSecret:Ljava/lang/String;

.field private alitaPrivateKey:Ljava/lang/String;

.field private alitaUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkParams()V
    .locals 2

    iget-object v0, p0, alitaClientId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, alitaClientSecret:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, alitaUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, alitaPrivateKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "alitaPrivateKey is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "alitaUrl is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "alitaClientSecret is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "alitaClientId is empty"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;
    .locals 2

    invoke-direct {p0}, checkParams()V

    new-instance v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;-><init>()V

    iget-object v1, p0, alitaClientId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->setAlitaClientId(Ljava/lang/String;)V

    iget-object v1, p0, alitaClientSecret:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->setAlitaClientSecret(Ljava/lang/String;)V

    iget-object v1, p0, alitaUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->setAlitaUrl(Ljava/lang/String;)V

    iget-object v1, p0, alitaPrivateKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->setAlitaPrivateKey(Ljava/lang/String;)V

    sput-object v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    return-object v0
.end method

.method public clientId(Ljava/lang/String;)Lcom/oneplus/accountsdk/config/OPAuthEnvConfig$Builder;
    .locals 0

    iput-object p1, p0, alitaClientId:Ljava/lang/String;

    return-object p0
.end method

.method public clientSecret(Ljava/lang/String;)Lcom/oneplus/accountsdk/config/OPAuthEnvConfig$Builder;
    .locals 0

    iput-object p1, p0, alitaClientSecret:Ljava/lang/String;

    return-object p0
.end method

.method public privateKey(Ljava/lang/String;)Lcom/oneplus/accountsdk/config/OPAuthEnvConfig$Builder;
    .locals 0

    iput-object p1, p0, alitaPrivateKey:Ljava/lang/String;

    return-object p0
.end method

.method public serverUrl(Ljava/lang/String;)Lcom/oneplus/accountsdk/config/OPAuthEnvConfig$Builder;
    .locals 0

    iput-object p1, p0, alitaUrl:Ljava/lang/String;

    return-object p0
.end method
