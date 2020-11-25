.class public Lcom/android/server/wm/B;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpStartingWindowManager;


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "OpStartingWindowManager"

.field private static final Yfa:I = 0x1


# instance fields
.field private Hfa:I

.field private Ifa:I

.field private Jfa:Z

.field private Kfa:Z

.field private Lfa:Z

.field private Mfa:Ljava/lang/Runnable;

.field private Nfa:Z

.field private Ofa:Lcom/android/server/wm/WindowManagerService;

.field private Pfa:Lcom/android/server/wm/you/ssp;

.field private Qfa:Lcom/android/server/wm/you/cno;

.field private Rfa:Lcom/android/server/wm/you/bio;

.field private Sfa:Z

.field private Tfa:Ljava/lang/String;

.field private Ufa:Lcom/android/server/wm/ActivityRecord;

.field private Vfa:Z

.field private Wfa:Ljava/lang/String;

.field private Xfa:Landroid/graphics/drawable/Drawable;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Hfa:I

    const/4 v1, -0x1

    iput v1, p0, Ifa:I

    iput-boolean v0, p0, Jfa:Z

    iput-boolean v0, p0, Kfa:Z

    iput-boolean v0, p0, Lfa:Z

    iput-boolean v0, p0, Nfa:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Sfa:Z

    const/4 v1, 0x0

    iput-object v1, p0, Tfa:Ljava/lang/String;

    iput-object v1, p0, Ufa:Lcom/android/server/wm/ActivityRecord;

    iput-boolean v0, p0, Vfa:Z

    const-string v0, "init"

    iput-object v0, p0, Wfa:Ljava/lang/String;

    return-void
.end method

.method public static F(I)I
    .locals 12

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    sub-double/2addr v4, v2

    aget-wide v2, v0, v1

    cmpg-double v2, v4, v2

    if-gez v2, :cond_0

    aput-wide v4, v0, v1

    aget-wide v6, v0, v1

    const/4 v1, 0x1

    aget-wide v8, v0, v1

    const/4 v1, 0x2

    aget-wide v10, v0, v1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p0, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    :cond_0
    return p0
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    sget-object v0, LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method private clearCache()V
    .locals 2

    sget-object v0, LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Pfa:Lcom/android/server/wm/you/ssp;

    invoke-virtual {v1}, Lcom/android/server/wm/you/ssp;->clearCache()V

    iget-object v1, p0, Rfa:Lcom/android/server/wm/you/bio;

    iget-object p0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v1, p0}, Lcom/android/server/wm/you/bio;->clearCache(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private ct()V
    .locals 1

    iget-object v0, p0, mThreadPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, mThreadPool:Ljava/util/concurrent/ExecutorService;

    :cond_0
    return-void
.end method

.method private dt()Z
    .locals 0

    invoke-static {}, Lcom/android/server/wm/you/you;->Re()Z

    move-result p0

    return p0
.end method

.method private fb(Z)V
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lfa:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, reset()V

    :cond_1
    return-void
.end method

.method private isNightMode(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-string v0, "uimode"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/UiModeManager;

    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Hfa:I

    const/4 v1, 0x0

    iput-object v1, p0, Tfa:Ljava/lang/String;

    iput-boolean v0, p0, Kfa:Z

    return-void
.end method

.method private wtn(Lcom/android/server/wm/WindowState;)Landroid/view/animation/Animation;
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/4 p0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createStartingWindowExitAnimation use Alpha(1,1) windowState =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x96

    :goto_0
    int-to-long p0, p0

    invoke-virtual {v0, p0, p1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object v0
.end method

.method static synthetic you(Lcom/android/server/wm/B;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method private zta(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Bitmap;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const-string p0, "task is null"

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-object v2

    :cond_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iget-object v6, p1, Lcom/android/server/wm/AppWindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p1, v4}, Lcom/android/server/wm/AppWindowToken;->findMainWindow(Z)Lcom/android/server/wm/WindowState;

    move-result-object p1

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    const-string p0, "mainWindow is null"

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    if-nez v6, :cond_2

    const-string p0, "mainWindow :: SurfaceControl is null"

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->getHandle()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1, v3, v5}, Landroid/view/SurfaceControl;->captureLayers(Landroid/os/IBinder;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createTokenSnapshot captureLayers spend time -------------"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getGraphicBuffer()Landroid/graphics/GraphicBuffer;

    move-result-object v3

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getWidth()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->getHeight()I

    move-result v5

    if-gt v5, v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/view/SurfaceControl$ScreenshotGraphicBuffer;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/graphics/GraphicBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x46

    invoke-virtual {p1, v5, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    array-length v5, p1

    invoke-static {p1, v4, v5, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v3, 0x20

    if-ne p0, v3, :cond_5

    move v4, v6

    :cond_5
    if-nez v4, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->zta(Landroid/graphics/Bitmap;)Z

    move-result p0

    if-nez p0, :cond_6

    const-string p0, "createTokenSnapshot isBitmapValid = false, bitmap = null"

    goto/16 :goto_0

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "createTokenSnapshot total spend time -------------"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-object p1

    :cond_7
    :goto_2
    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private zta(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 11

    invoke-direct {p0}, dt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    if-nez v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getAppSnapshotBitmapDrawable don\'t support snapshot for package =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-object v1

    :cond_3
    iget-object v3, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    instance-of v4, v3, Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz v4, :cond_4

    check-cast v3, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord$Token;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_4
    sget-object v3, Lcom/android/server/wm/you/zta;->gga:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object v2, v3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppSnapshot key =:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    sget-object v0, Lcom/android/server/wm/you/zta;->gga:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-boolean v0, p0, Jfa:Z

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    sget-object v0, Lcom/android/server/wm/you/zta;->iga:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Vfa:Z

    const-string v0, "getAppSnapshot mAppSnapShotLoadFromRes = true"

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Pfa:Lcom/android/server/wm/you/ssp;

    iget-object v1, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v0, v1, v7, v2}, Lcom/android/server/wm/you/ssp;->zta(ILjava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-object v1, p0, Pfa:Lcom/android/server/wm/you/ssp;

    new-instance v2, Lcom/android/server/wm/A;

    move-object v4, v2

    move-object v5, p0

    move-object v6, v0

    move-object v10, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/A;-><init>(Lcom/android/server/wm/B;Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;JLcom/android/internal/policy/PhoneWindow;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/you/ssp;->zta(Lcom/android/server/wm/you/ssp$zta;)V

    goto :goto_0

    :cond_8
    iget-object p0, p0, Pfa:Lcom/android/server/wm/you/ssp;

    invoke-virtual {p0}, Lcom/android/server/wm/you/ssp;->Te()V

    :goto_0
    return-object v0

    :cond_9
    :goto_1
    return-object v1
.end method

.method static synthetic zta(Lcom/android/server/wm/B;)Lcom/android/server/wm/you/ssp;
    .locals 0

    iget-object p0, p0, Pfa:Lcom/android/server/wm/you/ssp;

    return-object p0
.end method

.method private zta(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "cacheTokenSnapshot :: the app is not support,we don\'t capture screen,packageName ==> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, zta(Lcom/android/server/wm/AppWindowToken;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Pfa:Lcom/android/server/wm/you/ssp;

    iget-object v2, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2, p2, v0}, Lcom/android/server/wm/you/ssp;->zta(ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object p1, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object p2, p0, Rfa:Lcom/android/server/wm/you/bio;

    iget-object p0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {p2, p1, p0, v0}, Lcom/android/server/wm/you/bio;->zta(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "cacheTokenSnapshot :: error ==> "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->sa(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/B;Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, zta(Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkActivityTypeHome(Lcom/android/server/wm/AppWindowToken;Z)Z
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result p0

    if-nez p0, :cond_1

    return p2

    :cond_1
    if-eqz p1, :cond_3

    iget-object p0, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-nez p2, :cond_3

    if-eqz p0, :cond_3

    const-string p1, "net.oneplus.launcher/.Launcher"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "the token is net.oneplus.launcher/.Launcher, we modify isActivityTypeHome"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return p2
.end method

.method public checkAppWindowAnimating(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isAppAnimating()Z

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method public checkSkipTransitionAnimation(Lcom/android/server/wm/DisplayContent;)Z
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "checkSkipTransitionAnimation for launcher closing,we not skip animation"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_2
    return v0
.end method

.method public checkSplashWindowFlag()Z
    .locals 2

    invoke-direct {p0}, dt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget p0, p0, Hfa:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0
.end method

.method public checkStartingWindowDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/TypedArray;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-direct {p0}, dt()Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    invoke-static {p4}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_2

    return v1

    :cond_2
    if-eqz v1, :cond_4

    const/4 p4, 0x5

    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "checkStartingWindowDrawable: hasWindowBackground =:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",windowIsTranslucent =:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    instance-of p2, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p2

    if-eqz p2, :cond_4

    invoke-direct {p0, p3}, isNightMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_3

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    const-string p2, "in night mode, we should handle windowbackgroud"

    invoke-static {p2}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, F(I)I

    move-result p1

    invoke-direct {p2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p2, p0, Xfa:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    iput-object p1, p0, Xfa:Landroid/graphics/drawable/Drawable;

    :cond_4
    :goto_1
    return v1
.end method

.method public checkoutWindowNeedHide(Lcom/android/server/wm/WindowState;I)I
    .locals 3

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result v0

    if-nez v0, :cond_1

    return p2

    :cond_1
    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    return p2

    :cond_3
    sget-object v0, Lcom/android/server/wm/you/zta;->jga:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Wfa:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/android/server/wm/you/zta;->jga:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change win viewVisibility to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    move p2, v0

    :cond_4
    iput-object p1, p0, Wfa:Ljava/lang/String;

    :cond_5
    sget-object v0, Lcom/android/server/wm/you/zta;->ega:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-object p1, p0, Wfa:Ljava/lang/String;

    :cond_6
    :goto_0
    return p2
.end method

.method public clearCacheWhenOnConfigurationChange(I)V
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, reset()V

    and-int/lit16 v0, p1, 0x200

    if-eqz v0, :cond_1

    invoke-direct {p0}, clearCache()V

    const-string p0, "clearCache by Dark Mode success"

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2

    invoke-direct {p0}, clearCache()V

    const-string p0, "clearCache by Locale success"

    goto :goto_0

    :cond_2
    and-int/lit16 p1, p1, 0x2000

    if-eqz p1, :cond_3

    invoke-direct {p0}, clearCache()V

    const-string p0, "clearCache by LayoutDirection success"

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public createAnimationForLauncherExit()Landroid/view/animation/Animation;
    .locals 2

    invoke-direct {p0}, dt()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string p0, "createAnimationForLauncherExit"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v0}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1c2

    invoke-virtual {p0, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object p0
.end method

.method public getAppTransit(I)I
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    iget p1, p0, Ifa:I

    const/4 v0, -0x1

    iput v0, p0, Ifa:I

    return p1
.end method

.method public getStartingWindowType(III)I
    .locals 0

    iget p0, p0, Hfa:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    return p2
.end method

.method public handleDestroySurfaces(Ljava/lang/String;I)Z
    .locals 2

    invoke-direct {p0}, dt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    if-ne p2, p0, :cond_1

    sget-object p0, Lcom/android/server/wm/you/zta;->hga:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleDestroySurfaces packageName =:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",type =:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public handleStartingWindow(Lcom/android/internal/policy/PhoneWindow;Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "handleStartingWindow"

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->traceBegin(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/internal/policy/PhoneWindow;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget-object v3, p0, Xfa:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    if-nez v3, :cond_5

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v5, 0x100000

    and-int/2addr v3, v5

    if-eqz v3, :cond_2

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_0
    iput-object p2, p0, Xfa:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_2
    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/high16 v3, -0x1000000

    if-eqz p3, :cond_3

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, isNightMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_4
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 p3, -0x1

    invoke-direct {p2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto :goto_0

    :cond_5
    :goto_1
    iget-object p2, p0, Xfa:Landroid/graphics/drawable/Drawable;

    instance-of p3, p2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x1

    if-nez p3, :cond_8

    instance-of p3, p2, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    instance-of p2, p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, v4}, fb(Z)V

    if-eqz p2, :cond_7

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    :goto_2
    invoke-virtual {p1, v3}, Lcom/android/internal/policy/PhoneWindow;->requestFeature(I)Z

    iget p2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 p2, p2, 0x200

    iput p2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, p1}, zta(Lcom/android/internal/policy/PhoneWindow;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p2

    if-eqz p2, :cond_9

    iput-object p2, p0, Xfa:Landroid/graphics/drawable/Drawable;

    :cond_9
    :goto_3
    if-eqz v3, :cond_a

    invoke-virtual {p1, v4}, Lcom/android/internal/policy/PhoneWindow;->setStatusBarColor(I)V

    invoke-virtual {p1, v4}, Lcom/android/internal/policy/PhoneWindow;->setNavigationBarColor(I)V

    :cond_a
    iget-object p2, p0, Xfa:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    iput-object p1, p0, Xfa:Landroid/graphics/drawable/Drawable;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "handleStartingWindow spend time =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sub-long/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpStartingWindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/wm/you/wtn;->traceEnd()V

    return-void
.end method

.method public handleStatusbarForStartingWindow(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, isNightMode(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p2

    if-nez p0, :cond_2

    or-int/lit16 p0, p2, 0x2000

    goto :goto_0

    :cond_2
    and-int/lit16 p0, p2, -0x2001

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_3
    return-void
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    iput-object p1, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/android/server/wm/you/bio;

    sget-object v0, Lcom/android/server/wm/bio;->INSTANCE:Lcom/android/server/wm/bio;

    invoke-direct {p1, v0}, Lcom/android/server/wm/you/bio;-><init>(Lcom/android/server/wm/you/bio$sis;)V

    iput-object p1, p0, Rfa:Lcom/android/server/wm/you/bio;

    new-instance p1, Lcom/android/server/wm/you/cno;

    iget-object v0, p0, Rfa:Lcom/android/server/wm/you/bio;

    invoke-direct {p1, v0}, Lcom/android/server/wm/you/cno;-><init>(Lcom/android/server/wm/you/bio;)V

    iput-object p1, p0, Qfa:Lcom/android/server/wm/you/cno;

    new-instance p1, Lcom/android/server/wm/you/ssp;

    iget-object v0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Qfa:Lcom/android/server/wm/you/cno;

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/you/ssp;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/you/cno;)V

    iput-object p1, p0, Pfa:Lcom/android/server/wm/you/ssp;

    iget-object p1, p0, Rfa:Lcom/android/server/wm/you/bio;

    invoke-virtual {p1}, Lcom/android/server/wm/you/bio;->start()V

    invoke-static {}, Lcom/android/server/wm/you/you;->getInstance()Lcom/android/server/wm/you/you;

    move-result-object p1

    iget-object p0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/you/you;->init(Landroid/content/Context;)V

    return-void
.end method

.method public interceptRemoveStartingWindow(Ljava/lang/String;Landroid/os/Handler;Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)Z
    .locals 4

    invoke-direct {p0}, dt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/android/server/wm/you/zta;->hga:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interceptRemoveStartingWindow->packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",delayTime:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iget-object p1, p0, Mfa:Ljava/lang/Runnable;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance p1, Lcom/android/server/wm/you/igw;

    invoke-direct {p1, p3}, Lcom/android/server/wm/you/igw;-><init>(Lcom/android/server/policy/WindowManagerPolicy$StartingSurface;)V

    iput-object p1, p0, Mfa:Ljava/lang/Runnable;

    iget-object p0, p0, Mfa:Ljava/lang/Runnable;

    invoke-virtual {p2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public onStartAppShotcut()V
    .locals 1

    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Nfa:Z

    return-void
.end method

.method public preloadAppSplash(ILcom/android/server/wm/SafeActivityOptions;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, dt()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x0

    iput-object p2, p0, Tfa:Ljava/lang/String;

    if-eqz p1, :cond_8

    if-eqz p3, :cond_8

    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p2, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object p2, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    const-string p0, "preloadAppSplash app is not support if calling app is null"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_2
    iget-object p1, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-nez p1, :cond_3

    const-string p1, ""

    goto :goto_0

    :cond_3
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ua(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preloadAppSplash app is not support for calling app ==>:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object p1, p3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "preloadAppSplash app is not support cache startingwindow, don\'t preload splash ==> packageName = :"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p2, p3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v0, p3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v1, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1, p2, v0}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "preloadAppSplash process is running ==> processName : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_7
    invoke-virtual {p3}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Tfa:Ljava/lang/String;

    iget-object p3, p0, Pfa:Lcom/android/server/wm/you/ssp;

    iget-object p0, p0, Ofa:Lcom/android/server/wm/WindowManagerService;

    iget v0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p3, v0, p0, p1, p2}, Lcom/android/server/wm/you/ssp;->zta(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "preloadAppSplash packageName =: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",appToken =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",reason =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpStartingWindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_2
    return-void
.end method

.method public putSnapshot(Lcom/android/server/wm/AppWindowToken;)V
    .locals 5

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lfa:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfa:Z

    iget-boolean v2, p0, Vfa:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string p1, "putSnapshot token don\'t allow, mAppSnapShotLoadFromRes = true"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iput-boolean v3, p0, Vfa:Z

    invoke-direct {p0}, reset()V

    return-void

    :cond_1
    iput-boolean v3, p0, Vfa:Z

    if-nez v0, :cond_2

    const-string p1, "putSnapshot token don\'t allow"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    invoke-direct {p0}, reset()V

    return-void

    :cond_2
    if-eqz p1, :cond_b

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_3

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getWindowingMode()I

    move-result v0

    if-eq v0, v1, :cond_4

    const-string p1, "putSnapshot token is not full screen don\'t allow"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    invoke-direct {p0}, reset()V

    return-void

    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    instance-of v1, v1, Lcom/android/server/wm/ActivityRecord$Token;

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->token:Landroid/os/IBinder;

    check-cast v0, Lcom/android/server/wm/ActivityRecord$Token;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord$Token;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_5
    sget-object v1, Lcom/android/server/wm/you/zta;->gga:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, " don\'t allow"

    if-eqz v1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSnapshot special app token =:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    invoke-direct {p0}, reset()V

    return-void

    :cond_6
    sget-object v1, Lcom/android/server/wm/you/zta;->gga:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result v0

    if-eqz v0, :cond_7

    move-object v0, v1

    goto :goto_0

    :cond_7
    invoke-direct {p0}, reset()V

    return-void

    :cond_8
    iget-boolean v1, p0, Kfa:Z

    if-nez v1, :cond_9

    const-string p1, "putSnapshot mRequestStoreAppTokenSnapshot don\'t allow"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iput v3, p0, Hfa:I

    const/4 p1, 0x0

    iput-object p1, p0, Tfa:Ljava/lang/String;

    return-void

    :cond_9
    :goto_0
    sget-object v1, Lcom/android/server/wm/you/zta;->iga:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "putSnapshot app has drawable res token =:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    invoke-direct {p0}, reset()V

    return-void

    :cond_a
    invoke-direct {p0}, reset()V

    invoke-direct {p0}, ct()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putSnapshot finalTargetKey =:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpStartingWindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/server/wm/y;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/wm/y;-><init>(Lcom/android/server/wm/B;Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_b
    :goto_1
    const-string p1, "putSnapshot token.mActivityRecord is null don\'t allow"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    invoke-direct {p0}, reset()V

    return-void
.end method

.method public reviseWindowFlagsForStarting(Lcom/android/server/wm/ActivityRecord;ZZZZZ)V
    .locals 4

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, checkSplashWindowFlag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    const/4 v0, 0x0

    iput v0, p0, Hfa:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reviseWindowFlagsForStarting activityRecord =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iput-boolean v0, p0, Kfa:Z

    iput-boolean v0, p0, Jfa:Z

    iget-boolean v2, p0, Nfa:Z

    if-eqz v2, :cond_1

    const-string p1, "if starting app is shotcut,we don\'t use splash window"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iput-boolean v0, p0, Nfa:Z

    return-void

    :cond_1
    if-nez p5, :cond_10

    if-nez p6, :cond_10

    if-eqz p1, :cond_10

    iget-object p5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p5, :cond_10

    iget-object p5, p1, Lcom/android/server/wm/ActivityRecord;->mStackSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    if-eqz p5, :cond_2

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityStackSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked()Z

    move-result p5

    if-eqz p5, :cond_2

    const-string p0, "keyguard locked,we don\'t revise window flags"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p5

    if-eqz p5, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityStack()Lcom/android/server/wm/ActivityStack;

    move-result-object p5

    invoke-virtual {p5}, Lcom/android/server/wm/ActivityStack;->isHomeOrRecentsStack()Z

    move-result p5

    if-eqz p5, :cond_3

    const-string p0, "this activity is in home stack,we don\'t revise starting window flags"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object p5, p1, Lcom/android/server/wm/ActivityRecord;->mAppWindowToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p5}, Lcom/android/server/wm/AppWindowToken;->getTask()Lcom/android/server/wm/Task;

    move-result-object p5

    if-nez p5, :cond_4

    return-void

    :cond_4
    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p6

    if-eqz p6, :cond_5

    invoke-virtual {p5}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p5

    iget p5, p5, Landroid/content/res/Configuration;->orientation:I

    const/4 p6, 0x2

    if-ne p5, p6, :cond_5

    const-string p0, "this activity is landscape,we don\'t revise starting window flags"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_5
    iget-object p5, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/server/wm/you/wtn;->ua(Ljava/lang/String;)Z

    move-result p6

    iput-boolean p6, p0, Jfa:Z

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the app is starting from launcher =:"

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Jfa:Z

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",callAppPackageName =:"

    invoke-virtual {p6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iget-boolean p5, p0, Jfa:Z

    const/4 p6, 0x1

    if-nez p5, :cond_6

    iget-object p5, p0, Tfa:Ljava/lang/String;

    if-eqz p5, :cond_6

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {p5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_6

    const-string p5, "special app start, we modify mSupportSnapshotSplashForCallingApp is true"

    invoke-static {p5}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    iput-boolean p6, p0, Jfa:Z

    :cond_6
    iput-object v1, p0, Tfa:Ljava/lang/String;

    iget-boolean p5, p0, Jfa:Z

    if-eqz p5, :cond_10

    iget-object p5, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/server/wm/you/wtn;->ta(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_7

    const-string p0, "this app is not support,we don\'t revise window flags "

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_7
    iget-object p5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {p5}, Lcom/android/server/wm/you/wtn;->oa(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_8

    const-string p0, "black token,we don\'t revise window flags "

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inSplitScreenWindowingMode()Z

    move-result p5

    if-eqz p5, :cond_9

    const-string p0, "if activityRecord is in split mode,we don\'t revise window flags"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_9
    iget-object p5, p0, Ufa:Lcom/android/server/wm/ActivityRecord;

    if-nez p5, :cond_a

    const-string p3, "special \tmTopFocusedActivity == null;  modify taskSwitch = true"

    invoke-static {p3}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    move p3, p6

    :cond_a
    if-nez p2, :cond_b

    if-eqz p3, :cond_10

    :cond_b
    iget-object p2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string p3, "com.tencent.mm"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    if-eqz p4, :cond_d

    iget-boolean p1, p0, Sfa:Z

    if-eqz p1, :cond_c

    const-string p1, "for we chat first start after reboot,we add splash"

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p0, "for we chat process running,we don\'t add splash"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_0
    iput-boolean v0, p0, Sfa:Z

    goto :goto_1

    :cond_e
    if-eqz p4, :cond_f

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/wm/you/wtn;->na(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    const-string p0, "for special app starting from launcher,if processRunning,we don\'t use splash window"

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_1
    const-string p1, "OpStartingWindowManager"

    const-string p2, "for app starting from launcher,we use splash window to speed up apptransition ready"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p6, p0, Hfa:I

    iput-boolean p6, p0, Kfa:Z

    :cond_10
    return-void

    :cond_11
    iput-object v1, p0, Tfa:Ljava/lang/String;

    return-void
.end method

.method public setAppTransit(I)V
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Ifa:I

    return-void
.end method

.method public setFocusedTopActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    invoke-direct {p0}, dt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Ufa:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public setStartingWindowExitAnimation(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    invoke-direct {p0}, dt()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0, p1}, wtn(Lcom/android/server/wm/WindowState;)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iput-boolean v1, p0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public skipAppTransitionAnimation()Z
    .locals 0

    invoke-direct {p0}, dt()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
