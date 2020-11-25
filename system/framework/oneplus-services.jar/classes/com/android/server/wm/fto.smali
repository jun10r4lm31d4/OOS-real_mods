.class public Lcom/android/server/wm/fto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpOneHandMode;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/fto$zta;,
        Lcom/android/server/wm/fto$you;,
        Lcom/android/server/wm/fto$sis;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpOneHandMode"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final aZ:I = 0x1388

.field private static final bZ:I = 0x12c

.field private static final cZ:I = 0x1f4

.field private static final dZ:I = 0x0

.field private static final eZ:I = 0x1

.field private static final fZ:I = 0x2

.field private static final gZ:Ljava/lang/String; = "one_hand_mode_status"

.field private static final hZ:J

.field private static final iZ:I

.field private static final jZ:F


# instance fields
.field private AY:Lcom/android/server/wm/fto$you;

.field private BY:I

.field private CY:Z

.field private DY:I

.field private EY:J

.field private FY:Landroid/view/ISystemGestureExclusionListener;

.field private final GY:Landroid/graphics/Region;

.field private HY:F

.field private IY:F

.field private JY:Z

.field private KY:Z

.field private LY:Z

.field private MY:Z

.field private NY:I

.field private OY:F

.field private PY:F

.field private QY:I

.field private RY:I

.field private SY:I

.field private TY:Z

.field private final UY:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final VY:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final WY:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final XY:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final YY:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final ZY:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final _Y:Lcom/android/internal/util/ToBooleanFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ToBooleanFunction<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCornerRadius:I

.field private mDisplay:Landroid/view/Display;

.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mDisplaySize:Landroid/graphics/Point;

.field private mGestureButtonEnabled:Z

.field private mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field mReachDistanceOnehand:Z

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/android/server/wm/fto$sis;

.field mSwipeTimeoSlowOnehand:Z

.field private final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field private mWm:Landroid/view/WindowManager;

.field private mWms:Lcom/android/server/wm/WindowManagerService;

.field private zY:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    const-string v0, "persist.one.handed.rest.time"

    const/16 v1, 0x177

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, hZ:J

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "persist.gesture_button.one.handed.slide.time.threshold"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, iZ:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "persist.gesture_button.one.handed.ver.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3851b717    # 5.0E-5f

    mul-float/2addr v0, v1

    sput v0, jZ:F

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, zY:Z

    const/4 v1, 0x0

    iput-object v1, p0, AY:Lcom/android/server/wm/fto$you;

    iput v0, p0, BY:I

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, mDisplaySize:Landroid/graphics/Point;

    const/4 v1, -0x1

    iput v1, p0, mScreenHeight:I

    iput v1, p0, mScreenWidth:I

    iput v0, p0, DY:I

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object v1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, EY:J

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, mLock:Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/OpOneHandMode$1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/OpOneHandMode$1;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v1, p0, FY:Landroid/view/ISystemGestureExclusionListener;

    new-instance v1, Landroid/graphics/Region;

    invoke-direct {v1}, Landroid/graphics/Region;-><init>()V

    iput-object v1, p0, GY:Landroid/graphics/Region;

    const/4 v1, 0x0

    iput v1, p0, HY:F

    iput v1, p0, IY:F

    iput-boolean v0, p0, JY:Z

    iput-boolean v0, p0, KY:Z

    iput-boolean v0, p0, mSwipeTimeoSlowOnehand:Z

    iput-boolean v0, p0, mReachDistanceOnehand:Z

    iput-boolean v0, p0, LY:Z

    iput-boolean v0, p0, MY:Z

    const-string v1, "persist.gesture_button.one.handed.trapezoid.upper.scale"

    const/4 v2, 0x4

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, OY:F

    const-string v1, "persist.gesture_button.one.handed.trapezoid.bottom.scale"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, PY:F

    iput-boolean v0, p0, mGestureButtonEnabled:Z

    iput-boolean v0, p0, TY:Z

    new-instance v0, Lcom/android/server/wm/tsu;

    invoke-direct {v0, p0}, Lcom/android/server/wm/tsu;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, UY:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/ssp;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ssp;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, VY:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/sis;

    invoke-direct {v0, p0}, Lcom/android/server/wm/sis;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, WY:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/cno;

    invoke-direct {v0, p0}, Lcom/android/server/wm/cno;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, XY:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/zta;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, YY:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/rtg;

    invoke-direct {v0, p0}, Lcom/android/server/wm/rtg;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, ZY:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/server/wm/you;

    invoke-direct {v0, p0}, Lcom/android/server/wm/you;-><init>(Lcom/android/server/wm/fto;)V

    iput-object v0, p0, _Y:Lcom/android/internal/util/ToBooleanFunction;

    return-void
.end method

.method private Ar()V
    .locals 4

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OpOneHandMode"

    const-string v2, "reset one-handed mode windowCrop."

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, WY:Ljava/util/function/Consumer;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, zY:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Br()V
    .locals 4

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, sr()V

    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, UY:Ljava/util/function/Consumer;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    iget-object v1, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    iget-object v1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    iget-object p0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Cr()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "set one-handed mode windowCrop."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, VY:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private Dr()V
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iget-object v2, p0, mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v2, p0, mWm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, mDisplay:Landroid/view/Display;

    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, mScreenHeight:I

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, mScreenWidth:I

    iget-object v0, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, mRotation:I

    iget v0, p0, mScreenWidth:I

    int-to-float v0, v0

    sget v2, jZ:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, NY:I

    const-string v0, "persist.gesture_button.one.handed.trapezoid.upper.scale"

    const/4 v2, 0x4

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, OY:F

    const-string v0, "persist.gesture_button.one.handed.trapezoid.bottom.scale"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, PY:F

    iget v0, p0, mScreenHeight:I

    const-string v2, "persist.gesture_button.one.handed.trapezoid.height.scale"

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, QY:I

    iget v0, p0, mScreenHeight:I

    const-string v2, "persist.gesture_button.one.handed.bottom.box.height.scale"

    const/16 v3, 0x10

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    div-int/2addr v0, v2

    iput v0, p0, RY:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1050188

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, SY:I

    const-string v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "16859"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "17801"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v1, "17819"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x4b

    :goto_0
    iput v0, p0, mCornerRadius:I

    goto/16 :goto_3

    :cond_1
    const-string v1, "18865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x4d

    goto :goto_0

    :cond_2
    const-string v1, "19801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/wm/OpScreenModeServiceInjector;->isQHD()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x8f

    goto :goto_0

    :cond_3
    const/16 v0, 0x6c

    goto :goto_0

    :cond_4
    const-string v1, "19811"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/server/wm/OpScreenModeServiceInjector;->isQHD()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x80

    goto :goto_0

    :cond_5
    const/16 v0, 0x60

    goto :goto_0

    :cond_6
    const-string v1, "19821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0x5a

    goto :goto_0

    :cond_7
    const-string v1, "19855"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x5f

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/android/server/wm/OpScreenModeServiceInjector;->isQHD()Z

    move-result v0

    if-eqz v0, :cond_9

    const/high16 v0, 0x42200000    # 40.0f

    goto :goto_1

    :cond_9
    const/high16 v0, 0x41f00000    # 30.0f

    :goto_1
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v0

    float-to-int v0, v1

    goto :goto_0

    :cond_a
    :goto_2
    iput v1, p0, mCornerRadius:I

    :goto_3
    iget v0, p0, mCornerRadius:I

    const-string v1, "persist.one.handed.corner.radius"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_b

    goto :goto_4

    :cond_b
    iget v0, p0, mCornerRadius:I

    :goto_4
    iput v0, p0, mCornerRadius:I

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDisplaySize(): mDisplaySize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCornerRadius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mCornerRadius:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpOneHandMode"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTrapezoidUpperScale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, OY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mTrapezoidBottomScale="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, PY:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mTrapezoidHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, QY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOneHandBottomBoxHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, RY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNavBarHeight="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, SY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    return-void
.end method

.method private Ec(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_mode_status"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, CY:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, zY:Z

    iput v0, p0, DY:I

    iput v1, p0, BY:I

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    invoke-direct {p0}, Br()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, zr()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, EY:J

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", force cancel one-handed mode"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOneHandMode"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method private Er()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "update One-Handed Mode Timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/wm/fto$you;->zta(Landroid/os/Message;J)V

    return-void
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method private bio(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez p0, :cond_7

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez p0, :cond_7

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean p0, p0, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-nez p0, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isChildWindow()Z

    move-result p0

    if-nez p0, :cond_7

    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-nez p0, :cond_7

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7e3

    if-eq p0, v1, :cond_7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->inPinnedWindowingMode()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object p0, p0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowTag()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.systemui"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GestureButtonRegion"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "EdgeBackGestureHandler"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "OPFingerprintView"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "OPFingerprintVDpressed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "FingerprintTransparentIcon"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    :goto_0
    return v0

    :cond_4
    const-string v1, "ScreenDecorOverlayExpand"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "winPackageName="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOneHandMode"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_7
    :goto_1
    return v0
.end method

.method private checkCallingPermission(Ljava/lang/String;)I
    .locals 3

    const/4 p0, -0x1

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-static {p1, v0, v1, p0, v2}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result p0

    return p0
.end method

.method private hideInputMethod()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "hide input method"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/inputmethod/InputMethodManagerInternal;

    iput-object v0, p0, mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    :cond_1
    iget-object p0, p0, mInputMethodManagerInternal:Lcom/android/server/inputmethod/InputMethodManagerInternal;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->hideCurrentInputMethod()V

    :cond_2
    return-void
.end method

.method private kth(Lcom/android/server/wm/WindowState;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p0}, getStatus()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isSelfAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    iget-boolean p0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    if-ne p0, v2, :cond_1

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-eq p0, v1, :cond_1

    return-void

    :cond_1
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    const v1, 0x501004a

    goto :goto_1

    :cond_2
    const v1, 0x501004b

    :goto_1
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyOneHandModeAnimation: win="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", a="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", type="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/android/server/wm/WindowStateAnimator;->mAttrType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isEntrance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "OpOneHandMode"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p0, :cond_5

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowState;->startAnimation(Landroid/view/animation/Animation;)V

    iput-boolean v2, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimationIsEntrance:Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->cancelAnimation()V

    :cond_5
    :goto_2
    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz p0, :cond_6

    iget-object p0, p1, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/AccessibilityController;->onWindowTransitionLocked(Lcom/android/server/wm/WindowState;I)V

    :cond_6
    return-void
.end method

.method private rr()Z
    .locals 3

    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p0, _Y:Lcom/android/internal/util/ToBooleanFunction;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAnimator:Lcom/android/server/wm/WindowAnimator;

    if-eqz v0, :cond_1

    iget-object p0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowAnimator;->getScreenRotationAnimationLocked(I)Lcom/android/server/wm/IScreenRotationAnimation;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string p0, "OpOneHandMode"

    const-string v0, "screen is rotating, can not schedule one-handed mode animation."

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/wm/fto;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/fto;)Z
    .locals 0

    iget-boolean p0, p0, mGestureButtonEnabled:Z

    return p0
.end method

.method private sr()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "defer animation for One-Handed Mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/fto$you;->zta(Landroid/os/Message;J)V

    iget-object p0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/fto;)I
    .locals 0

    iget p0, p0, DY:I

    return p0
.end method

.method private statusToString(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string p0, "ONE_HAND_MODE"

    return-object p0

    :cond_1
    const-string p0, "ANIMATING"

    return-object p0

    :cond_2
    const-string p0, "ORIGIN"

    return-object p0
.end method

.method private tr()Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, mScreenWidth:I

    iget p0, p0, mScreenHeight:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method static synthetic tsu(Lcom/android/server/wm/fto;)Z
    .locals 0

    iget-boolean p0, p0, TY:Z

    return p0
.end method

.method private ur()Z
    .locals 5

    iget-object p0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz p0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/AppWindowToken;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowState;

    iget-object v3, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startingWindow is showing, win="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", focusedApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpOneHandMode"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private vr()Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, EY:J

    sub-long/2addr v0, v2

    sget-wide v2, hZ:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private wr()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "notify viewRootImpl of windows that if one-handed mode is running."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, XY:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private xc(I)Z
    .locals 3

    iget p0, p0, BY:I

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p1, :cond_3

    const/4 v2, 0x2

    if-eq p1, v1, :cond_2

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    if-eq p0, v1, :cond_4

    return v0

    :cond_2
    if-eqz p0, :cond_4

    if-eq p0, v2, :cond_4

    return v0

    :cond_3
    if-eq p0, v1, :cond_4

    return v0

    :cond_4
    return v1
.end method

.method private xr()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "notify viewRootImpl of windows that one-handed mode trigger failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, YY:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/fto;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method private you(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 7

    neg-int v6, p3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, zta(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;FFII)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/fto;Z)Z
    .locals 0

    iput-boolean p1, p0, TY:Z

    return p1
.end method

.method private yr()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "notify viewRootImpl of windows that one-handed mode trigger success"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, ZY:Ljava/util/function/Consumer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method private zr()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpOneHandMode"

    const-string v1, "remove One-Handed Mode Timeout"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/fto;)Landroid/graphics/Region;
    .locals 0

    iget-object p0, p0, GY:Landroid/graphics/Region;

    return-object p0
.end method

.method private zta(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;FFII)V
    .locals 12

    move-object v0, p1

    iget-object v1, v0, Lcom/android/server/wm/Dimmer;->mSurfaceAnimatorStarter:Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;

    iget-object v2, v0, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v2, v2, Lcom/android/server/wm/Dimmer$DimState;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    new-instance v3, Lcom/android/server/wm/LocalAnimationAdapter;

    new-instance v11, Lcom/android/server/wm/fto$zta;

    const-wide/16 v9, 0xe1

    move-object v4, v11

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/fto$zta;-><init>(FFIIJ)V

    invoke-virtual {p1}, Lcom/android/server/wm/Dimmer;->getSurfaceAnimationRunner()Lcom/android/server/wm/SurfaceAnimationRunner;

    move-result-object v0

    invoke-direct {v3, v11, v0}, Lcom/android/server/wm/LocalAnimationAdapter;-><init>(Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;Lcom/android/server/wm/SurfaceAnimationRunner;)V

    const/4 v0, 0x0

    move-object v4, p2

    invoke-interface {v1, v2, p2, v3, v0}, Lcom/android/server/wm/Dimmer$SurfaceAnimatorStarter;->startAnimation(Lcom/android/server/wm/SurfaceAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/AnimationAdapter;Z)V

    return-void
.end method

.method private zta(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;I)V
    .locals 7

    neg-int v5, p3

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, zta(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;FFII)V

    return-void
.end method

.method private zta(FFZ)Z
    .locals 5

    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    :cond_1
    move p3, v1

    goto :goto_1

    :cond_2
    :goto_0
    move p3, v2

    :goto_1
    iget-boolean v0, p0, mGestureButtonEnabled:Z

    if-nez v0, :cond_3

    iget v0, p0, SY:I

    iput v0, p0, RY:I

    :cond_3
    if-eqz p3, :cond_6

    iget p3, p0, mScreenHeight:I

    iget v0, p0, RY:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    iget v0, p0, QY:I

    int-to-float v3, v0

    sub-float v3, p3, v3

    cmpl-float v4, p2, p3

    if-gtz v4, :cond_5

    cmpg-float v4, p2, v3

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    sub-float v3, p2, v3

    iget v4, p0, PY:F

    mul-float/2addr v3, v4

    sub-float/2addr p3, p2

    iget p2, p0, OY:F

    mul-float/2addr p3, p2

    add-float/2addr v3, p3

    int-to-float p2, v0

    div-float/2addr v3, p2

    iget p0, p0, mScreenWidth:I

    int-to-float p2, p0

    div-float/2addr p2, v3

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_7

    int-to-float p2, p0

    int-to-float p0, p0

    div-float/2addr p0, v3

    sub-float/2addr p2, p0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_7

    return v2

    :cond_5
    :goto_2
    return v1

    :cond_6
    iget p3, p0, mScreenHeight:I

    iget v0, p0, RY:I

    sub-int/2addr p3, v0

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_7

    iget p0, p0, mScreenWidth:I

    int-to-float p2, p0

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    cmpl-float p2, p1, p2

    if-ltz p2, :cond_7

    int-to-float p2, p0

    int-to-float p0, p0

    div-float/2addr p0, p3

    sub-float/2addr p2, p0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_7

    return v2

    :cond_7
    return v1
.end method

.method static synthetic zta(Lcom/android/server/wm/fto;Z)Z
    .locals 0

    iput-boolean p1, p0, mGestureButtonEnabled:Z

    return p1
.end method


# virtual methods
.method public synthetic cno(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-direct {p0, p1}, bio(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "window is animating, can not schedule one-handed mode animation. win="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOneHandMode"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public computeFrameLw(Lcom/android/server/wm/WindowState;)V
    .locals 4

    invoke-virtual {p0}, isOneHandModeAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0, p1}, bio(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, DY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowFrames;->offsetFrames(II)V

    :cond_2
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_6

    iget v1, p0, DY:I

    const/4 v2, 0x0

    if-nez v1, :cond_4

    invoke-virtual {p0}, isOneHandModeAnimating()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object p1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr p1, v1

    if-nez p1, :cond_5

    iget-object p1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v1, p0, mCornerRadius:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2

    :cond_5
    :goto_1
    iget-object p1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    iget-object p0, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_6
    return-void
.end method

.method public continueAnimation()V
    .locals 4

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OpOneHandMode"

    const-string v3, "continue animation for One-Handed Mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, AY:Lcom/android/server/wm/fto$you;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forceCancelImmediately(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "one_hand_mode_status"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, CY:Z

    iput v0, p0, DY:I

    iput v0, p0, BY:I

    invoke-direct {p0}, zr()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, EY:J

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_1
    iget-object v0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    invoke-direct {p0}, Ar()V

    invoke-direct {p0}, wr()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", force cancel immediately"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOneHandMode"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public forceCancelOneHandMode(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, zY:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, vr()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Er()V

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "OpOneHandMode"

    const-string p1, "force cancel failed. still animating."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Ec(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCornerRadius()I
    .locals 0

    iget p0, p0, mCornerRadius:I

    return p0
.end method

.method public getOffsetY()I
    .locals 0

    iget p0, p0, DY:I

    return p0
.end method

.method public getOneHandModeLock()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public getOneHandModeScreenSize()Landroid/graphics/Rect;
    .locals 4

    invoke-direct {p0}, tr()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3ee66666    # 0.45f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayPolicy;->getStatusBar()Lcom/android/server/wm/WindowState;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v3, 0x40000000    # 2.0f

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x105020e

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr v1, p0

    :cond_0
    new-instance p0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v2, 0x0

    invoke-direct {p0, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p0
.end method

.method public getStatus()I
    .locals 0

    iget p0, p0, BY:I

    return p0
.end method

.method public initOneHandMode(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, mContext:Landroid/content/Context;

    iput-object p1, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-class p2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iget-object p2, p0, mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance p1, Lcom/android/server/wm/fto$you;

    invoke-direct {p1, p0}, Lcom/android/server/wm/fto$you;-><init>(Lcom/android/server/wm/fto;)V

    iput-object p1, p0, AY:Lcom/android/server/wm/fto$you;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, mWm:Landroid/view/WindowManager;

    iget-object p1, p0, mWm:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, mDisplay:Landroid/view/Display;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, mScreenHeight:I

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, mScreenWidth:I

    new-instance p1, Lcom/android/server/wm/fto$sis;

    invoke-direct {p1, p0}, Lcom/android/server/wm/fto$sis;-><init>(Lcom/android/server/wm/fto;)V

    iput-object p1, p0, mSettingsObserver:Lcom/android/server/wm/fto$sis;

    invoke-direct {p0}, Dr()V

    iget-object p1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->registerPointerEventListener(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;)V

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpOneHandMode"

    const-string p1, "init One-Handed Mode, start regist pointer event listener"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public isForceCancellingOneHandMode()Z
    .locals 0

    iget-boolean p0, p0, zY:Z

    return p0
.end method

.method public isOneHandModeAnimating()Z
    .locals 2

    invoke-virtual {p0}, getStatus()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean p0, p0, zY:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isOneHandModeRunning()Z
    .locals 0

    iget-boolean p0, p0, CY:Z

    return p0
.end method

.method public isOneHandModeShouldShowWallpaper()Z
    .locals 0

    invoke-virtual {p0}, getStatus()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyOneHandModeAnimationDone(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpOneHandMode"

    const-string p1, "animation is deferring, can not notify to finish"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "OpOneHandMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify animation done. reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, setStatus(I)Z

    invoke-direct {p0}, hideInputMethod()V

    invoke-direct {p0}, Cr()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, setStatus(I)Z

    invoke-direct {p0}, Ar()V

    :goto_0
    invoke-direct {p0}, wr()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public notifyTopResumedActivityChanged()V
    .locals 4

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OpOneHandMode"

    const-string v2, "notify activity changed for One-Handed Mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, AY:Lcom/android/server/wm/fto$you;

    iget-object p0, p0, AY:Lcom/android/server/wm/fto$you;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/server/wm/fto$you;->zta(Landroid/os/Message;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    invoke-direct {p0}, Dr()V

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 11

    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Er()V

    :cond_0
    iget-boolean v0, p0, TY:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v1, :cond_1b

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget-boolean v5, p0, KY:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, JY:Z

    if-eqz v5, :cond_3

    :cond_2
    iget v5, p0, mRotation:I

    if-eq v5, v2, :cond_4

    if-ne v5, v3, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_1

    :cond_4
    :goto_0
    move v5, v2

    :goto_1
    const-string v6, "OpOneHandMode"

    if-eqz v0, :cond_14

    if-eq v0, v2, :cond_12

    const/4 v7, 0x2

    if-eq v0, v7, :cond_5

    if-eq v0, v3, :cond_12

    if-eq v0, v1, :cond_12

    goto/16 :goto_6

    :cond_5
    iget-boolean v0, p0, KY:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, TY:Z

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v0, v8

    sget v3, iZ:I

    int-to-long v8, v3

    cmp-long v0, v0, v8

    if-lez v0, :cond_7

    :cond_6
    iput-boolean v2, p0, mSwipeTimeoSlowOnehand:Z

    :cond_7
    iget v0, p0, mRotation:I

    if-eqz v0, :cond_8

    if-ne v0, v7, :cond_a

    :cond_8
    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v0

    iget v1, p0, IY:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_a

    goto :goto_2

    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v0

    iget v1, p0, IY:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v0

    iget v1, p0, IY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, NY:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v0

    iget v1, p0, IY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, HY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v1

    invoke-direct {p0, v0, v1, v2}, zta(FFZ)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v2, p0, mReachDistanceOnehand:Z

    :cond_a
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, mReachDistanceOnehand:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, mSwipeTimeoSlowOnehand:Z

    if-eqz v0, :cond_c

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " xMove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v3, p0, HY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " yMove="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v1

    iget v3, p0, IY:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " reach onehand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mReachDistanceOnehand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " slow onehand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mSwipeTimeoSlowOnehand:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v0, p0, mSwipeTimeoSlowOnehand:Z

    xor-int/lit8 v1, v0, 0x1

    iget-boolean v3, p0, mReachDistanceOnehand:Z

    and-int/2addr v1, v3

    iget-boolean v5, p0, KY:Z

    and-int/2addr v1, v5

    if-eqz v1, :cond_f

    iput-boolean v2, p0, JY:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_d

    const-string v0, "trigger one-handed mode!"

    invoke-static {v6, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iput-boolean v4, p0, KY:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result p1

    iget v0, p0, IY:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_e

    invoke-virtual {p0}, requestStartOneHandMode()Z

    goto :goto_3

    :cond_e
    invoke-virtual {p0}, requestExitOneHandMode()Z

    goto :goto_3

    :cond_f
    if-nez v3, :cond_10

    if-eqz v0, :cond_11

    :cond_10
    iput-boolean v4, p0, JY:Z

    iput-boolean v4, p0, KY:Z

    :cond_11
    :goto_3
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mReachDistanceOnehand="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, mReachDistanceOnehand:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSwipeTimeoSlowOnehand="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, mSwipeTimeoSlowOnehand:Z

    goto/16 :goto_5

    :cond_12
    iget-boolean p1, p0, JY:Z

    if-nez p1, :cond_13

    iget-boolean p1, p0, KY:Z

    if-eqz p1, :cond_1b

    :cond_13
    iput-boolean v4, p0, JY:Z

    iput-boolean v4, p0, KY:Z

    goto/16 :goto_6

    :cond_14
    iput-boolean v4, p0, JY:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, HY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result p1

    iput p1, p0, IY:F

    iput-boolean v4, p0, KY:Z

    iput-boolean v4, p0, mReachDistanceOnehand:Z

    iput-boolean v4, p0, mSwipeTimeoSlowOnehand:Z

    iput-boolean v4, p0, LY:Z

    iput-boolean v4, p0, MY:Z

    iget-boolean p1, p0, TY:Z

    if-eqz p1, :cond_19

    if-nez v5, :cond_19

    iget p1, p0, HY:F

    iget v0, p0, IY:F

    invoke-direct {p0, p1, v0, v4}, zta(FFZ)Z

    move-result p1

    iput-boolean p1, p0, LY:Z

    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result p1

    if-nez p1, :cond_15

    iget p1, p0, HY:F

    iget v0, p0, IY:F

    invoke-direct {p0, p1, v0, v2}, zta(FFZ)Z

    move-result p1

    iput-boolean p1, p0, MY:Z

    :cond_15
    iget-boolean p1, p0, LY:Z

    if-nez p1, :cond_16

    iget-boolean p1, p0, MY:Z

    if-eqz p1, :cond_19

    invoke-virtual {p0}, isOneHandModeRunning()Z

    move-result p1

    if-nez p1, :cond_19

    :cond_16
    iget-object p1, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result p1

    goto :goto_4

    :cond_17
    move p1, v4

    :goto_4
    if-nez p1, :cond_18

    iget-object v0, p0, GY:Landroid/graphics/Region;

    iget v1, p0, HY:F

    float-to-int v1, v1

    iget v3, p0, IY:F

    float-to-int v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_18

    iput-boolean v4, p0, LY:Z

    iput-boolean v4, p0, MY:Z

    :cond_18
    if-eqz p1, :cond_19

    iput-boolean v4, p0, LY:Z

    iput-boolean v2, p0, MY:Z

    :cond_19
    iget-boolean p1, p0, LY:Z

    if-nez p1, :cond_1a

    iget-boolean p1, p0, MY:Z

    if-eqz p1, :cond_1b

    :cond_1a
    iput-boolean v2, p0, KY:Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_1b

    const-string p1, "Hit One-Handed Mode Region !"

    invoke-static {v6, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHitOnehand="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, LY:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mHitOnehandBottomRegion="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, MY:Z

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1b
    :goto_6
    return-void
.end method

.method public requestExitOneHandMode()Z
    .locals 9

    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget v2, p0, mScreenHeight:I

    iget v3, p0, mScreenWidth:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_5

    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OpOneHandMode"

    const-string v3, "request exit. schedule one-handed mode animation"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, vr()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "OpOneHandMode"

    const-string v2, "request exit failed. still animating."

    invoke-static {p0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    :try_start_1
    iget-object v2, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v3, p0, BY:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v5, :cond_3

    move v3, v6

    goto :goto_0

    :cond_3
    move v3, v4

    :goto_0
    if-eqz v3, :cond_4

    invoke-virtual {p0, v6}, setStatus(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "one_hand_mode_status"

    const-string v7, "0"

    const/4 v8, -0x2

    invoke-static {v3, v5, v7, v8}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, yr()V

    iput-boolean v4, p0, CY:Z

    iput v4, p0, DY:I

    invoke-direct {p0}, zr()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, EY:J

    invoke-direct {p0}, Br()V

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    :cond_4
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_5
    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_6

    const-string p0, "OpOneHandMode"

    const-string v2, "request exit failed. one-handed mode only works on portrait screen orientation"

    invoke-static {p0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_6
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestOneHandModeByStatus(I)Z
    .locals 6

    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget v2, p0, mScreenHeight:I

    iget v3, p0, mScreenWidth:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_3

    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OpOneHandMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "request one-handed mode by status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v2, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    :try_start_1
    invoke-direct {p0}, xr()V

    monitor-exit v2

    goto :goto_0

    :cond_1
    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_2

    const-string p0, "OpOneHandMode"

    const-string p1, "request one-handed mode by status failed. this method only works on status=2 now"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0

    :cond_3
    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "OpOneHandMode"

    const-string p1, "request one-handed mode by status failed. one-handed mode only works on portrait screen orientation"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_4
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public requestStartOneHandMode()Z
    .locals 8

    const-string v0, "android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget v2, p0, mScreenHeight:I

    iget v3, p0, mScreenWidth:I

    const/4 v4, 0x0

    if-le v2, v3, :cond_9

    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "OpOneHandMode"

    const-string v3, "request start. schedule one-handed mode animation"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, vr()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "OpOneHandMode"

    const-string v2, "request start failed. still animating."

    invoke-static {p0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_2
    :try_start_1
    iget-object v2, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v3, :cond_4

    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v3}, Lcom/android/server/wm/AppWindowToken;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "OpOneHandMode"

    const-string v3, "request start failed. in split screen window mode"

    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_4
    :try_start_3
    invoke-direct {p0}, ur()Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "OpOneHandMode"

    const-string v3, "request start failed. startingWindow is showing."

    invoke-static {p0, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_6
    :try_start_4
    iget v3, p0, BY:I

    const/4 v5, 0x1

    if-nez v3, :cond_7

    invoke-direct {p0}, rr()Z

    move-result v3

    if-nez v3, :cond_7

    move v3, v5

    goto :goto_0

    :cond_7
    move v3, v4

    :goto_0
    if-eqz v3, :cond_8

    invoke-virtual {p0, v5}, setStatus(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "one_hand_mode_status"

    const-string v6, "1"

    const/4 v7, -0x2

    invoke-static {v3, v4, v6, v7}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, yr()V

    iput-boolean v5, p0, CY:Z

    iget v3, p0, mScreenHeight:I

    int-to-float v3, v3

    const v4, 0x3ee66666    # 0.45f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, DY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, EY:J

    iget-object v3, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindows()V

    invoke-direct {p0}, Br()V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_8
    :try_start_5
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :cond_9
    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_a

    const-string p0, "OpOneHandMode"

    const-string v2, "request start failed. one-handed mode only works on portrait screen orientation"

    invoke-static {p0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_a
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :catchall_1
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public resetCornerRadiusAndAnimationIfNeeded(Landroid/view/animation/Animation;IZF)F
    .locals 4

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v1, 0x7

    if-eq p2, v1, :cond_1

    const/16 v1, 0x14

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    return p4

    :cond_1
    :goto_0
    const-string p4, "OpOneHandMode"

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    instance-of v0, p1, Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroid/view/animation/AnimationSet;

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xa7

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x53

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "one-handed mode is running, override alpha animation,  transit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", enter="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean p2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_3

    const-string p2, "one-handed mode is running, set appTransition with rounded corner."

    invoke-static {p4, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    iget p0, p0, mCornerRadius:I

    int-to-float p0, p0

    return p0
.end method

.method public synthetic rtg(Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, AY:Lcom/android/server/wm/fto$you;

    new-instance v1, Lcom/android/server/wm/ire;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ire;-><init>(Lcom/android/server/wm/fto;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setStatus(I)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "OpOneHandMode"

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v2, :cond_0

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatus(): unknow status="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, p1}, xc(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStatus(): status change from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, BY:I

    invoke-direct {p0, v3}, statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, BY:I

    return v2

    :cond_2
    return v0
.end method

.method public synthetic sis(Lcom/android/server/wm/WindowState;)V
    .locals 3

    invoke-direct {p0, p1}, bio(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/Task;->hasSetWindowCrop:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2

    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mResetWindowCrop(): w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpOneHandMode"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->hasSetWindowCrop:Z

    iget-object p1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_2
    return-void
.end method

.method public synthetic ssp(Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, AY:Lcom/android/server/wm/fto$you;

    new-instance v1, Lcom/android/server/wm/hmo;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/hmo;-><init>(Lcom/android/server/wm/fto;Lcom/android/server/wm/WindowState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "one_hand_mode_status"

    const-string v2, "0"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, mSettingsObserver:Lcom/android/server/wm/fto$sis;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/fto$sis;->onChange(Z)V

    iget-object v0, p0, mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, FY:Landroid/view/ISystemGestureExclusionListener;

    iget-object p0, p0, mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/WindowManagerService;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "OpOneHandMode"

    const-string v0, "System ready for One-Handed Mode"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public synthetic tsu(Lcom/android/server/wm/WindowState;)V
    .locals 3

    invoke-direct {p0, p1}, bio(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, CY:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsOneHandedModeRunning:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsOneHandedModeRunning:Z

    iget-object v0, p0, AY:Lcom/android/server/wm/fto$you;

    new-instance v1, Lcom/android/server/wm/cjf;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/cjf;-><init>(Lcom/android/server/wm/fto;Lcom/android/server/wm/WindowState;)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, CY:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsOneHandedModeRunning:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsOneHandedModeRunning:Z

    iget-object v0, p0, AY:Lcom/android/server/wm/fto$you;

    new-instance v1, Lcom/android/server/wm/ear;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ear;-><init>(Lcom/android/server/wm/fto;Lcom/android/server/wm/WindowState;)V

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public updateOneHandDims(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;I)Z
    .locals 3

    iget-object v0, p1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimming:Z

    if-nez v2, :cond_3

    iget-boolean p3, v0, Lcom/android/server/wm/Dimmer$DimState;->mAnimateExit:Z

    if-nez p3, :cond_1

    iget-object p0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object p0, p0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, p4}, you(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;I)V

    :cond_2
    :goto_0
    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    return v1

    :cond_3
    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    iget v1, p3, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-object v0, v0, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    invoke-virtual {p2, v0, v1, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p3, p1, Lcom/android/server/wm/Dimmer;->mDimState:Lcom/android/server/wm/Dimmer$DimState;

    iget-boolean v0, p3, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iput-boolean v1, p3, Lcom/android/server/wm/Dimmer$DimState;->isVisible:Z

    iget-object p3, p3, Lcom/android/server/wm/Dimmer$DimState;->mDimLayer:Landroid/view/SurfaceControl;

    invoke-virtual {p2, p3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p1, p2, p4}, zta(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl$Transaction;I)V

    :cond_4
    return v1
.end method

.method public synthetic you(Lcom/android/server/wm/WindowState;)V
    .locals 4

    invoke-direct {p0, p1}, bio(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, DY:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, isOneHandModeAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/server/wm/Task;->hasSetWindowCrop:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    iget v3, p0, DY:I

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget v3, p0, mCornerRadius:I

    int-to-float v3, v3

    invoke-virtual {v2, v0, v3}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, mTransaction:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    sget-boolean p0, DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mSetWindowCrop(): w="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", winBound="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpOneHandMode"

    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public synthetic zta(Lcom/android/server/wm/WindowState;)V
    .locals 2

    invoke-direct {p0, p1}, bio(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowToken;->okToAnimate()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleOneHandModeAnimation(): w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpOneHandMode"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1}, kth(Lcom/android/server/wm/WindowState;)V

    :cond_2
    return-void
.end method
