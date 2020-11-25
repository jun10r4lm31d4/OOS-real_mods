.class public Lcom/oneplus/faceunlock/FaceUnlockActivity;
.super Landroid/app/Activity;
.source "FaceUnlockActivity.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/RotationProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/FaceUnlockActivity$OnSystemWindowInsetsChangedListener;,
        Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;,
        Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;,
        Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;
    }
.end annotation


# static fields
.field private static final DISABLE_GMS_FACELOCK:Z = false

.field static final ENABLE_AUTO_FULL_SCROLL:Z = false

.field private static final ENABLE_ORIENTATION_LISTENER:Z = false

.field static final EXTRACT_RESULT_FAIL:I = 0x1

.field static final EXTRACT_RESULT_SUCCESS:I = 0x0

.field static final EXTRA_EXTRACT_RESULT:Ljava/lang/String; = "FaceUnlockActivity.ExtractResult"

.field static final EXTRA_START_MODE:Ljava/lang/String; = "FaceUnlockActivity.StartMode"

.field private static final EXTRA_STATE:Ljava/lang/String; = "FaceUnlockActivity.FragmentType"

.field private static final FORCE_DARK_THEME:Z = true

.field private static final PACKAGE_NAME_GMS_FACELOCK:Ljava/lang/String; = "com.android.facelock"

.field private static final REQUEST_PERMISSION_CODE:I = 0x4b0

.field static final START_MODE_BOOT_GUIDE:I = 0x1

.field static final START_MODE_NORMAL:I = 0x0

.field static final START_MODE_PERMISSION_REQUEST:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_DisplaySize:Landroid/graphics/Point;

.field private m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

.field private m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

.field private m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

.field private m_IsPackageManagerProxyConneted:Z

.field private m_IsRequestingPermission:Z

.field private m_OnSystemWIndowInsetsChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/faceunlock/FaceUnlockActivity$OnSystemWindowInsetsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_OrientationEventListener:Landroid/view/OrientationEventListener;

.field private final m_PackageManagerProxyConnection:Landroid/content/ServiceConnection;

.field private m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

.field private m_RotationListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/oneplus/faceunlock/utils/RotationListener;",
            ">;"
        }
    .end annotation
.end field

.field private m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

.field private m_SystemWindowInsets:Lcom/oneplus/faceunlock/utils/Insets;

.field private m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

.field private m_Toolbar:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->EMPTY:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    iput-object v0, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, m_OnSystemWIndowInsetsChangedListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, m_RotationListeners:Ljava/util/Set;

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->NORMAL:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    iput-object v0, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    new-instance v0, Lcom/oneplus/faceunlock/utils/Insets;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/utils/Insets;-><init>()V

    iput-object v0, p0, m_SystemWindowInsets:Lcom/oneplus/faceunlock/utils/Insets;

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v0, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$1;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceUnlockActivity$1;-><init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;)V

    iput-object v0, p0, m_PackageManagerProxyConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/FaceUnlockActivity;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, onPackageManagerProxyConnected(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/faceunlock/FaceUnlockActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsPackageManagerProxyConneted:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/FaceUnlockActivity;Z)V
    .locals 0

    invoke-direct {p0, p1}, onCheckGmsFacelockComplete(Z)V

    return-void
.end method

.method private applyStatusBarStyle()V
    .locals 4

    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockActivity$5;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$ThemeMode:[I

    iget-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    or-int/lit16 v0, v0, 0x2000

    :goto_0
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void

    :pswitch_0
    and-int/lit16 v0, v0, -0x2001

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private applyTheme()V
    .locals 5

    iget-object v1, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "AppThemePermissionRequest"

    const-string v3, "style"

    const-string v4, "com.oneplus.faceunlock"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, setTheme(I)V

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyTheme() - Theme id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", theme mode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/faceunlock/utils/Utils;->isHydrogenOS()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ThemeDarkHOSBootGuide"

    const-string v3, "style"

    const-string v4, "com.oneplus.faceunlock"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ThemeDarkHOSNormal"

    const-string v3, "style"

    const-string v4, "com.oneplus.faceunlock"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v1, v2, :cond_3

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ThemeDarkOOSBootGuide"

    const-string v3, "style"

    const-string v4, "com.oneplus.faceunlock"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "ThemeDarkOOSNormal"

    const-string v3, "style"

    const-string v4, "com.oneplus.faceunlock"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private checkGmsFacelock()Z
    .locals 8

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, "IsGsmFacelockHidden"

    invoke-static {v6}, Lcom/oneplus/faceunlock/utils/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v4

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.oneplus.camera.service"

    const-string v7, "com.oneplus.camera.service.PackageManagerProxy"

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v6, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "checkGmsFacelock() - Cannot find package manager proxy"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v4, p0, m_PackageManagerProxyConnection:Landroid/content/ServiceConnection;

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v4, v6}, bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, TAG:Ljava/lang/String;

    const-string v6, "checkGmsFacelock() - Fail to bind proxy"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isSpecialTheme()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_special_theme"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method private loadThemeMode()V
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/Config;->getCustomType()Lcom/oneplus/faceunlock/Config$CustomType;

    move-result-object v2

    iget-object v3, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v3, v4, :cond_0

    sget-object v3, Lcom/oneplus/faceunlock/Config$CustomType;->AVG:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v2, v3, :cond_0

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "loadThemeMode() - AVG boot guide theme"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v3, v4, :cond_1

    sget-object v3, Lcom/oneplus/faceunlock/Config$CustomType;->MCL:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v2, v3, :cond_1

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "loadThemeMode() - MCL boot guide theme"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "loadThemeMode() - Fail to update theme mode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v3, v4, :cond_2

    sget-object v3, Lcom/oneplus/faceunlock/Config$CustomType;->SW:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v2, v3, :cond_2

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "loadThemeMode() - SW boot guide theme"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oem_black_mode"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadThemeMode() - Theme mode : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v1, :pswitch_data_0

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->DEFAULT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    goto :goto_0

    :pswitch_0
    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->LIGHT:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    goto :goto_0

    :pswitch_1
    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->DARK:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    iput-object v3, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 6

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onApplyWindowInsets() - Insets : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/faceunlock/utils/Insets;

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/oneplus/faceunlock/utils/Insets;-><init>(IIII)V

    iput-object v1, p0, m_SystemWindowInsets:Lcom/oneplus/faceunlock/utils/Insets;

    iget-object v1, p0, m_OnSystemWIndowInsetsChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$OnSystemWindowInsetsChangedListener;

    iget-object v2, p0, m_SystemWindowInsets:Lcom/oneplus/faceunlock/utils/Insets;

    invoke-interface {v0, v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity$OnSystemWindowInsetsChangedListener;->onChanged(Lcom/oneplus/faceunlock/utils/Insets;)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method private onCheckGmsFacelockComplete(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-direct {p0}, showUI()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setResult(I)V

    invoke-virtual {p0}, finish()V

    goto :goto_0
.end method

.method private onOrientationChanged(I)V
    .locals 6

    iget-object v3, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    if-eqz v3, :cond_3

    iget-object v3, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/utils/Rotation;->getOrientation()I

    move-result v3

    sub-int v0, p1, v3

    const/16 v3, 0xb4

    if-le v0, v3, :cond_2

    rsub-int v0, v0, 0x168

    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    :cond_1
    return-void

    :cond_2
    const/16 v3, -0xb4

    if-ge v0, v3, :cond_0

    add-int/lit16 v0, v0, 0x168

    goto :goto_0

    :cond_3
    iget-object v2, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    invoke-static {p1}, Lcom/oneplus/faceunlock/utils/Rotation;->fromOrientation(I)Lcom/oneplus/faceunlock/utils/Rotation;

    move-result-object v3

    iput-object v3, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    iget-object v3, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    if-eq v2, v3, :cond_1

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOrientationChanged() - Rotation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, m_RotationListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/faceunlock/utils/RotationListener;

    iget-object v4, p0, m_Rotation:Lcom/oneplus/faceunlock/utils/Rotation;

    invoke-interface {v1, v4}, Lcom/oneplus/faceunlock/utils/RotationListener;->onRotationChanged(Lcom/oneplus/faceunlock/utils/Rotation;)V

    goto :goto_1
.end method

.method private onPackageManagerProxyConnected(Landroid/os/IBinder;)V
    .locals 6

    const/4 v5, 0x1

    iput-boolean v5, p0, m_IsPackageManagerProxyConneted:Z

    if-nez p1, :cond_0

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onPackageManagerProxyConnected() - Cannot bind package manager proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, onCheckGmsFacelockComplete(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/oneplus/camera/service/IPackageManagerProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/camera/service/IPackageManagerProxy;

    move-result-object v2

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onPackageManagerProxyConnected() - Connect to package manager proxy"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v3, "com.android.facelock"

    invoke-interface {v2, v3}, Lcom/oneplus/camera/service/IPackageManagerProxy;->getApplicationHiddenSettingAsUser(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onPackageManagerProxyConnected() - GMS face lock is already hidden"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "IsGsmFacelockHidden"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Z)V

    const/4 v3, 0x1

    invoke-direct {p0, v3}, onCheckGmsFacelockComplete(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onPackageManagerProxyConnected() - Fail to check GMS face lock"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, v5}, onCheckGmsFacelockComplete(Z)V

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$2;

    invoke-direct {v3, p0, v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity$2;-><init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;Lcom/oneplus/camera/service/IPackageManagerProxy;)V

    new-instance v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$3;

    invoke-direct {v4, p0}, Lcom/oneplus/faceunlock/FaceUnlockActivity$3;-><init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;)V

    invoke-direct {p0, v3, v4}, showDisableGmsFacelockDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private onPermissionsGranted()V
    .locals 2

    iget-object v0, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v0, v1, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onPermissionsGranted() - Permissions are granted, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, finishAndRemoveTask()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, m_IsRequestingPermission:Z

    invoke-direct {p0}, showUI()V

    goto :goto_0
.end method

.method private showDisableGmsFacelockDialog(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f09000b

    invoke-direct {v1, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x1040013

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080003

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showUI()V
    .locals 3

    const v1, 0x7f050017

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, m_Toolbar:Landroid/widget/RelativeLayout;

    iget-object v1, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v1, v2, :cond_3

    :cond_0
    iget-object v1, p0, m_Toolbar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    invoke-virtual {p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/faceunlock/FaceExtractionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oneplus/faceunlock/FaceExtractionFragment;

    iput-object v1, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/oneplus/faceunlock/FinishFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/oneplus/faceunlock/FinishFragment;

    iput-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    iget-object v1, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    if-nez v1, :cond_1

    new-instance v1, Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-direct {v1}, Lcom/oneplus/faceunlock/FaceExtractionFragment;-><init>()V

    iput-object v1, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    :cond_1
    iget-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    if-nez v1, :cond_2

    new-instance v1, Lcom/oneplus/faceunlock/FinishFragment;

    invoke-direct {v1}, Lcom/oneplus/faceunlock/FinishFragment;-><init>()V

    iput-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    :cond_2
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "showUI()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$5;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$FragmentType:[I

    iget-object v2, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, m_Toolbar:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v1, p0, m_Toolbar:Landroid/widget/RelativeLayout;

    const v2, 0x7f05000c

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockActivity$$Lambda$1;-><init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :pswitch_0
    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->FACE_EXTRACTION:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {p0, v1}, setFragmentType(Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateFragmentVisibility()V
    .locals 4

    invoke-virtual {p0}, isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "updateFragmentVisibility() - Activity is destroyed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    if-eqz v0, :cond_2

    iget-object v0, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    if-nez v0, :cond_3

    :cond_2
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "updateFragmentVisibility() - Fragments are not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFragmentVisibility() - Fragment type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$5;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$FragmentType:[I

    iget-object v1, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {p0}, finish()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->reset()V

    invoke-virtual {p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f050004

    iget-object v2, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    sget-object v3, Lcom/oneplus/faceunlock/FaceExtractionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/FinishFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f050006

    iget-object v2, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    sget-object v3, Lcom/oneplus/faceunlock/FinishFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addOnSystemWindowInsetsChangedListener(Lcom/oneplus/faceunlock/FaceUnlockActivity$OnSystemWindowInsetsChangedListener;)V
    .locals 1

    iget-object v0, p0, m_OnSystemWIndowInsetsChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRotationListener(Lcom/oneplus/faceunlock/utils/RotationListener;)V
    .locals 1

    iget-object v0, p0, m_RotationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final bridge synthetic bridge$lambda$0$FaceUnlockActivity(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-direct {p0, p1, p2}, onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method

.method public finishAndRemoveTask()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 v0, 0x0

    const v1, 0x10a0001

    invoke-virtual {p0, v0, v1}, overridePendingTransition(II)V

    return-void
.end method

.method public getAccentColor()I
    .locals 7

    const v6, 0x7f020001

    invoke-virtual {p0, v6}, getColor(I)I

    move-result v0

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->getCustomType()Lcom/oneplus/faceunlock/Config$CustomType;

    move-result-object v3

    iget-object v4, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v4, v5, :cond_1

    sget-object v4, Lcom/oneplus/faceunlock/Config$CustomType;->AVG:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v3, v4, :cond_1

    invoke-virtual {p0, v6}, getColor(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v4, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/oneplus/faceunlock/utils/Utils;->isHydrogenOS()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, 0x7f020003

    invoke-virtual {p0, v4}, getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$5;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$ThemeMode:[I

    iget-object v5, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    invoke-virtual {v5}, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, isSpecialTheme()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v4, Lcom/oneplus/faceunlock/Config$CustomType;->AVG:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v3, v4, :cond_3

    const v4, 0x7f020002

    invoke-virtual {p0, v4}, getColor(I)I

    move-result v0

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    sget-object v4, Lcom/oneplus/faceunlock/Config$CustomType;->MCL:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v3, v4, :cond_4

    const v4, 0x7f020004

    invoke-virtual {p0, v4}, getColor(I)I

    move-result v0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    sget-object v4, Lcom/oneplus/faceunlock/Config$CustomType;->SW:Lcom/oneplus/faceunlock/Config$CustomType;

    if-ne v3, v4, :cond_5

    const v4, 0x7f020005

    invoke-virtual {p0, v4}, getColor(I)I

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_black_mode_accent_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oem_white_mode_accent_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDisplaySize()Landroid/graphics/Point;
    .locals 3

    iget-object v0, p0, m_DisplaySize:Landroid/graphics/Point;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, m_DisplaySize:Landroid/graphics/Point;

    invoke-virtual {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, m_DisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplaySize() - Size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_DisplaySize:Landroid/graphics/Point;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, m_DisplaySize:Landroid/graphics/Point;

    return-object v0
.end method

.method public getFixedColorBlue()I
    .locals 1

    const v0, 0x7f020001

    invoke-virtual {p0, v0}, getColor(I)I

    move-result v0

    return v0
.end method

.method public getStartMode()Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;
    .locals 1

    iget-object v0, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    return-object v0
.end method

.method public getSystemWindowInsets()Lcom/oneplus/faceunlock/utils/Insets;
    .locals 1

    iget-object v0, p0, m_SystemWindowInsets:Lcom/oneplus/faceunlock/utils/Insets;

    return-object v0
.end method

.method public getThemeMode()Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;
    .locals 1

    iget-object v0, p0, m_ThemeMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    return-object v0
.end method

.method final synthetic lambda$showUI$0$FaceUnlockActivity(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v8, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-class v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    const-string v6, "FaceUnlockActivity.FragmentType"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    iput-object v5, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    const-class v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    const-string v6, "FaceUnlockActivity.StartMode"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    check-cast v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    iput-object v5, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    :cond_0
    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v5, "FaceUnlockActivity.StartMode"

    invoke-virtual {v0, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-direct {p0}, loadThemeMode()V

    invoke-direct {p0}, applyTheme()V

    const/high16 v5, 0x7f060000

    invoke-virtual {p0, v5}, setContentView(I)V

    invoke-virtual {p0}, isInMultiWindowMode()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "onCreate() - Is multi window mode, finish"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v8}, setResult(I)V

    invoke-virtual {p0}, finish()V

    :goto_1
    return-void

    :pswitch_0
    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->NORMAL:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    iput-object v5, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    goto :goto_0

    :pswitch_1
    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    iput-object v5, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    goto :goto_0

    :pswitch_2
    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    iput-object v5, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    new-instance v6, Lcom/oneplus/faceunlock/FaceUnlockActivity$$Lambda$0;

    invoke-direct {v6, p0}, Lcom/oneplus/faceunlock/FaceUnlockActivity$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate() - Fragment type : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", start mode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "android.permission.CAMERA"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->isUnlockDumpEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_4

    new-array v5, v8, [Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    const/16 v6, 0x4b0

    invoke-virtual {p0, v5, v6}, requestPermissions([Ljava/lang/String;I)V

    const/4 v5, 0x1

    iput-boolean v5, p0, m_IsRequestingPermission:Z

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0}, onPermissionsGranted()V

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "densityDpi="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scaledDensity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, m_IsPackageManagerProxyConneted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, m_PackageManagerProxyConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 2

    if-eqz p1, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onMultiWindowModeChanged() - In multi window mode, finish activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setResult(I)V

    invoke-virtual {p0}, finish()V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, m_IsRequestingPermission:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/oneplus/faceunlock/utils/Device;->isMechanicalCamera()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockActivity$5;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$FragmentType:[I

    iget-object v1, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0

    :pswitch_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onPause() - Finish when extracting face"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, finish()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p3, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, onPermissionsGranted()V

    :goto_1
    return-void

    :cond_2
    iget-object v2, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v2, v3, :cond_3

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onRequestPermissionsResult() - Permissions are denied by user, finish and remove task"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, finishAndRemoveTask()V

    goto :goto_1

    :cond_3
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onRequestPermissionsResult() - Permissions are denied by user, finish"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, finish()V

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onSaveInstanceState()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, m_FaceExtractionFragment:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    const-string v0, "FaceUnlockActivity.FragmentType"

    iget-object v1, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "FaceUnlockActivity.StartMode"

    iget-object v1, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    iget-object v0, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() - Fragment type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_OrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, m_OrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    :cond_2
    iget-object v0, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->EMPTY:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, updateFragmentVisibility()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, m_StartMode:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->PERMISSION_REQUEST:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_OrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, m_OrientationEventListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_0
.end method

.method public removeOnSystemWindowInsetsChangedListener(Lcom/oneplus/faceunlock/FaceUnlockActivity$OnSystemWindowInsetsChangedListener;)V
    .locals 1

    iget-object v0, p0, m_OnSystemWIndowInsetsChangedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeRotationListener(Lcom/oneplus/faceunlock/utils/RotationListener;)V
    .locals 1

    iget-object v0, p0, m_RotationListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method setExtractionResult(Z)V
    .locals 3

    iget-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v2, "FaceUnlockActivity.ExtractResult"

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, m_FinishFragment:Lcom/oneplus/faceunlock/FinishFragment;

    invoke-virtual {v1, v0}, Lcom/oneplus/faceunlock/FinishFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method setFragmentType(Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;)V
    .locals 1

    iget-object v0, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, m_FragmentType:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-direct {p0}, updateFragmentVisibility()V

    goto :goto_0
.end method
