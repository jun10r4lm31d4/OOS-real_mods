.class public Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->getAlitaClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientSecret()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->getAlitaClientSecret()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getServerUrl()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->getAlitaUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSignPrivateKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->sEnv:Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/config/OPAuthEnvConfig;->getAlitaPrivateKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
