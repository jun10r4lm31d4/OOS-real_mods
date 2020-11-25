.class public Lcom/oneplus/android/server/scene/OemSceneVibrationController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;,
        Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;
    }
.end annotation


# static fields
.field private static final ACTION_VIBRATION_CANCEL:Ljava/lang/String; = "com.oem.intent.action.CANCEL_VIBRATION"

.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "OemSceneVibrationController"

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

.field private static vta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;

.field private static final wta:I

.field private static final xta:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private uta:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->Mza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, wta:I

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;->Nza:Lcom/oneplus/android/server/scene/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, xta:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, uta:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    iput-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, mResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v0, p0, uta:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private c(IZ)V
    .locals 2

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget p2, p0, uta:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    iput p1, p0, uta:I

    goto :goto_0

    :cond_0
    iget p2, p0, uta:I

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, uta:I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, sInstance:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    if-nez v0, :cond_0

    const-string p0, "OemSceneVibrationController"

    const-string p1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    move-result-object v0

    invoke-direct {v0, p0, p1}, tsu(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneVibrationController;
    .locals 1

    sget-object v0, sInstance:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, sInstance:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    :cond_0
    sget-object p0, sInstance:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    return-object p0
.end method

.method private id(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-string p0, "OemSceneVibrationController"

    const-string p1, "forbid vibration in ZenMode!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method private tsu(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    iget p1, p0, uta:I

    sget v0, wta:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget v0, xta:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, id(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneVibrationController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneVibrationController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, c(IZ)V

    return-void
.end method


# virtual methods
.method public kg()Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;
    .locals 1

    sget-object v0, vta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;-><init>(Lcom/oneplus/android/server/scene/OemSceneVibrationController;)V

    sput-object v0, vta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;

    :cond_0
    sget-object p0, vta:Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;

    return-object p0
.end method
