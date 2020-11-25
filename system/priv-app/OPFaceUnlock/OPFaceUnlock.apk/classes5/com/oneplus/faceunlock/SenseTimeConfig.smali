.class public Lcom/oneplus/faceunlock/SenseTimeConfig;
.super Lcom/oneplus/faceunlock/Config;
.source "SenseTimeConfig.java"


# static fields
.field public static final DEFAULT_HACKER_THRESHOLD_WHEN_SETTING:F = 0.95f

.field public static final DEFAULT_HACKER_THRESHOLD_WHEN_UNLOCKING:F = 0.95f

.field public static final DEFAULT_MAX_FACE_PITCH_WHEN_SETTING:I = 0x14

.field public static final DEFAULT_MAX_FACE_PITCH_WHEN_UNLOCKING:I = 0x14

.field public static final DEFAULT_MAX_FACE_ROLL_WHEN_SETTING:I = 0xa

.field public static final DEFAULT_MAX_FACE_ROLL_WHEN_UNLOCKING:I = 0xa

.field public static final DEFAULT_MAX_FACE_YAW_WHEN_SETTING:I = 0xa

.field public static final DEFAULT_MAX_FACE_YAW_WHEN_UNLOCKING:I = 0xa

.field public static final DEFAULT_MIN_QUALITY_WHEN_SETTING:F = 2.0f

.field public static final DEFAULT_MIN_QUALITY_WHEN_UNLOCKING:F = 2.0f

.field public static final DEFAULT_SAME_PERSON_THRESHOLD_WHEN_SETTING:F = 0.8f

.field public static final DEFAULT_SAME_PERSON_THRESHOLD_WHEN_UNLOCKING:F = 0.8f

.field private static final PREF_KEY_HACKER_THRESHOLD_WHEN_SETTING:Ljava/lang/String; = "HackerThresholdWhenSetting"

.field private static final PREF_KEY_HACKER_THRESHOLD_WHEN_UNLOCKING:Ljava/lang/String; = "HackerThresholdWhenUnlocking"

.field private static final PREF_KEY_MAX_FACE_PITCH_WHEN_SETTING:Ljava/lang/String; = "MaxFacePitchWhenSetting"

.field private static final PREF_KEY_MAX_FACE_PITCH_WHEN_UNLOCKING:Ljava/lang/String; = "MaxFacePitchWhenUnlocking"

.field private static final PREF_KEY_MAX_FACE_ROLL_WHEN_SETTING:Ljava/lang/String; = "MaxFaceRollWhenSetting"

.field private static final PREF_KEY_MAX_FACE_ROLL_WHEN_UNLOCKING:Ljava/lang/String; = "MaxFaceRollWhenUnlocking"

.field private static final PREF_KEY_MAX_FACE_YAW_WHEN_SETTING:Ljava/lang/String; = "MaxFaceYawWhenSetting"

.field private static final PREF_KEY_MAX_FACE_YAW_WHEN_UNLOCKING:Ljava/lang/String; = "MaxFaceYawWhenUnlocking"

.field private static final PREF_KEY_MIN_QUALITY_WHEN_SETTING:Ljava/lang/String; = "MinQualityWhenSetting"

.field private static final PREF_KEY_MIN_QUALITY_WHEN_UNLOCKING:Ljava/lang/String; = "MinQualityWhenUnlocking"

.field private static final PREF_KEY_SAME_PERSON_THRESHOLD_WHEN_SETTING:Ljava/lang/String; = "SamePersonThresholdWhenSetting"

.field private static final PREF_KEY_SAME_PERSON_THRESHOLD_WHEN_UNLOCKING:Ljava/lang/String; = "SamePersonThresholdWhenUnlocking"

.field private static final PREF_NAME:Ljava/lang/String; = "config_sensetime"

.field private static final TAG:Ljava/lang/String;

.field private static final m_ConfigPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/oneplus/faceunlock/SenseTimeConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    invoke-static {}, isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v0

    const-string v1, "config_sensetime"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/faceunlock/Config;-><init>()V

    return-void
.end method

.method public static hackerThresholdWhenSetting()F
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "HackerThresholdWhenSetting"

    const v2, 0x3f733333    # 0.95f

    invoke-static {v0, v1, v2}, selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static hackerThresholdWhenUnlocking()F
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "HackerThresholdWhenUnlocking"

    const v2, 0x3f733333    # 0.95f

    invoke-static {v0, v1, v2}, selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static maxFacePitchWhenSetting()I
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxFacePitchWhenSetting"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maxFacePitchWhenUnlocking()I
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxFacePitchWhenUnlocking"

    const/16 v2, 0x14

    invoke-static {v0, v1, v2}, selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maxFaceRollWhenSetting()I
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxFaceRollWhenSetting"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maxFaceRollWhenUnlocking()I
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxFaceRollWhenUnlocking"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maxFaceYawWhenSetting()I
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxFaceYawWhenSetting"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maxFaceYawWhenUnlocking()I
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MaxFaceYawWhenUnlocking"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, selectIntConfig(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static minQualityWhenSetting()F
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MinQualityWhenSetting"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2}, selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static minQualityWhenUnlocking()F
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "MinQualityWhenUnlocking"

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v0, v1, v2}, selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static samePersonThresholdWhenSetting()F
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SamePersonThresholdWhenSetting"

    const v2, 0x3f4ccccd    # 0.8f

    invoke-static {v0, v1, v2}, selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static samePersonThresholdWhenUnlocking()F
    .locals 3

    sget-object v0, m_ConfigPreferences:Landroid/content/SharedPreferences;

    const-string v1, "SamePersonThresholdWhenUnlocking"

    const v2, 0x3f733333    # 0.95f

    invoke-static {v0, v1, v2}, selectFloatConfig(Landroid/content/SharedPreferences;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method
