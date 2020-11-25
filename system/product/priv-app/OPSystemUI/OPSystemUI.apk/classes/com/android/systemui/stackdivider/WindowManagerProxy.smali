.class public Lcom/android/systemui/stackdivider/WindowManagerProxy;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"


# static fields
.field private static final sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# instance fields
.field private mDimLayerAlpha:F

.field private final mDimLayerRunnable:Ljava/lang/Runnable;

.field private mDimLayerTargetWindowingMode:I

.field private mDimLayerVisible:Z

.field private final mDismissRunnable:Ljava/lang/Runnable;

.field private final mDockedRect:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mMaximizeRunnable:Ljava/lang/Runnable;

.field private final mResizeRunnable:Ljava/lang/Runnable;

.field private final mSetTouchableRegionRunnable:Ljava/lang/Runnable;

.field private final mTempDockedInsetRect:Landroid/graphics/Rect;

.field private final mTempDockedTaskRect:Landroid/graphics/Rect;

.field private final mTempOtherInsetRect:Landroid/graphics/Rect;

.field private final mTempOtherTaskRect:Landroid/graphics/Rect;

.field private final mTmpRect1:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mTmpRect3:Landroid/graphics/Rect;

.field private final mTmpRect4:Landroid/graphics/Rect;

.field private final mTmpRect5:Landroid/graphics/Rect;

.field private final mTouchableRegion:Landroid/graphics/Rect;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDockedRect"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {v0}, <init>()V

    sput-object v0, sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mDockedRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempDockedTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempDockedInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempOtherTaskRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempOtherInsetRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpRect1:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpRect3:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpRect4:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpRect5:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTouchableRegion:Landroid/graphics/Rect;

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, mResizeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$2;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, mDismissRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$3;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, mMaximizeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$4;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, mDimLayerRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/stackdivider/WindowManagerProxy$5;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V

    iput-object v0, p0, mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mDockedRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTmpRect1:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Z
    .locals 0

    iget-boolean p0, p0, mDimLayerVisible:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I
    .locals 0

    iget p0, p0, mDimLayerTargetWindowingMode:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)F
    .locals 0

    iget p0, p0, mDimLayerAlpha:F

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTouchableRegion:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTempDockedTaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTmpRect2:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTempDockedInsetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTmpRect3:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTempOtherTaskRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTmpRect4:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTempOtherInsetRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mTmpRect5:Landroid/graphics/Rect;

    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;
    .locals 1

    sget-object v0, sInstance:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    return-object v0
.end method


# virtual methods
.method public dismissDockedStack()V
    .locals 1

    iget-object v0, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, mDismissRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getDockSide()I
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to get dock side: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WindowManagerProxy"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public maximizeDockedStack()V
    .locals 1

    iget-object v0, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, mMaximizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resizeDockedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mDockedRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_0

    iget-object p1, p0, mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, mTempDockedTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_0
    if-eqz p3, :cond_1

    iget-object p1, p0, mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, mTempDockedInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_1
    if-eqz p4, :cond_2

    iget-object p1, p0, mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, mTempOtherTaskRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_2
    if-eqz p5, :cond_3

    iget-object p1, p0, mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, mTempOtherInsetRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, mResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setResizeDimLayer(ZIF)V
    .locals 0

    iput-boolean p1, p0, mDimLayerVisible:Z

    iput p2, p0, mDimLayerTargetWindowingMode:I

    iput p3, p0, mDimLayerAlpha:F

    iget-object p1, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, mDimLayerRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setResizing(Z)V
    .locals 2

    iget-object v0, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/stackdivider/WindowManagerProxy$6;-><init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setTouchRegion(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, mDockedRect:Landroid/graphics/Rect;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mTouchableRegion:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object p0, p0, mSetTouchableRegionRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
