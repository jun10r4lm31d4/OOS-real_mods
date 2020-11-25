.class public Lcom/oneplus/faceunlock/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/Config$CustomType;
    }
.end annotation


# static fields
.field public static final DEFAULT_CHECK_LIVENESS_WHEN_SETTING:Z = true

.field public static final DEFAULT_CHECK_LIVENESS_WHEN_UNLOCKING:Z = true

.field public static final DEFAULT_USE_TEE:Z = true

.field private static final PREF_KEY_CHECK_LIVENESS_WHEN_SETTING:Ljava/lang/String; = "CheckLivenessWhenSetting"

.field private static final PREF_KEY_CHECK_LIVENESS_WHEN_UNLOCKING:Ljava/lang/String; = "CheckLivenessWhenUnlocking"

.field private static final PREF_KEY_USE_TEE:Ljava/lang/String; = "UseTEE"

.field private static final PREF_NAME_CONFIG:Ljava/lang/String; = "config"

.field private static final SYS_PROP_DEBUG:Ljava/lang/String; = "persist.faceunlock.debug"

.field private static final SYS_PROP_UNLOCK_DUMP:Ljava/lang/String; = "persist.camera.unlockdump"

.field private static final SYS_PROP_UNLOCK_DUMP2:Ljava/lang/String; = "vendor.oem.camera.unlockdump"

.field private static final TAG:Ljava/lang/String;

.field private static final m_ConfigPreferences:Landroid/content/SharedPreferences;

.field private static final m_IsDebugMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/oneplus/faceunlock/Config;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    const-string v0, "1"

    const-string v1, "persist.faceunlock.debug"

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Utils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, m_IsDebugMode:Z

    sget-boolean v0, m_IsDebugMode:Z

    if-eqz v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "Debug mode ON"

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, m_IsDebugMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v0

    const-string v1, "config"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    sput-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkLivenessWhenSetting()Z
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CheckLivenessWhenSetting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, selectBooleanConfig(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static checkLivenessWhenUnlocking()Z
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "CheckLivenessWhenUnlocking"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, selectBooleanConfig(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getCustomType()Lcom/oneplus/faceunlock/Config$CustomType;
    .locals 4

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v0

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCustomType() - CustomType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/faceunlock/Config$1;->$SwitchMap$com$oneplus$custom$utils$OpCustomizeSettings$CUSTOM_TYPE:[I

    invoke-virtual {v0}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, Lcom/oneplus/faceunlock/Config$CustomType;->NONE:Lcom/oneplus/faceunlock/Config$CustomType;

    :goto_0
    return-object v1

    :pswitch_0
    sget-object v1, Lcom/oneplus/faceunlock/Config$CustomType;->JCC:Lcom/oneplus/faceunlock/Config$CustomType;

    goto :goto_0

    :pswitch_1
    sget-object v1, Lcom/oneplus/faceunlock/Config$CustomType;->SW:Lcom/oneplus/faceunlock/Config$CustomType;

    goto :goto_0

    :pswitch_2
    sget-object v1, Lcom/oneplus/faceunlock/Config$CustomType;->AVG:Lcom/oneplus/faceunlock/Config$CustomType;

    goto :goto_0

    :pswitch_3
    sget-object v1, Lcom/oneplus/faceunlock/Config$CustomType;->MCL:Lcom/oneplus/faceunlock/Config$CustomType;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isDebugMode()Z
    .locals 1

    sget-boolean v0, m_IsDebugMode:Z

    return v0
.end method

.method public static isUnlockDumpEnabled()Z
    .locals 2

    const-string v0, "1"

    const-string v1, "persist.camera.unlockdump"

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Utils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "vendor.oem.camera.unlockdump"

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Utils;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static selectBooleanConfig(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z
    .locals 1

    sget-boolean v0, m_IsDebugMode:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    goto :goto_0
.end method

.method protected static selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F
    .locals 1

    sget-boolean v0, m_IsDebugMode:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p2

    goto :goto_0
.end method

.method protected static selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I
    .locals 1

    sget-boolean v0, m_IsDebugMode:Z

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return p2

    :cond_1
    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0
.end method

.method public static useHALAutoMode()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static useSNPE()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static useTEE()Z
    .locals 3

    const/4 v0, 0x1

    return v0

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "UseTEE"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, selectBooleanConfig(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
