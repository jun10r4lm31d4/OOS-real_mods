.class public Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;
.implements Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;
    }
.end annotation


# static fields
.field private static final DEBUG_GESTURE:Z

.field private static final DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

.field private static final GESTURE_KEY_DISTANCE_THRESHOLD:I

.field private static final MAX_LONG_PRESS_TIMEOUT:I

.field private static final ONE_HANDED_EDGE_HORIZONTAL_SCALE:I

.field private static final ONE_HANDED_EDGE_VERTICAL_SCALE:F

.field private static final ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE:F

.field private static final ONE_HANDED_MODE_SLIDE_TIME_THRESHOLD:I

.field private static final PORTRAIT_LEAVE_ONE_HANDED_SCALE:F

.field private static final SIDE_GESTURE_EDGE_BACK_SCALE:F

.field private static final SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

.field private static final SIDE_GESTURE_EDGE_MOVE_SCALE:F

.field private static final SIDE_GESTURE_EDGE_SCALE:F

.field private static mCameraNotchHeight:I

.field public static sSideGestureEnabled:Z


# instance fields
.field private final mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

.field private mAllowGesture:Z

.field private mAllowLeaveOneHandedGesture:Z

.field private mAllowOneHandedGesture:Z

.field private mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mContext:Landroid/content/Context;

.field private final mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

.field private mDisplay:Landroid/view/Display;

.field private final mDisplayId:I

.field private final mDisplaySize:Landroid/graphics/Point;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private final mDownPoint:Landroid/graphics/PointF;

.field private mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

.field private mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

.field private mEdgeSwipeStartThreshold:I

.field private mEdgeWidth:I

.field private final mExcludeRegion:Landroid/graphics/Region;

.field private final mFingerOffset:I

.field private mGameToolBoxRegionHeight:I

.field private mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

.field private mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

.field private final mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

.field private mImeHeight:I

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsAttached:Z

.field private mIsEnabled:Z

.field private mIsGesturalModeEnabled:Z

.field protected mIsHidden:Z

.field private mIsIgnoreCameraNotch:Z

.field private mIsOnLeftEdge:Z

.field private mIsOneHandedPerformed:Z

.field private mIsOneHandedSettingEnable:Z

.field private mLeftInset:I

.field private final mLongPressTimeout:I

.field private final mMainExecutor:Ljava/util/concurrent/Executor;

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMinArrowPosition:I

.field private final mNavBarHeight:I

.field private mOneHandHorizontalShift:I

.field private final mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

.field private mOneHandedGestureKeyDistanceXThreshold:I

.field private mOneHandedGestureKeyDistanceYThreshold:I

.field private mOneHandedSlideTimeThreshold:I

.field private mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

.field private mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

.field private mOpSideGestureConfiguration:Lcom/oneplus/phone/OpSideGestureConfiguration;

.field private final mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

.field private mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

.field private mRightInset:I

.field private mRotation:I

.field private mRunningTaskId:I

.field private final mSamplingRect:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSideGestureKeyAnimThreshold:I

.field private mSideGestureKeyDistanceThreshold:I

.field private mSwipeStartThreshold:I

.field private final mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

.field private mThresholdCrossed:Z

.field private mTopClassName:Ljava/lang/String;

.field private mTopPackageName:Ljava/lang/String;

.field private final mTouchSlop:F

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "persist.gesture_button.long_click_timeout"

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, MAX_LONG_PRESS_TIMEOUT:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "persist.gesture_button.side.edge.scale"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3a83126f    # 0.001f

    mul-float/2addr v0, v1

    sput v0, SIDE_GESTURE_EDGE_SCALE:F

    const/16 v0, 0x2d

    const-string v2, "persist.gesture_button.side.move.scale"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sput v2, SIDE_GESTURE_EDGE_MOVE_SCALE:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5090012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    const-string v3, "persist.gesture_button.side.back.scale"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    sput v2, SIDE_GESTURE_EDGE_BACK_SCALE:F

    const-string v2, "persist.gesture_button.side.hor.scale"

    const/16 v3, 0x12c

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3c23d70a    # 0.01f

    mul-float/2addr v2, v3

    sput v2, SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    const-string v2, "persist.gesture_button.dis"

    const/16 v4, 0x3c

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, GESTURE_KEY_DISTANCE_THRESHOLD:I

    const/4 v2, 0x0

    sput-boolean v2, sSideGestureEnabled:Z

    const/16 v4, 0x50

    sput v4, mCameraNotchHeight:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5090011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const-string v5, "persist.gesture_button.one.handed.ver.scale"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    sput v4, ONE_HANDED_EDGE_VERTICAL_SCALE:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x509000e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const-string v5, "persist.gesture_button.one.handed.hor.scale"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    sput v4, ONE_HANDED_EDGE_HORIZONTAL_SCALE:I

    const-string v4, "persist.gesture_button.one.handed.leave.scale"

    invoke-static {v4, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    sput v0, PORTRAIT_LEAVE_ONE_HANDED_SCALE:F

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x5090010

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v3, "persist.gesture_button.one.handed.slide.time.threshold"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, ONE_HANDED_MODE_SLIDE_TIME_THRESHOLD:I

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x509000f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v3, "persist.gesture_button.one.handed.horizontal.shift.rate"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    sput v0, ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE:F

    const-string v0, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    filled-new-array {v0, v1, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    const-string v0, "persist.gesture_button.debug_gesture"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, DEBUG_GESTURE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$2;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v0, p0, mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, mDisplaySize:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, mExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, mDownPoint:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, mThresholdCrossed:Z

    iput-boolean v0, p0, mAllowGesture:Z

    iput v0, p0, mImeHeight:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, mSamplingRect:Landroid/graphics/Rect;

    sget v1, SIDE_GESTURE_EDGE_SCALE:F

    const/high16 v2, 0x44870000    # 1080.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, mEdgeSwipeStartThreshold:I

    sget v1, SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float v3, v1, v2

    float-to-int v3, v3

    iput v3, p0, mSideGestureKeyAnimThreshold:I

    sget v3, SIDE_GESTURE_EDGE_BACK_SCALE:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, mSideGestureKeyDistanceThreshold:I

    const/4 v3, -0x1

    iput v3, p0, mScreenHeight:I

    iput v3, p0, mScreenWidth:I

    iput-boolean v0, p0, mIsHidden:Z

    const/16 v3, 0x32

    iput v3, p0, mSwipeStartThreshold:I

    iput-boolean v0, p0, mIsIgnoreCameraNotch:Z

    sget v3, ONE_HANDED_MODE_SLIDE_TIME_THRESHOLD:I

    iput v3, p0, mOneHandedSlideTimeThreshold:I

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, mOneHandedGestureKeyDistanceYThreshold:I

    iget v1, p0, mSideGestureKeyDistanceThreshold:I

    sget v3, ONE_HANDED_EDGE_HORIZONTAL_SCALE:I

    div-int/2addr v1, v3

    iput v1, p0, mOneHandedGestureKeyDistanceXThreshold:I

    sget v1, ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, mOneHandHorizontalShift:I

    iput-boolean v0, p0, mIsOneHandedPerformed:Z

    iput-boolean v0, p0, mAllowOneHandedGesture:Z

    iput-boolean v0, p0, mAllowLeaveOneHandedGesture:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$jHAIRFn9r4N1-pr3f94pmrxHrdI;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/-$$Lambda$EdgeBackGestureHandler$jHAIRFn9r4N1-pr3f94pmrxHrdI;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, mDockedListener:Ljava/util/function/Consumer;

    iput-boolean v0, p0, mIsOneHandedSettingEnable:Z

    new-instance v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$3;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    const/4 v1, 0x0

    iput-object v1, p0, mTopPackageName:Ljava/lang/String;

    iput-object v1, p0, mTopClassName:Ljava/lang/String;

    new-instance v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$5;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    new-instance v1, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$6;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    iput-object v1, p0, mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    iput v2, p0, mDisplayId:I

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iput-object v2, p0, mMainExecutor:Ljava/util/concurrent/Executor;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, mWm:Landroid/view/WindowManager;

    iput-object p2, p0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f400000    # 0.75f

    mul-float/2addr p1, p2

    iput p1, p0, mTouchSlop:F

    sget p1, MAX_LONG_PRESS_TIMEOUT:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, mLongPressTimeout:I

    sget p1, Lcom/android/systemui/R$dimen;->navigation_bar_frame_height:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mNavBarHeight:I

    sget p1, Lcom/android/systemui/R$dimen;->navigation_edge_arrow_min_y:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mMinArrowPosition:I

    sget p1, Lcom/android/systemui/R$dimen;->navigation_edge_finger_offset:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mFingerOffset:I

    invoke-virtual {p0, v1}, updateCurrentUserResources(Landroid/content/res/Resources;)V

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-class p2, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object p1, p0, mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getGestureButtonController()Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    move-result-object p1

    iput-object p1, p0, mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget p1, p0, mScreenWidth:I

    int-to-float p2, p1

    sget v1, SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, mSideGestureKeyAnimThreshold:I

    int-to-float p1, p1

    sget p2, SIDE_GESTURE_EDGE_BACK_SCALE:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, mSideGestureKeyDistanceThreshold:I

    iget-object p1, p0, mWm:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, mDisplay:Landroid/view/Display;

    new-instance p1, Lcom/oneplus/phone/OpSideGestureConfiguration;

    iget-object p2, p0, mDisplay:Landroid/view/Display;

    invoke-direct {p1, p2}, Lcom/oneplus/phone/OpSideGestureConfiguration;-><init>(Landroid/view/Display;)V

    iput-object p1, p0, mOpSideGestureConfiguration:Lcom/oneplus/phone/OpSideGestureConfiguration;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object p2, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {p2, p1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iput p2, p0, mScreenHeight:I

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, mScreenWidth:I

    iget p1, p0, mSideGestureKeyDistanceThreshold:I

    sget p2, ONE_HANDED_EDGE_HORIZONTAL_SCALE:I

    div-int/2addr p1, p2

    iput p1, p0, mOneHandedGestureKeyDistanceXThreshold:I

    iget p1, p0, mScreenWidth:I

    int-to-float p2, p1

    sget v1, ONE_HANDED_EDGE_VERTICAL_SCALE:F

    mul-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, mOneHandedGestureKeyDistanceYThreshold:I

    int-to-float p1, p1

    sget p2, ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, mOneHandHorizontalShift:I

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x105020e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    sput p1, mCameraNotchHeight:I

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mGameToolBoxRegionHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$dimen;->op_game_mode_toolbox_region_width_port:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mGameToolBoxRegionHeight:I

    goto :goto_1

    :cond_2
    const/high16 p1, 0x42400000    # 48.0f

    iget-object p2, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/systemui/assist/ui/DisplayUtils;->convertDpToPx(FLandroid/content/Context;)I

    move-result p1

    iput p1, p0, mGameToolBoxRegionHeight:I

    :goto_1
    sget-boolean p1, Landroid/view/ViewRootImplInjector;->IS_SUPPORT_CAMERA_NOTCH:Z

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    iput-boolean p2, p0, mIsIgnoreCameraNotch:Z

    :cond_3
    iget-object p1, p0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v1, p0, mOneHandListener:Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;

    invoke-virtual {p1, v1}, Lcom/android/systemui/recents/OverviewProxyService;->addOneHandListener(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyOneHandedListener;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object p1

    iput-object p1, p0, mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    sget-object p1, DEFAULT_HOME_CHANGE_ACTIONS:[Ljava/lang/String;

    array-length v1, p1

    move v2, v0

    :goto_2
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    iget-object v4, p0, mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v4, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    sget-boolean p1, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const/16 v1, 0x102

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is Support one hand feature "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v2, p2, [I

    aput v1, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "EdgeBackGestureHandler"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-array p1, p2, [I

    aput v1, p1, v0

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getOneHandModeController()Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    move-result-object p1

    iput-object p1, p0, mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    :cond_6
    iget-object p1, p0, mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getGestureOnlineConfig()Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    move-result-object p1

    iput-object p1, p0, mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;I)I
    .locals 0

    iput p1, p0, mImeHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)I
    .locals 0

    iget p0, p0, mDisplayId:I

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    invoke-direct {p0}, updateTopPackage()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, mMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Region;
    .locals 0

    iget-object p0, p0, mExcludeRegion:Landroid/graphics/Region;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    iget-boolean p0, p0, mIsOneHandedSettingEnable:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Z
    .locals 0

    iget-boolean p0, p0, mIsOneHandedPerformed:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)Z
    .locals 0

    iput-boolean p1, p0, mIsOneHandedPerformed:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    invoke-direct {p0}, notifyLeaveOneHandedMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Lcom/oneplus/phone/OpSideGestureNavView;
    .locals 0

    iget-object p0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, mSamplingRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputEvent;)V
    .locals 0

    invoke-direct {p0, p1}, onInputEvent(Landroid/view/InputEvent;)V

    return-void
.end method

.method private cancelGesture(Landroid/view/MotionEvent;)V
    .locals 1

    iget-boolean v0, p0, mAllowGesture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, mAllowOneHandedGesture:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mAllowGesture:Z

    iput-boolean v0, p0, mAllowOneHandedGesture:Z

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object p0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->handleTouch(Landroid/view/MotionEvent;)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method private disposeInputChannel()V
    .locals 2

    iget-object v0, p0, mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_0
    iget-object v0, p0, mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private gameToolboxEnable()Z
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "game_mode_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x1

    const-string v3, "game_toolbox_enable"

    invoke-static {p0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private getScreenHeight(I)I
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p0, p0, mScreenHeight:I

    return p0

    :cond_2
    :goto_0
    iget p0, p0, mScreenWidth:I

    return p0

    :cond_3
    :goto_1
    iget p0, p0, mScreenHeight:I

    return p0
.end method

.method private isGameToolBoxRegion(I)Z
    .locals 1

    invoke-direct {p0}, gameToolboxEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, mGameToolBoxRegionHeight:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNonBlockHiddenNavBar()Z
    .locals 5

    iget-object v0, p0, mTopPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v0

    sget-boolean v2, DEBUG_GESTURE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNonBlockHiddenNavBar package name "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, mTopPackageName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " navbar hidden "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v4, v0, 0x2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v1

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "EdgeBackGestureHandler"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    iget-object v0, p0, mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    iget-object p0, p0, mTopPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->isInNonBlockBackGestureList(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method private isPortrait()Z
    .locals 1

    iget p0, p0, mRotation:I

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isWithinOneHandedTouchRegion(II)Z
    .locals 5

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v1, "EdgeBackGestureHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOneHandedSettingEnable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mIsOneHandedSettingEnable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isPortrait() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, isPortrait()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mDockedStackExists "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mDockedStackExists:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, mIsOneHandedSettingEnable:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    invoke-direct {p0}, isPortrait()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-boolean v0, p0, mDockedStackExists:Z

    if-eqz v0, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, mNavBarHeight:I

    sub-int/2addr v0, v3

    if-gt p2, v0, :cond_8

    invoke-direct {p0, p2}, isYInTouchRegion(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget v0, p0, mRotation:I

    invoke-virtual {p0, p1, p2, v0}, adjuestEdgeThreshold(III)I

    move-result v0

    if-ltz p1, :cond_3

    iget v3, p0, mOneHandHorizontalShift:I

    if-lt p1, v3, :cond_5

    :cond_3
    iget v3, p0, mOneHandHorizontalShift:I

    add-int v4, v0, v3

    if-le p1, v4, :cond_4

    iget-object v4, p0, mDisplaySize:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v0

    sub-int/2addr v4, v3

    if-lt p1, v4, :cond_5

    :cond_4
    iget-object v0, p0, mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-gt p1, v0, :cond_6

    iget v3, p0, mOneHandHorizontalShift:I

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_6

    :cond_5
    return v2

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWithinOneHandedTouchRegion isHomeApp "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,mIsOneHandedPerformed "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, mIsOneHandedPerformed:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " inExcludeRegion "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, mIsOneHandedPerformed:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object p0, p0, mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p0

    if-nez p0, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    :goto_0
    return v2
.end method

.method private isWithinTouchRegion(II)Z
    .locals 9

    iget-boolean v0, p0, mIsGesturalModeEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, sSideGestureEnabled:Z

    const/4 v2, 0x1

    if-nez v0, :cond_9

    invoke-direct {p0}, isPortrait()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    iget v0, p0, mScreenHeight:I

    iget v4, p0, mSwipeStartThreshold:I

    sub-int/2addr v0, v4

    if-ge p2, v0, :cond_1

    return v1

    :cond_1
    iget p0, p0, mScreenWidth:I

    div-int/lit8 p2, p0, 0x3

    if-lt p1, p2, :cond_2

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p0, v3

    if-le p1, p0, :cond_7

    :cond_2
    return v2

    :cond_3
    iget v0, p0, mRotation:I

    if-ne v0, v2, :cond_4

    iget v0, p0, mScreenHeight:I

    iget v4, p0, mSwipeStartThreshold:I

    sub-int/2addr v0, v4

    if-lt p1, v0, :cond_5

    :cond_4
    iget v0, p0, mRotation:I

    if-ne v0, v3, :cond_6

    iget v0, p0, mSwipeStartThreshold:I

    if-le p1, v0, :cond_6

    :cond_5
    return v1

    :cond_6
    iget p0, p0, mScreenWidth:I

    div-int/lit8 p1, p0, 0x3

    if-lt p2, p1, :cond_8

    mul-int/lit8 p0, p0, 0x2

    div-int/2addr p0, v3

    if-le p2, p0, :cond_7

    goto :goto_0

    :cond_7
    return v1

    :cond_8
    :goto_0
    return v2

    :cond_9
    iget-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/oneplus/phone/OpSideGestureNavView;->isExitAnimFinished()Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-object v0, p0, mDisplaySize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v3, p0, mNavBarHeight:I

    sub-int/2addr v0, v3

    if-gt p2, v0, :cond_13

    invoke-direct {p0, p2}, isYInTouchRegion(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_1

    :cond_b
    iget v0, p0, mRotation:I

    invoke-virtual {p0, p1, p2, v0}, adjuestEdgeThreshold(III)I

    move-result v0

    sget-boolean v3, DEBUG_GESTURE:Z

    const-string v4, "EdgeBackGestureHandler"

    if-eqz v3, :cond_c

    iget-object v3, p0, mTopClassName:Ljava/lang/String;

    if-eqz v3, :cond_c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "topClassName "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getTopClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v3, p0, mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getTopClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->isInPhotoEditorList(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    div-int/lit8 v3, v0, 0x2

    if-le p1, v3, :cond_e

    iget-object v5, p0, mDisplaySize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v5, v3

    if-ge p1, v5, :cond_e

    sget-boolean p1, DEBUG_GESTURE:Z

    if-eqz p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[DEBUG_GESTURE][Back] special ignore region [0~"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "],["

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, mDisplaySize:Landroid/graphics/Point;

    iget p2, p2, Landroid/graphics/Point;->x:I

    sub-int/2addr p2, v3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "~"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, mDisplaySize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    return v1

    :cond_e
    if-le p1, v0, :cond_f

    iget-object v3, p0, mDisplaySize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_f

    return v1

    :cond_f
    invoke-direct {p0, p2}, isGameToolBoxRegion(I)Z

    move-result v0

    if-eqz v0, :cond_11

    sget-boolean p0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_10

    const-string p0, "[DEBUG_GESTURE][Back] isInGameToolBoxRegion!"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v1

    :cond_11
    iget-object v0, p0, mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Region;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object v3, p0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    iget-boolean p0, p0, mIsOnLeftEdge:Z

    xor-int/lit8 v8, p0, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    :cond_12
    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_13
    :goto_1
    return v1
.end method

.method private isYInLeaveOneHandedTouchRegion(I)Z
    .locals 1

    int-to-float p1, p1

    iget v0, p0, mRotation:I

    invoke-direct {p0, v0}, getScreenHeight(I)I

    move-result p0

    int-to-float p0, p0

    sget v0, PORTRAIT_LEAVE_ONE_HANDED_SCALE:F

    mul-float/2addr p0, v0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isYInTouchRegion(I)Z
    .locals 1

    int-to-float p1, p1

    iget v0, p0, mRotation:I

    invoke-direct {p0, v0}, getScreenHeight(I)I

    move-result p0

    int-to-float p0, p0

    sget v0, Lcom/oneplus/phone/OpSideGestureConfiguration;->PORTRAIT_NON_DETECT_SCALE:F

    mul-float/2addr p0, v0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private notifyLeaveOneHandedMode()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const-string v1, "EdgeBackGestureHandler"

    if-eqz v0, :cond_0

    const-string v0, "notifyLeaveOneHandedMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyService;->getSysUIProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {p0}, Lcom/android/systemui/recents/OverviewProxyService;->getSysUIProxy()Lcom/android/systemui/shared/recents/ISystemUiProxy;

    move-result-object p0

    const/16 v0, 0x32

    invoke-interface {p0, v0}, Lcom/android/systemui/shared/recents/ISystemUiProxy;->notifyGestureEnded(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " notifyGestureEnded , "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private onInputEvent(Landroid/view/InputEvent;)V
    .locals 1

    instance-of v0, p1, Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/MotionEvent;

    invoke-direct {p0, p1}, onMotionEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private onMotionEvent(Landroid/view/MotionEvent;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRealRawY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const-string v5, "EdgeBackGestureHandler"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_b

    iget-object v2, v0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v2}, Lcom/android/systemui/recents/OverviewProxyService;->getSystemUiStateFlags()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    iget v9, v0, mRotation:I

    invoke-virtual {v0, v3, v8, v9}, adjuestEdgeThreshold(III)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    int-to-float v3, v3

    cmpg-float v3, v8, v3

    if-gtz v3, :cond_0

    move v3, v7

    goto :goto_0

    :cond_0
    move v3, v6

    :goto_0
    iput-boolean v3, v0, mIsOnLeftEdge:Z

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v3

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-direct/range {p0 .. p0}, isNonBlockHiddenNavBar()Z

    move-result v8

    if-nez v8, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    invoke-direct {v0, v8, v9}, isWithinTouchRegion(II)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto :goto_1

    :cond_2
    move v8, v6

    :goto_1
    iput-boolean v8, v0, mAllowGesture:Z

    sget-boolean v8, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v8, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mAllowGesture: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isBackGestureDisabled(I)Z

    move-result v2

    xor-int/2addr v2, v7

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, isWithinOneHandedTouchRegion(II)Z

    move-result v2

    iput-boolean v2, v0, mAllowOneHandedGesture:Z

    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAllowOneHandedGesture "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, mAllowOneHandedGesture:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-boolean v2, v0, mAllowGesture:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, mAllowOneHandedGesture:Z

    if-eqz v2, :cond_9

    :cond_5
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_6

    const-string v2, "AllowGesture down"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v2, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz v2, :cond_8

    iget-object v2, v0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-boolean v3, v0, mIsOnLeftEdge:Z

    if-eqz v3, :cond_7

    const/16 v3, 0x53

    goto :goto_2

    :cond_7
    const/16 v3, 0x55

    :goto_2
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-boolean v3, v0, mIsOnLeftEdge:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/phone/OpSideGestureNavView;->setIsLeftPanel(Z)V

    iget-object v2, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v2, v1}, Lcom/oneplus/phone/OpSideGestureNavView;->handleTouch(Landroid/view/MotionEvent;)V

    iget-object v2, v0, mWm:Landroid/view/WindowManager;

    iget-object v3, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v8, v0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v8}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v3, v0, mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->start(Landroid/graphics/Rect;)V

    :cond_8
    iget-object v2, v0, mDownPoint:Landroid/graphics/PointF;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    invoke-virtual {v2, v3, v8}, Landroid/graphics/PointF;->set(FF)V

    iput-boolean v6, v0, mThresholdCrossed:Z

    :cond_9
    iget-boolean v2, v0, mIsOneHandedSettingEnable:Z

    if-eqz v2, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v2}, isYInLeaveOneHandedTouchRegion(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v7

    goto :goto_3

    :cond_a
    move v2, v6

    :goto_3
    iput-boolean v2, v0, mAllowLeaveOneHandedGesture:Z

    goto/16 :goto_d

    :cond_b
    iget-boolean v8, v0, mAllowGesture:Z

    if-nez v8, :cond_c

    iget-boolean v8, v0, mAllowOneHandedGesture:Z

    if-eqz v8, :cond_26

    :cond_c
    iget-boolean v8, v0, mThresholdCrossed:Z

    const/4 v9, 0x5

    const/4 v10, 0x2

    const/4 v11, 0x4

    if-nez v8, :cond_1a

    if-ne v4, v9, :cond_d

    invoke-direct/range {p0 .. p1}, cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_d
    if-ne v4, v10, :cond_1a

    iget-object v8, v0, mGestureOnlineConfig:Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->getTopClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Lcom/oneplus/onlineconfig/OpSystemUIGestureOnlineConfig;->isInPhotoEditorList(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x50

    cmp-long v8, v12, v14

    if-lez v8, :cond_f

    sget-boolean v2, DEBUG_GESTURE:Z

    if-eqz v2, :cond_e

    const-string v2, "[DEBUG_GESTURE][Back] special LongPressTimeOut [80]"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-direct/range {p0 .. p1}, cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_f
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v14

    sub-long/2addr v12, v14

    iget v8, v0, mLongPressTimeout:I

    int-to-long v14, v8

    cmp-long v8, v12, v14

    if-lez v8, :cond_10

    invoke-direct/range {p0 .. p1}, cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget-object v12, v0, mDownPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v12

    iget-object v13, v0, mDownPoint:Landroid/graphics/PointF;

    iget v13, v13, Landroid/graphics/PointF;->y:F

    sub-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->abs(F)F

    move-result v12

    iget-boolean v13, v0, mAllowOneHandedGesture:Z

    if-eqz v13, :cond_11

    iget v13, v0, mOneHandedGestureKeyDistanceXThreshold:I

    int-to-float v13, v13

    cmpg-float v13, v8, v13

    if-gez v13, :cond_11

    iget v13, v0, mOneHandedGestureKeyDistanceYThreshold:I

    int-to-float v13, v13

    cmpl-float v13, v12, v13

    if-lez v13, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v15

    sub-long/2addr v13, v15

    iget v15, v0, mOneHandedSlideTimeThreshold:I

    int-to-long v9, v15

    cmp-long v9, v13, v9

    if-gez v9, :cond_11

    invoke-direct/range {p0 .. p0}, isPortrait()Z

    move-result v9

    :cond_11
    sget-boolean v9, sSideGestureEnabled:Z

    if-nez v9, :cond_15

    iget-boolean v9, v0, mAllowGesture:Z

    if-eqz v9, :cond_15

    invoke-direct/range {p0 .. p0}, isPortrait()Z

    move-result v2

    if-eqz v2, :cond_12

    sget v2, GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    cmpl-float v2, v12, v2

    if-lez v2, :cond_13

    goto :goto_4

    :cond_12
    sget v2, GESTURE_KEY_DISTANCE_THRESHOLD:I

    int-to-float v2, v2

    cmpl-float v2, v8, v2

    if-lez v2, :cond_13

    :goto_4
    move v2, v7

    goto :goto_5

    :cond_13
    move v2, v6

    :goto_5
    if-eqz v2, :cond_14

    const-string v2, "onMotionEvent sendBackKey"

    invoke-static {v5, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v6, v11}, sendEvent(II)V

    invoke-direct {v0, v7, v11}, sendEvent(II)V

    iget-object v2, v0, mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-object v3, v0, mDownPoint:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->onBackAction(F)V

    invoke-direct/range {p0 .. p1}, cancelGesture(Landroid/view/MotionEvent;)V

    :cond_14
    return-void

    :cond_15
    iget-boolean v9, v0, mAllowGesture:Z

    if-eqz v9, :cond_1a

    iget v9, v0, mSideGestureKeyAnimThreshold:I

    int-to-float v10, v9

    cmpl-float v8, v8, v10

    if-lez v8, :cond_16

    iput-boolean v7, v0, mThresholdCrossed:Z

    iget-object v8, v0, mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v8}, Landroid/view/InputMonitor;->pilferPointers()V

    iget-object v8, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v8}, Lcom/oneplus/phone/OpSideGestureNavView;->onDownEvent()V

    goto :goto_6

    :cond_16
    int-to-float v8, v9

    sget v9, SIDE_GESTURE_EDGE_HORIZONTAL_SCALE:F

    mul-float/2addr v8, v9

    cmpl-float v8, v12, v8

    if-lez v8, :cond_1a

    iget-boolean v8, v0, mIsOneHandedSettingEnable:Z

    if-eqz v8, :cond_17

    if-eqz v8, :cond_1a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v13

    sub-long/2addr v8, v13

    iget v10, v0, mOneHandedSlideTimeThreshold:I

    int-to-long v13, v10

    cmp-long v8, v8, v13

    if-lez v8, :cond_1a

    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Swipe too skew "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "One-Handed mode enable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v0, mIsOneHandedSettingEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", move over 100ms "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v8

    sub-long/2addr v3, v8

    iget v8, v0, mOneHandedSlideTimeThreshold:I

    int-to-long v8, v8

    cmp-long v3, v3, v8

    if-lez v3, :cond_18

    move v6, v7

    :cond_18
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    invoke-direct/range {p0 .. p1}, cancelGesture(Landroid/view/MotionEvent;)V

    return-void

    :cond_1a
    :goto_6
    iget-boolean v8, v0, mAllowGesture:Z

    if-eqz v8, :cond_26

    iget-object v8, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v8, v1}, Lcom/oneplus/phone/OpSideGestureNavView;->handleTouch(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    invoke-direct {v0, v8}, isYInTouchRegion(I)Z

    move-result v8

    iget-object v9, v0, mDisplay:Landroid/view/Display;

    invoke-virtual {v9}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    iget-object v12, v0, mDownPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v12, v0, mSideGestureKeyDistanceThreshold:I

    int-to-float v12, v12

    cmpl-float v12, v10, v12

    if-lez v12, :cond_1b

    const/4 v12, 0x2

    goto :goto_7

    :cond_1b
    move v12, v7

    :goto_7
    const/4 v13, 0x2

    if-ne v4, v13, :cond_1c

    if-nez v8, :cond_1c

    if-ne v12, v13, :cond_1c

    move/from16 v19, v11

    goto :goto_8

    :cond_1c
    move/from16 v19, v12

    :goto_8
    iget-object v12, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v13, Lcom/oneplus/phone/GesturePointContainer;

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    iget-boolean v15, v0, mIsOnLeftEdge:Z

    xor-int/lit8 v20, v15, 0x1

    iget v15, v0, mScreenHeight:I

    iget v6, v0, mScreenWidth:I

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move/from16 v21, v9

    move/from16 v22, v15

    move/from16 v23, v6

    invoke-direct/range {v17 .. v23}, Lcom/oneplus/phone/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    invoke-virtual {v12, v13}, Lcom/oneplus/phone/OpSideGestureNavView;->onUpdateGestureView(Lcom/oneplus/phone/GesturePointContainer;)V

    if-ne v4, v7, :cond_1d

    move v6, v7

    goto :goto_9

    :cond_1d
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_1e

    iget v12, v0, mSideGestureKeyDistanceThreshold:I

    int-to-float v12, v12

    cmpl-float v10, v10, v12

    if-lez v10, :cond_1e

    if-eqz v8, :cond_1e

    move v8, v7

    goto :goto_a

    :cond_1e
    const/4 v8, 0x0

    :goto_a
    const/4 v10, 0x3

    if-eqz v6, :cond_1f

    iget-object v12, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v13, Lcom/oneplus/phone/GesturePointContainer;

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v19, 0x2

    iget-boolean v2, v0, mIsOnLeftEdge:Z

    xor-int/lit8 v20, v2, 0x1

    iget v2, v0, mScreenHeight:I

    iget v3, v0, mScreenWidth:I

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move/from16 v21, v9

    move/from16 v22, v2

    move/from16 v23, v3

    invoke-direct/range {v17 .. v23}, Lcom/oneplus/phone/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    invoke-virtual {v12, v13}, Lcom/oneplus/phone/OpSideGestureNavView;->onGestureFinished(Lcom/oneplus/phone/GesturePointContainer;)V

    goto :goto_b

    :cond_1f
    if-eq v4, v10, :cond_20

    const/4 v12, 0x5

    if-ne v4, v12, :cond_21

    :cond_20
    iget-object v12, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v13, Lcom/oneplus/phone/GesturePointContainer;

    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    const/16 v19, 0x2

    iget-boolean v2, v0, mIsOnLeftEdge:Z

    xor-int/lit8 v20, v2, 0x1

    iget v2, v0, mScreenHeight:I

    iget v3, v0, mScreenWidth:I

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move/from16 v21, v9

    move/from16 v22, v2

    move/from16 v23, v3

    invoke-direct/range {v17 .. v23}, Lcom/oneplus/phone/GesturePointContainer;-><init>(Landroid/graphics/PointF;IIIII)V

    invoke-virtual {v12, v13}, Lcom/oneplus/phone/OpSideGestureNavView;->onGestureFinished(Lcom/oneplus/phone/GesturePointContainer;)V

    iget-object v2, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v2}, Lcom/oneplus/phone/OpSideGestureNavView;->onUpEvent()V

    invoke-direct/range {p0 .. p1}, cancelGesture(Landroid/view/MotionEvent;)V

    :cond_21
    :goto_b
    if-eqz v6, :cond_23

    if-eqz v8, :cond_23

    iget-object v2, v0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v2}, Lcom/oneplus/phone/OpSideGestureNavView;->shouldTriggerBack()Z

    move-result v18

    if-eqz v18, :cond_22

    const/4 v2, 0x0

    invoke-direct {v0, v2, v11}, sendEvent(II)V

    invoke-direct {v0, v7, v11}, sendEvent(II)V

    :cond_22
    iget-object v2, v0, mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v3, v0, mDownPoint:Landroid/graphics/PointF;

    iget v8, v3, Landroid/graphics/PointF;->x:F

    float-to-int v8, v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    float-to-int v3, v3

    const/16 v21, 0x0

    iget-boolean v9, v0, mIsOnLeftEdge:Z

    xor-int/lit8 v22, v9, 0x1

    move-object/from16 v17, v2

    move/from16 v19, v8

    move/from16 v20, v3

    invoke-virtual/range {v17 .. v22}, Lcom/android/systemui/recents/OverviewProxyService;->notifyBackAction(ZIIZZ)V

    const/4 v2, 0x0

    iput-boolean v2, v0, mAllowLeaveOneHandedGesture:Z

    :cond_23
    if-nez v6, :cond_25

    if-ne v4, v10, :cond_24

    goto :goto_c

    :cond_24
    invoke-direct/range {p0 .. p0}, updateSamplingRect()V

    iget-object v2, v0, mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->updateSamplingRect()V

    goto :goto_d

    :cond_25
    :goto_c
    iget-object v2, v0, mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    :cond_26
    :goto_d
    iget-boolean v2, v0, mAllowLeaveOneHandedGesture:Z

    if-eqz v2, :cond_27

    if-ne v4, v7, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-direct {v0, v1}, isYInLeaveOneHandedTouchRegion(I)Z

    move-result v1

    if-eqz v1, :cond_27

    iget-boolean v1, v0, mIsOneHandedPerformed:Z

    if-eqz v1, :cond_27

    invoke-direct/range {p0 .. p0}, isPortrait()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->requestExitOneHandMode()Z

    move-result v1

    if-eqz v1, :cond_27

    const-string v1, "Touch leave region to leave One Handed."

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, v0, mIsOneHandedPerformed:Z

    invoke-direct/range {p0 .. p0}, notifyLeaveOneHandedMode()V

    :cond_27
    return-void
.end method

.method private sendEvent(II)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    move/from16 v6, p2

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    const-class v0, Lcom/android/systemui/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bubbles/BubbleController;

    move-object v1, p0

    iget-object v1, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/bubbles/BubbleController;->getExpandedDisplayId(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    move/from16 v2, p2

    if-ne v2, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {v13, v0}, Landroid/view/KeyEvent;->setDisplayId(I)V

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v13, v1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    return-void
.end method

.method private updateDisplaySize()V
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    if-nez v0, :cond_0

    const-string p0, "It\'s not update display size, because display is null or display already removed."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

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

    iget v0, p0, mScreenWidth:I

    int-to-float v2, v0

    sget v3, SIDE_GESTURE_EDGE_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mEdgeSwipeStartThreshold:I

    int-to-float v2, v0

    sget v3, SIDE_GESTURE_EDGE_MOVE_SCALE:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mSideGestureKeyAnimThreshold:I

    int-to-float v0, v0

    sget v2, SIDE_GESTURE_EDGE_BACK_SCALE:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, mSideGestureKeyDistanceThreshold:I

    new-instance v0, Lcom/oneplus/phone/OpSideGestureConfiguration;

    iget-object v2, p0, mDisplay:Landroid/view/Display;

    invoke-direct {v0, v2}, Lcom/oneplus/phone/OpSideGestureConfiguration;-><init>(Landroid/view/Display;)V

    iput-object v0, p0, mOpSideGestureConfiguration:Lcom/oneplus/phone/OpSideGestureConfiguration;

    iget v0, p0, mSideGestureKeyDistanceThreshold:I

    sget v2, ONE_HANDED_EDGE_HORIZONTAL_SCALE:I

    div-int/2addr v0, v2

    iput v0, p0, mOneHandedGestureKeyDistanceXThreshold:I

    iget v0, p0, mScreenWidth:I

    int-to-float v0, v0

    sget v2, ONE_HANDED_EDGE_VERTICAL_SCALE:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, mOneHandedGestureKeyDistanceYThreshold:I

    iget-object v0, p0, mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateDisplaySize()V

    iget-object v0, p0, mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-boolean v2, p0, mIsEnabled:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, mIsOneHandedSettingEnable:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateRegion(Z)V

    iget v0, p0, mScreenWidth:I

    int-to-float v0, v0

    sget v2, ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, mOneHandHorizontalShift:I

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SIDE_GESTURE_EDGE_SCALE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, SIDE_GESTURE_EDGE_SCALE:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, ONE_HANDED_GESTURE_EDGE_SHIFT_SCALE:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n ONE_HANDED_MODE_SLIDE_TIME_THRESHOLD "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, ONE_HANDED_MODE_SLIDE_TIME_THRESHOLD:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n ONE_HANDED_EDGE_VERTICAL_SCALE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, ONE_HANDED_EDGE_VERTICAL_SCALE:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n SIDE_GESTURE_EDGE_BACK_SCALE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, SIDE_GESTURE_EDGE_BACK_SCALE:F

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\n ONE_HANDED_EDGE_HORIZONTAL_SCALE "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, ONE_HANDED_EDGE_HORIZONTAL_SCALE:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateIsEnabled()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateIsEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsGesturalModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isHidden: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsHidden:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, mIsAttached:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, mIsHidden:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, mIsGesturalModeEnabled:Z

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-boolean v4, p0, mIsEnabled:Z

    if-ne v0, v4, :cond_2

    return-void

    :cond_2
    iput-boolean v0, p0, mIsEnabled:Z

    invoke-direct {p0}, disposeInputChannel()V

    iget-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    if-eqz v0, :cond_3

    iget-object v4, p0, mWm:Landroid/view/WindowManager;

    invoke-interface {v4, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v4, p0, mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;->stop()V

    iput-object v0, p0, mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    :cond_3
    iget-boolean v0, p0, mIsEnabled:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v4, p0, mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v4}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->removePinnedStackListener(Landroid/view/IPinnedStackListener;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :try_start_0
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v4, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v4, p0, mDisplayId:I

    invoke-virtual {v0, v4}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v4, p0, mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v5, p0, mDisplayId:I

    invoke-interface {v0, v4, v5}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_1

    :cond_4
    const-string v0, "It is not unregister system gesture exclusion listener, because display is null or display already removed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v4, "Failed to unregister window manager callbacks"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, mOpGestureButtonViewController:Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;

    iget-boolean v1, p0, mIsEnabled:Z

    if-nez v1, :cond_6

    iget-boolean p0, p0, mIsOneHandedSettingEnable:Z

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move v2, v3

    :cond_6
    :goto_2
    invoke-virtual {v0, v2}, Lcom/oneplus/systemui/statusbar/phone/OpGestureButtonViewController;->updateRegion(Z)V

    goto/16 :goto_4

    :cond_7
    invoke-direct {p0}, updateDisplaySize()V

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :try_start_1
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v2, p0, mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v4, p0, mDisplayId:I

    invoke-interface {v0, v2, v4}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_3

    :cond_8
    const-string v0, "It is not register system gesture exclusion listener, because display is null or display already removed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    const-string v2, "Failed to register window manager callbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v2, p0, mDisplayId:I

    const-string v4, "edge-swipe"

    invoke-virtual {v0, v4, v2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, mInputMonitor:Landroid/view/InputMonitor;

    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;

    iget-object v2, p0, mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v2}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v0, p0, v2, v4}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, mInputEventReceiver:Landroid/view/InputEventReceiver;

    new-instance v0, Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3, v3}, Lcom/oneplus/phone/OpSideGestureNavView;-><init>(Landroid/content/Context;II)V

    iput-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v5

    invoke-static {v3}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowHeight(I)I

    move-result v6

    const/16 v7, 0x7e8

    const v8, 0x800128

    const/4 v9, -0x3

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v0, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mDisplayId:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->nav_bar_edge_panel:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iget-object v0, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v1, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, mWm:Landroid/view/WindowManager;

    iget-object v1, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object v2, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    iget-object v1, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$4;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/phone/RegionSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, mRegionSamplingHelper:Lcom/android/systemui/statusbar/phone/RegionSamplingHelper;

    :goto_4
    return-void
.end method

.method private updateIsOneHandedEnabled()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    const-string v1, "EdgeBackGestureHandler"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOneHandedSettingEnable "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mIsOneHandedSettingEnable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Gesture Mode Enabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mIsEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, mIsOneHandedSettingEnable:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, mIsOneHandedPerformed:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/systemui/OpSystemUIInjector;->requestExitOneHandMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "One handed disable. Cancel One Handed immediate."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsOneHandedPerformed:Z

    invoke-direct {p0}, notifyLeaveOneHandedMode()V

    :cond_1
    iget-boolean v0, p0, mIsEnabled:Z

    if-eqz v0, :cond_2

    const-string p0, "Do not enable again because it\'s already enabled."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0}, disposeInputChannel()V

    iget-boolean v0, p0, mIsOneHandedSettingEnable:Z

    if-nez v0, :cond_4

    const-string/jumbo v0, "unregister relate listener by one handed disable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    :try_start_0
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget p0, p0, mDisplayId:I

    invoke-interface {v0, v2, p0}, Landroid/view/IWindowManager;->unregisterSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto/16 :goto_1

    :cond_3
    const-string p0, "It is not unregister system gesture exclusion listener, because display is null or display already removed."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string v0, "Failed to unregister window manager callbacks"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_4
    const-string v0, "register relate listener by one handed enable"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, updateDisplaySize()V

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    :try_start_1
    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iget v2, p0, mDisplayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/WindowManagerWrapper;

    move-result-object v0

    iget-object v2, p0, mImeChangedListener:Landroid/view/IPinnedStackListener$Stub;

    invoke-virtual {v0, v2}, Lcom/android/systemui/shared/system/WindowManagerWrapper;->addPinnedStackListener(Landroid/view/IPinnedStackListener;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v2, p0, mGestureExclusionListener:Landroid/view/ISystemGestureExclusionListener;

    iget v3, p0, mDisplayId:I

    invoke-interface {v0, v2, v3}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V

    goto :goto_0

    :cond_5
    const-string v0, "It is not register system gesture exclusion listener, because display is null or display already removed."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v2, "Failed to register window manager callbacks"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    const-string v2, "edge-swipe"

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    iput-object v0, p0, mInputMonitor:Landroid/view/InputMonitor;

    new-instance v0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;

    iget-object v1, p0, mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v1}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SysUiInputEventReceiver;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, mInputEventReceiver:Landroid/view/InputEventReceiver;

    :goto_1
    return-void
.end method

.method private updateSamplingRect()V
    .locals 5

    iget-object v0, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-boolean v2, p0, mIsOnLeftEdge:Z

    if-eqz v2, :cond_0

    iget v0, p0, mLeftInset:I

    goto :goto_0

    :cond_0
    iget-object v2, p0, mDisplaySize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, p0, mRightInset:I

    sub-int/2addr v2, v3

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int v0, v2, v0

    :goto_0
    iget-object v2, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    add-int/2addr v2, v0

    iget-object v3, p0, mEdgePanelLp:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    add-int/2addr v3, v1

    iget-object v4, p0, mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    iget-object p0, p0, mSamplingRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Lcom/oneplus/phone/OpSideGestureNavView;->adjustRectToBoundingBox(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateTopPackage()V
    .locals 3

    iget-object v0, p0, mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getRunningTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v1, p0, mRunningTaskId:I

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v1, p0, mRunningTaskId:I

    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mTopPackageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mTopClassName:Ljava/lang/String;

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mTopPackageName:Ljava/lang/String;

    iget-object p0, p0, mTopClassName:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/oneplus/util/OpUtils;->updateTopPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateTopPackage isHomeApp "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isHomeApp()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EdgeBackGestureHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method adjuestEdgeThreshold(III)I
    .locals 2

    iget p2, p0, mEdgeSwipeStartThreshold:I

    sget-boolean v0, Landroid/view/ViewRootImplInjector;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_4

    iget v0, p0, mScreenHeight:I

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    if-ne p3, v1, :cond_1

    if-nez p1, :cond_2

    :cond_1
    const/4 v0, 0x3

    if-ne p3, v0, :cond_3

    if-nez p1, :cond_3

    :cond_2
    iget-boolean p1, p0, mIsIgnoreCameraNotch:Z

    if-eqz p1, :cond_4

    sget p1, mCameraNotchHeight:I

    iget p0, p0, mEdgeSwipeStartThreshold:I

    add-int p2, p1, p0

    goto :goto_1

    :cond_3
    iget p0, p0, mScreenWidth:I

    int-to-float p0, p0

    sget p1, SIDE_GESTURE_EDGE_SCALE:F

    mul-float/2addr p0, p1

    float-to-int p2, p0

    :cond_4
    :goto_1
    return p2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "EdgeBackGestureHandler:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowGesture="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAllowGesture:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mExcludeRegion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mImeHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mImeHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsAttached="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsAttached:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEdgeWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, mEdgeWidth:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$new$0$EdgeBackGestureHandler(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, mDockedStackExists:Z

    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 3

    iget-boolean v0, p0, mIsEnabled:Z

    if-eqz v0, :cond_1

    iput p1, p0, mRotation:I

    invoke-direct {p0}, updateDisplaySize()V

    iget-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {}, Lcom/oneplus/phone/OpSideGestureConfiguration;->getWindowWidth()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v1, p0, mWm:Landroid/view/WindowManager;

    iget-object v2, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Edge onConfigurationChanged rotation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", width:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mEdgePanel:Lcom/oneplus/phone/OpSideGestureNavView;

    invoke-virtual {v0, p1}, Lcom/oneplus/phone/OpSideGestureNavView;->onConfigChanged(I)V

    :cond_1
    invoke-direct {p0}, updateIsOneHandedEnabled()V

    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    iget v0, p0, mDisplayId:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, updateDisplaySize()V

    iget-object p1, p0, mDisplay:Landroid/view/Display;

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, mRotation:I

    :cond_0
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onNavBarAttached()V
    .locals 2

    const-string v0, "EdgeBackGestureHandler"

    const-string v1, "onNavBarAttached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, mIsAttached:Z

    invoke-direct {p0}, updateIsEnabled()V

    iget-object v0, p0, mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->addListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V

    :cond_0
    iget-object v0, p0, mDockedListener:Ljava/util/function/Consumer;

    invoke-static {v0}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    iget-object v0, p0, mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v1, p0, mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object p0, p0, mDefaultHomeIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onNavBarDetached()V
    .locals 3

    const-string v0, "EdgeBackGestureHandler"

    const-string v1, "onNavBarDetached"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsAttached:Z

    invoke-direct {p0}, updateIsEnabled()V

    iget-object v1, p0, mOpOneHandModeController:Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController;->removeListener(Lcom/oneplus/systemui/statusbar/phone/OpOneHandModeController$OneHandModeStateListener;)V

    :cond_0
    iget-object v1, p0, mActivityManagerWrapper:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    iget-object v2, p0, mTaskStackChangeListener:Lcom/android/systemui/shared/system/TaskStackChangeListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    iput-boolean v0, p0, mIsOneHandedSettingEnable:Z

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object p0, p0, mDefaultHomeBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onNavigationModeChanged(ILandroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, mIsGesturalModeEnabled:Z

    invoke-direct {p0}, updateIsEnabled()V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, updateCurrentUserResources(Landroid/content/res/Resources;)V

    return-void
.end method

.method public onOneHandEnableStateChange(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/util/OpUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One hand enable state changed from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mIsOneHandedSettingEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EdgeBackGestureHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, mIsOneHandedSettingEnable:Z

    invoke-direct {p0}, updateIsOneHandedEnabled()V

    return-void
.end method

.method public onOneHandPerformStateChange(Z)V
    .locals 0

    iput-boolean p1, p0, mIsOneHandedPerformed:Z

    return-void
.end method

.method public setInsets(II)V
    .locals 0

    iput p1, p0, mLeftInset:I

    iput p2, p0, mRightInset:I

    return-void
.end method

.method public updateCurrentUserResources(Landroid/content/res/Resources;)V
    .locals 1

    const v0, 0x1050099

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mEdgeWidth:I

    return-void
.end method
