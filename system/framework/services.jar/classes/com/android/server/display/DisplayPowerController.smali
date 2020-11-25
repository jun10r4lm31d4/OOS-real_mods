.class final Lcom/android/server/display/DisplayPowerController;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
.implements Lcom/android/server/display/AlsMotion$Listener;
.implements Lcom/android/server/display/IOpBacklightController;
.implements Lcom/android/server/display/IOpProximityController;
.implements Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayPowerController$BrightnessReason;,
        Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;,
        Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;,
        Lcom/android/server/display/DisplayPowerController$SettingsObserver;,
        Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;,
        Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COLOR_FADE_OFF_ANIMATION_DURATION_MILLIS:I = 0x0

.field private static final COLOR_FADE_ON_ANIMATION_DURATION_MILLIS:I = 0xfa

.field static DEBUG:Z = false

.field public static DEBUG_ONEPLUS:Z = false

.field private static final DEBUG_PRETEND_PROXIMITY_SENSOR_ABSENT:Z = false

.field private static final DELAY_MS:I = 0xa

.field private static final INVALID_RAMP_RATE:I = -0x1

.field private static final IS_SUPPORT_DECR_BL_CJ:Z

.field private static final IS_SUPPORT_DIM_MODE_GESTURE:Z

.field private static final MSG_CONFIGURE_BRIGHTNESS:I = 0x5

.field private static final MSG_DELAY_DIM_STATUS:I = 0x57

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_ONLINE_CFG:I = 0x64

.field private static final MSG_PROXIMITY_SENSOR_DEBOUNCED:I = 0x2

.field private static final MSG_SCREEN_OFF_UNBLOCKED:I = 0x4

.field private static final MSG_SCREEN_ON_UNBLOCKED:I = 0x3

.field private static final MSG_SET_DIMMING_SPEED:I = 0x58

.field private static final MSG_SET_TEMPORARY_AUTO_BRIGHTNESS_ADJUSTMENT:I = 0x7

.field private static final MSG_SET_TEMPORARY_BRIGHTNESS:I = 0x6

.field private static final MSG_UPDATE_POWER_STATE:I = 0x1

.field private static final MSG_UPDATE_POWER_STATE2:I = 0x63

.field private static final MSG_UPDATE_RECORD_TIMESTAMP:I = 0xc8

.field private static PROJ_NAME:Ljava/lang/String; = null

.field private static final PROXIMITY_NEGATIVE:I = 0x0

.field private static final PROXIMITY_POSITIVE:I = 0x1

.field private static final PROXIMITY_SENSOR_NEGATIVE_DEBOUNCE_DELAY:I = 0x14

.field private static final PROXIMITY_SENSOR_POSITIVE_DEBOUNCE_DELAY:I = 0x0

.field private static final PROXIMITY_UNKNOWN:I = -0x1

.field private static final RAMP_STATE_SKIP_AUTOBRIGHT:I = 0x2

.field private static final RAMP_STATE_SKIP_INITIAL:I = 0x1

.field private static final RAMP_STATE_SKIP_NONE:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_OFF:I = 0x0

.field private static final REPORTED_TO_POLICY_SCREEN_ON:I = 0x2

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_OFF:I = 0x3

.field private static final REPORTED_TO_POLICY_SCREEN_TURNING_ON:I = 0x1

.field private static final SCREEN_DIM_MINIMUM_REDUCTION:I = 0xa

.field private static final SCREEN_OFF_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen off blocked"

.field private static final SCREEN_ON_BLOCKED_TRACE_NAME:Ljava/lang/String; = "Screen on blocked"

.field private static final TAG:Ljava/lang/String; = "DisplayPowerController"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static final USE_COLOR_FADE_ON_ANIMATION:Z = false

.field private static sEnableProximityEvent:Z

.field private static sLastPositive:Z

.field private static sProximityResFeature:Z


# instance fields
.field private final BOOST_PARAMS:F

.field private final BRIGHTNESS_STATICS_NITS:F

.field private final ENABLE_DIMMING_EXIT_HBM:Z

.field private mAdjustBrightnessInterval:I

.field private final mAllowAutoBrightnessWhileDozingConfig:Z

.field private mAlsMotion:Lcom/android/server/display/AlsMotion;

.field private mAngleChangingTime:J

.field private final mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mAppliedAutoBrightness:Z

.field private mAppliedBrightnessBoost:Z

.field private mAppliedDimming:Z

.field private mAppliedLowPower:Z

.field private mAppliedScreenBrightnessOverride:Z

.field private mAppliedTemporaryAutoBrightnessAdjustment:Z

.field private mAppliedTemporaryBrightness:Z

.field private mAutoBrightnessAdjustment:F

.field private mAutoBrightnessEnabled:Z

.field private mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field private mAutomaticBrightnessMode:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBlanker:Lcom/android/server/display/DisplayBlanker;

.field private mBoostBrightnessHDR:Z

.field private mBoostBrightnessNormal:Z

.field private mBrightnessBucketsInDozeConfig:Z

.field private mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

.field private mBrightnessLimit:I

.field private mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

.field private final mBrightnessRampRateFast:I

.field private final mBrightnessRampRateSlow:I

.field private mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

.field private mBrightnessStaticsTimestamp:J

.field private final mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

.field private final mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

.field private final mCleanListener:Ljava/lang/Runnable;

.field private final mColorFadeEnabled:Z

.field private mColorFadeFadesConfig:Z

.field private mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

.field private mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

.field private final mContext:Landroid/content/Context;

.field private mCurrentScreenBrightnessSetting:I

.field private mDebugMark:I

.field private mDisplayBlanksAfterDozeConfig:Z

.field private mDisplayOLC:Lcom/android/server/display/DisplayOLC;

.field private mDisplayReadyLocked:Z

.field private final mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

.field private final mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

.field private mDozing:Z

.field private mEnableAutoBrightnessDuringCall:Z

.field private mForceUpdateBrightness:Z

.field private mGameModeStatus:I

.field private mHDRMode:Z

.field private final mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

.field private mInitialAutoBrightness:I

.field private mIsAngleChangeCauseDarken:Z

.field private mIsFlushPending:Z

.field private mIsOpBacklight:I

.field private mIsPowerStateUpdatePending:Z

.field private mIsWalking:I

.field private mIsWalkingTime:J

.field private mLastUserSetScreenBrightness:I

.field private final mLock:Ljava/lang/Object;

.field protected mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private final mOnProximityNegativeRunnable:Ljava/lang/Runnable;

.field private final mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveRunnable:Ljava/lang/Runnable;

.field private final mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

.field private final mOnStateChangedRunnable:Ljava/lang/Runnable;

.field protected mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

.field private mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

.field private mOnlineConfigInited:Z

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOpBacklightLock:Ljava/lang/Object;

.field private mOpMaxBrightness:I

.field private mOpMinBrightness:I

.field private mPendingAutoBrightnessAdjustment:F

.field private mPendingProximity:I

.field private mPendingProximityDebounceTime:J

.field private mPendingRequestChangedLocked:Z

.field private mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPendingScreenBrightnessSetting:I

.field private mPendingScreenOff:Z

.field private mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

.field private mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

.field private mPendingUpdatePowerStateLocked:Z

.field private mPendingWaitForNegativeProximityLocked:Z

.field private mPercent:D

.field private mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

.field private mPowerState:Lcom/android/server/display/DisplayPowerState;

.field private mPrevState:I

.field private mProximity:I

.field private final mProximityDelayForLightSensor:I

.field private mProximityEventHandled:Z

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityThreshold:F

.field private final mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mRecoverFaceLight:Z

.field private mReportedScreenStateToPolicy:I

.field private final mScreenBrightnessDefault:I

.field private final mScreenBrightnessDimConfig:I

.field private final mScreenBrightnessDozeConfig:I

.field private mScreenBrightnessForVr:I

.field private final mScreenBrightnessForVrDefault:I

.field private final mScreenBrightnessForVrRangeMaximum:I

.field private final mScreenBrightnessForVrRangeMinimum:I

.field public mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;"
        }
    .end annotation
.end field

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private mScreenOffBecauseOfProximity:Z

.field private mScreenOffBlockStartRealTime:J

.field private mScreenOnBlockStartRealTime:J

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

.field private mSkipRampState:I

.field private final mSkipScreenOnBrightnessRamp:Z

.field private mStageEnable:I

.field private mTempScreenBrightnessRangeMinimum:I

.field private mTemporaryAutoBrightnessAdjustment:F

.field private mTemporaryScreenBrightness:I

.field private mUnfinishedBusiness:Z

.field private mUseCurveGenAlgo:Z

.field private mUseSoftwareAutoBrightnessConfig:Z

.field private mWaitingForNegativeProximity:Z

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private final mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

.field private mhalfDeviceId:I

.field private useProximityForceSuspend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    nop

    const/4 v0, 0x0

    sput-boolean v0, DEBUG:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, DEBUG_ONEPLUS:Z

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x106

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, IS_SUPPORT_DECR_BL_CJ:Z

    new-array v2, v1, [I

    const/16 v3, 0xef

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    sput-boolean v2, IS_SUPPORT_DIM_MODE_GESTURE:Z

    const-string v2, "DisplayBrightness"

    sput-object v2, PROJ_NAME:Ljava/lang/String;

    sput-boolean v1, sEnableProximityEvent:Z

    sput-boolean v0, sLastPositive:Z

    new-array v1, v1, [I

    const/16 v2, 0x141

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, sProximityResFeature:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V
    .locals 45

    move-object/from16 v15, p0

    move-object/from16 v13, p1

    const-string v14, "DisplayPowerController"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v12, 0x0

    iput-boolean v12, v15, mIsPowerStateUpdatePending:Z

    iput-boolean v12, v15, mIsFlushPending:Z

    const-wide/16 v0, -0x1

    iput-wide v0, v15, mAngleChangingTime:J

    const/4 v2, 0x0

    iput-object v2, v15, mAlsMotion:Lcom/android/server/display/AlsMotion;

    iput-boolean v12, v15, mIsAngleChangeCauseDarken:Z

    iput-boolean v12, v15, mEnableAutoBrightnessDuringCall:Z

    iput-boolean v12, v15, mAutoBrightnessEnabled:Z

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v15, mLock:Ljava/lang/Object;

    iput v12, v15, mTempScreenBrightnessRangeMinimum:I

    iput-boolean v12, v15, mForceUpdateBrightness:Z

    const/4 v11, -0x1

    iput v11, v15, mProximity:I

    iput v11, v15, mPendingProximity:I

    iput-wide v0, v15, mPendingProximityDebounceTime:J

    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-direct {v3, v15, v2}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v3, v15, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iput v12, v15, mSkipRampState:I

    iput v12, v15, mAutomaticBrightnessMode:I

    iput v12, v15, mGameModeStatus:I

    iput v12, v15, mIsOpBacklight:I

    iput v12, v15, mDebugMark:I

    const/4 v10, 0x1

    iput v10, v15, mPrevState:I

    iput-boolean v12, v15, mBoostBrightnessNormal:Z

    iput-boolean v12, v15, mBoostBrightnessHDR:Z

    iput-boolean v12, v15, mHDRMode:Z

    iput v12, v15, mIsWalking:I

    iput-wide v0, v15, mIsWalkingTime:J

    iput-boolean v10, v15, mProximityEventHandled:Z

    iput-boolean v12, v15, useProximityForceSuspend:Z

    iput-object v2, v15, mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    iput-boolean v12, v15, mOnlineConfigInited:Z

    iput-object v2, v15, mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v2, v15, mOnlineConfigHandler:Landroid/os/Handler;

    iput-object v2, v15, mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    iput v11, v15, mhalfDeviceId:I

    iput v12, v15, mStageEnable:I

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v15, mOpBacklightLock:Ljava/lang/Object;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    iput-wide v3, v15, mPercent:D

    iput v11, v15, mBrightnessLimit:I

    const/4 v3, 0x2

    iput v3, v15, mOpMinBrightness:I

    const/16 v7, 0x3ff

    iput v7, v15, mOpMaxBrightness:I

    const/16 v3, 0x12c

    iput v3, v15, mAdjustBrightnessInterval:I

    iput-boolean v12, v15, mUseCurveGenAlgo:Z

    iput-wide v0, v15, mBrightnessStaticsTimestamp:J

    const/high16 v0, 0x43af0000    # 350.0f

    iput v0, v15, BRIGHTNESS_STATICS_NITS:F

    new-instance v0, Lcom/android/server/display/DisplayPowerController$2;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$2;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$3;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$3;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$4;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$4;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mCleanListener:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$5;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$5;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mOnStateChangedRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$6;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$6;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$7;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$7;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$8;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$8;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$9;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$9;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$12;

    invoke-direct {v0, v15}, Lcom/android/server/display/DisplayPowerController$12;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iput-object v0, v15, mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iput-boolean v12, v15, mRecoverFaceLight:Z

    new-instance v0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v15, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v0, v15, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v0, Lcom/android/server/display/BrightnessTracker;

    invoke-direct {v0, v13, v2}, Lcom/android/server/display/BrightnessTracker;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessTracker$Injector;)V

    iput-object v0, v15, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    iget-object v1, v15, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v15, v1}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V

    iput-object v0, v15, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    move-object/from16 v5, p2

    iput-object v5, v15, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, v15, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p4

    iput-object v4, v15, mSensorManager:Landroid/hardware/SensorManager;

    const-class v0, Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/WindowManagerPolicy;

    iput-object v0, v15, mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    move-object/from16 v2, p5

    iput-object v2, v15, mBlanker:Lcom/android/server/display/DisplayBlanker;

    iput-object v13, v15, mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/android/context/IOneplusContext$EType;->ONEPLUS_COLORDISPLAY_MANAGER:Lcom/oneplus/android/context/IOneplusContext$EType;

    invoke-static {v0}, Lcom/oneplus/android/context/OneplusContext;->queryInterface(Lcom/oneplus/android/context/IOneplusContext$EType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplayManager;

    iput-object v0, v15, mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    new-instance v0, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object v0, v15, mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v0, 0x10e00b7

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v8

    const v0, 0x10e00ad

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessDozeConfig:I

    const v0, 0x10e00ac

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessDimConfig:I

    iget v0, v15, mScreenBrightnessDimConfig:I

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v15, mScreenBrightnessRangeMinimum:I

    sget-boolean v0, IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v0, :cond_0

    iget-object v0, v15, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_is_dimming"

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, v15, mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    :cond_0
    new-array v0, v10, [I

    const/16 v1, 0x70

    aput v1, v0, v12

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x10e00b5

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessRangeMaximum:I

    goto :goto_0

    :cond_1
    const v0, 0x10e00b4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessRangeMaximum:I

    :goto_0
    const v0, 0x10e00b1

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessDefault:I

    const v0, 0x10e00b0

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessForVrRangeMinimum:I

    const v0, 0x10e00af

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessForVrRangeMaximum:I

    const v0, 0x10e00ae

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v0

    iput v0, v15, mScreenBrightnessForVrDefault:I

    const v0, 0x1110027

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, mUseSoftwareAutoBrightnessConfig:Z

    const v0, 0x111000e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, mAllowAutoBrightnessWhileDozingConfig:Z

    const v0, 0x10e0020

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, mBrightnessRampRateFast:I

    const v0, 0x10e0022

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, mBrightnessRampRateSlow:I

    const v0, 0x11100c3

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, mSkipScreenOnBrightnessRamp:Z

    const v0, 0x10e00a6

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v15, mProximityDelayForLightSensor:I

    const v0, 0x10e001f

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    iput v0, v15, BOOST_PARAMS:F

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, v15, mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    iget-object v0, v15, mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    if-eqz v0, :cond_2

    const-string v0, "IOneplusDisplay service fetched successfully."

    invoke-static {v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch IOneplusDisplay service"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const v0, 0x111006e

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v15, ENABLE_DIMMING_EXIT_HBM:Z

    iget-boolean v0, v15, mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v0, :cond_7

    const v0, 0x1130006

    invoke-virtual {v9, v0, v10, v10}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    const v1, 0x107000e

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    const v1, 0x107000f

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const v1, 0x1070010

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v1

    new-instance v7, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v7, v6, v3, v1}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v18, v7

    const v7, 0x1070070

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    const v10, 0x1070075

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v10

    const v12, 0x1070076

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v12

    new-instance v11, Lcom/android/server/display/HysteresisLevels;

    invoke-direct {v11, v7, v10, v12}, Lcom/android/server/display/HysteresisLevels;-><init>([I[I[I)V

    move-object/from16 v19, v11

    const v11, 0x10e0010

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object/from16 v25, v12

    int-to-long v12, v11

    const v11, 0x10e0011

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-wide/from16 v26, v12

    int-to-long v12, v11

    const v11, 0x1110022

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v28

    const v11, 0x10e006a

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v29

    const v11, 0x10e0013

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    move-object/from16 v20, v1

    const v1, 0x10e0012

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    move-wide/from16 v30, v12

    const/4 v12, -0x1

    if-ne v1, v12, :cond_3

    move v1, v11

    move/from16 v32, v1

    goto :goto_2

    :cond_3
    if-le v1, v11, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Expected config_autoBrightnessInitialLightSensorRate ("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ") to be less than or equal to config_autoBrightnessLightSensorRate ("

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ")."

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move/from16 v32, v1

    :goto_2
    const v1, 0x10e0014

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    const v1, 0x1040173

    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v15, v12}, findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;

    move-result-object v33

    invoke-static {v9}, Lcom/android/server/display/BrightnessMappingStrategy;->create(Landroid/content/res/Resources;)Lcom/android/server/display/BrightnessMappingStrategy;

    move-result-object v1

    iput-object v1, v15, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-object v1, v15, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v1, :cond_6

    iget-object v1, v15, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "use_curve_gen_algo"

    move-object/from16 v34, v12

    const/4 v12, 0x0

    invoke-static {v1, v2, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    move v1, v2

    goto :goto_3

    :cond_5
    move v1, v12

    :goto_3
    iput-boolean v1, v15, mUseCurveGenAlgo:Z

    iget-object v1, v15, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget-boolean v2, v15, mUseCurveGenAlgo:Z

    invoke-virtual {v1, v2}, Lcom/android/server/display/BrightnessMappingStrategy;->enableCurveGenAlgo(Z)V

    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController;

    move-object/from16 v35, v20

    move-object v1, v2

    invoke-virtual/range {p3 .. p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v20

    move-object/from16 v36, v3

    move-object/from16 v3, v20

    iget-object v12, v15, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    move-object/from16 v37, v6

    move-object v6, v12

    iget v12, v15, mScreenBrightnessRangeMinimum:I

    move/from16 v38, v8

    move v8, v12

    iget v12, v15, mScreenBrightnessRangeMaximum:I

    move-object/from16 v39, v9

    move v9, v12

    int-to-long v4, v13

    move-wide/from16 v20, v4

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object v12, v2

    const/16 v17, 0x1

    move-object/from16 v2, p0

    move-object/from16 v4, p4

    move-object/from16 v5, v33

    move-object/from16 v40, v7

    move/from16 v7, v29

    move-object/from16 v41, v10

    move v10, v0

    move/from16 v24, v11

    move/from16 v42, v0

    move-object v0, v12

    move/from16 v12, v32

    move/from16 v43, v13

    move-object/from16 v44, v14

    move-wide/from16 v13, v26

    move-wide/from16 v15, v30

    move/from16 v17, v28

    move-object/from16 v23, p0

    invoke-direct/range {v1 .. v23}, Lcom/android/server/display/AutomaticBrightnessController;-><init>(Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/hardware/Sensor;Lcom/android/server/display/BrightnessMappingStrategy;IIIFIIJJZLcom/android/server/display/HysteresisLevels;Lcom/android/server/display/HysteresisLevels;JLandroid/content/pm/PackageManager;Lcom/android/server/display/DisplayPowerController;)V

    move-object/from16 v1, p0

    iput-object v0, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v2, 0x0

    goto :goto_4

    :cond_6
    move/from16 v42, v0

    move-object/from16 v36, v3

    move-object/from16 v37, v6

    move-object/from16 v40, v7

    move/from16 v38, v8

    move-object/from16 v39, v9

    move-object/from16 v41, v10

    move/from16 v24, v11

    move-object/from16 v34, v12

    move/from16 v43, v13

    move-object/from16 v44, v14

    move-object v1, v15

    move-object/from16 v35, v20

    const/4 v2, 0x0

    iput-boolean v2, v1, mUseSoftwareAutoBrightnessConfig:Z

    goto :goto_4

    :cond_7
    move/from16 v38, v8

    move-object/from16 v39, v9

    move v2, v12

    move-object/from16 v44, v14

    move-object v1, v15

    :goto_4
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    iput-boolean v0, v1, mColorFadeEnabled:Z

    const v0, 0x111001f

    move-object/from16 v4, v39

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, mColorFadeFadesConfig:Z

    const v0, 0x1110052

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, mDisplayBlanksAfterDozeConfig:Z

    const v0, 0x1110053

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, v1, mBrightnessBucketsInDozeConfig:Z

    iget-object v0, v1, mSensorManager:Landroid/hardware/SensorManager;

    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v1, mProximitySensor:Landroid/hardware/Sensor;

    iget-object v0, v1, mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v0, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, v1, mProximityThreshold:F

    :cond_8
    invoke-direct/range {p0 .. p0}, getScreenBrightnessSetting()I

    move-result v0

    iput v0, v1, mCurrentScreenBrightnessSetting:I

    invoke-direct/range {p0 .. p0}, getScreenBrightnessForVrSetting()I

    move-result v0

    iput v0, v1, mScreenBrightnessForVr:I

    invoke-direct/range {p0 .. p0}, getAutoBrightnessAdjustmentSetting()F

    move-result v0

    iput v0, v1, mAutoBrightnessAdjustment:F

    new-array v0, v3, [I

    const/16 v5, 0x7d

    aput v5, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "boost_brightness_normal"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_9

    move v0, v3

    goto :goto_5

    :cond_9
    move v0, v2

    :goto_5
    iput-boolean v0, v1, mBoostBrightnessNormal:Z

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "boost_brightness_hdr"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_a

    move v0, v3

    goto :goto_6

    :cond_a
    move v0, v2

    :goto_6
    iput-boolean v0, v1, mBoostBrightnessHDR:Z

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "hdr_mode"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_b

    goto :goto_7

    :cond_b
    move v3, v2

    :goto_7
    iput-boolean v3, v1, mHDRMode:Z

    :cond_c
    const/4 v3, -0x1

    iput v3, v1, mTemporaryScreenBrightness:I

    iput v3, v1, mPendingScreenBrightnessSetting:I

    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v1, mTemporaryAutoBrightnessAdjustment:F

    iput v0, v1, mPendingAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    new-instance v0, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iget-object v7, v1, mContext:Landroid/content/Context;

    iget-object v8, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-direct {v0, v7, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object v5, v0

    iget-object v0, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v7, v1, mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v0, v7, v4}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceFactory;->create(Landroid/os/Handler;Landroid/hardware/SensorManager;Landroid/content/res/Resources;)Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    move-result-object v0

    move-object v6, v0

    invoke-virtual {v5, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z

    invoke-virtual {v6, v1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setCallbacks(Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController$Callbacks;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_8

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to set up display white-balance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v44

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8
    iput-object v5, v1, mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    iput-object v6, v1, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_brightness_mode"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, mAutomaticBrightnessMode:I

    sget-boolean v0, IS_SUPPORT_DECR_BL_CJ:Z

    if-eqz v0, :cond_d

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "pubg-fg-status"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    iget-object v8, v1, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v0, v7, v2, v8, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_d
    iget v0, v1, mScreenBrightnessRangeMaximum:I

    const/16 v7, 0x3ff

    if-ne v0, v7, :cond_f

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "EvenOdd-deviceId"

    invoke-static {v0, v7, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, mhalfDeviceId:I

    iget v0, v1, mhalfDeviceId:I

    if-eq v0, v3, :cond_e

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    iget v3, v1, mhalfDeviceId:I

    invoke-virtual {v0, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->setOptFuncValue(I)V

    :cond_e
    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "EvenOdd-stage"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, mStageEnable:I

    invoke-direct/range {p0 .. p0}, initOnlineConfig()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v2, v0, v7, v8}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_f
    invoke-static/range {p0 .. p0}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V

    new-instance v0, Lcom/android/server/display/DisplayOLC;

    iget-object v2, v1, mContext:Landroid/content/Context;

    iget-object v3, v1, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    iget v7, v1, mScreenBrightnessRangeMaximum:I

    invoke-direct {v0, v2, v3, v7}, Lcom/android/server/display/DisplayOLC;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMappingStrategy;I)V

    iput-object v0, v1, mDisplayOLC:Lcom/android/server/display/DisplayOLC;

    new-instance v0, Lcom/android/server/display/DisplayPowerController$1;

    invoke-direct {v0, v1}, Lcom/android/server/display/DisplayPowerController$1;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v2, v1, mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayPowerController;)J
    .locals 2

    iget-wide v0, p0, mBrightnessStaticsTimestamp:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/server/display/DisplayPowerController;J)J
    .locals 0

    iput-wide p1, p0, mBrightnessStaticsTimestamp:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayPowerController;)Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .locals 1

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, dumpLocal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$1300()Ljava/lang/String;
    .locals 1

    sget-object v0, PROJ_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/DisplayPowerController;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, updatePowerState()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    invoke-direct {p0}, initOnlineConfig()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0

    iput-boolean p1, p0, mIsPowerStateUpdatePending:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, mIsWalking:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0

    iput p1, p0, mIsWalking:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, debounceProximitySensor()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;
    .locals 1

    iget-object v0, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, unblockScreenOn()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;
    .locals 1

    iget-object v0, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, unblockScreenOff()V

    return-void
.end method

.method static synthetic access$2402(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;
    .locals 0

    iput-object p1, p0, mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    return-object p1
.end method

.method static synthetic access$2502(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0

    iput p1, p0, mTemporaryScreenBrightness:I

    return p1
.end method

.method static synthetic access$2602(Lcom/android/server/display/DisplayPowerController;F)F
    .locals 0

    iput p1, p0, mTemporaryAutoBrightnessAdjustment:F

    return p1
.end method

.method static synthetic access$2700(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, mProximitySensorEnabled:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/display/DisplayPowerController;)F
    .locals 1

    iget v0, p0, mProximityThreshold:F

    return v0
.end method

.method static synthetic access$2900()Z
    .locals 1

    sget-boolean v0, sProximityResFeature:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    invoke-direct {p0}, sendUpdatePowerState()V

    return-void
.end method

.method static synthetic access$3002(Z)Z
    .locals 0

    sput-boolean p0, sLastPositive:Z

    return p0
.end method

.method static synthetic access$3100()Z
    .locals 1

    sget-boolean v0, sEnableProximityEvent:Z

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, proximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/display/DisplayPowerController;JZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, handleProximitySensorEvent(JZ)V

    return-void
.end method

.method static synthetic access$3400()Z
    .locals 1

    sget-boolean v0, IS_SUPPORT_DECR_BL_CJ:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, mGameModeStatus:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0

    iput p1, p0, mGameModeStatus:I

    return p1
.end method

.method static synthetic access$3600(Lcom/android/server/display/DisplayPowerController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, animateScreenBrightness(II)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, mScreenBrightnessDefault:I

    return v0
.end method

.method static synthetic access$3800(Lcom/android/server/display/DisplayPowerController;)I
    .locals 1

    iget v0, p0, mDebugMark:I

    return v0
.end method

.method static synthetic access$3802(Lcom/android/server/display/DisplayPowerController;I)I
    .locals 0

    iput p1, p0, mDebugMark:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/server/display/DisplayPowerController;Z)V
    .locals 0

    invoke-direct {p0, p1}, handleSettingsChange(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    invoke-direct {p0}, getDcEnable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, mUseCurveGenAlgo:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/display/DisplayPowerController;Z)Z
    .locals 0

    iput-boolean p1, p0, mUseCurveGenAlgo:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/BrightnessMappingStrategy;
    .locals 1

    iget-object v0, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    invoke-direct {p0}, needAdjustBrightenDebounceTime()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/AutomaticBrightnessController;
    .locals 1

    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayPowerController;)Z
    .locals 1

    iget-boolean v0, p0, ENABLE_DIMMING_EXIT_HBM:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
    .locals 1

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    return-object v0
.end method

.method private animateScreenBrightness(II)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v0, p1

    move/from16 v2, p2

    sget-boolean v3, IS_SUPPORT_DECR_BL_CJ:Z

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-eqz v3, :cond_0

    iget v3, v1, mGameModeStatus:I

    if-ne v3, v6, :cond_0

    const/16 v3, 0x2bc

    if-le v0, v3, :cond_0

    int-to-float v3, v0

    const/high16 v7, 0x442f0000    # 700.0f

    sub-float/2addr v3, v7

    const v7, 0x43a18000    # 323.0f

    div-float/2addr v3, v7

    float-to-double v7, v3

    const-wide v9, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v7, v9

    sub-double v7, v4, v7

    int-to-double v9, v0

    mul-double/2addr v9, v7

    double-to-int v0, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "2."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " f-->:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v9, "DisplayPowerController"

    invoke-static {v9, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    iget-object v0, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v7, v1, mOpBacklightLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    const/16 v8, 0x3ff

    if-gez v0, :cond_4

    iget v0, v1, mIsOpBacklight:I

    if-ne v0, v6, :cond_4

    iget v0, v1, mOpMaxBrightness:I

    if-ge v3, v0, :cond_4

    iget-wide v9, v1, mPercent:D

    cmpg-double v0, v9, v4

    if-gez v0, :cond_4

    iget v0, v1, mScreenBrightnessRangeMaximum:I

    const/16 v9, 0xfff

    if-eq v0, v9, :cond_2

    iget v0, v1, mScreenBrightnessRangeMaximum:I

    if-ne v0, v8, :cond_4

    :cond_2
    iget-object v0, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-nez v0, :cond_4

    iget-object v0, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v9, 0x2

    if-eq v0, v9, :cond_4

    iget v0, v1, mOpMinBrightness:I

    iget v9, v1, mAdjustBrightnessInterval:I

    sub-int/2addr v0, v9

    if-lez v0, :cond_4

    if-le v3, v0, :cond_4

    iget v9, v1, mOpMinBrightness:I

    if-le v3, v9, :cond_3

    iget v9, v1, mOpMinBrightness:I

    goto :goto_1

    :cond_3
    move v9, v3

    :goto_1
    sub-int v10, v9, v0

    int-to-double v10, v10

    iget v12, v1, mAdjustBrightnessInterval:I

    int-to-double v12, v12

    div-double/2addr v10, v12

    iget-wide v12, v1, mPercent:D

    sub-double v12, v4, v12

    mul-double/2addr v10, v12

    sub-double/2addr v4, v10

    invoke-direct {v1, v3, v4, v5, v6}, caculateBrightnessByNits(IDZ)I

    move-result v10

    move v3, v10

    :cond_4
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-array v0, v6, [I

    const/16 v4, 0x7d

    const/4 v5, 0x0

    aput v4, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, v1, mBoostBrightnessNormal:Z

    if-eqz v0, :cond_5

    iget v0, v1, mAutomaticBrightnessMode:I

    if-eq v0, v6, :cond_6

    :cond_5
    iget-boolean v0, v1, mHDRMode:Z

    if-eqz v0, :cond_10

    :cond_6
    iget-boolean v0, v1, mHDRMode:Z

    if-eqz v0, :cond_7

    int-to-float v0, v3

    iget v4, v1, BOOST_PARAMS:F

    mul-float/2addr v0, v4

    float-to-int v3, v0

    :cond_7
    iget-boolean v0, v1, mBoostBrightnessNormal:Z

    if-eqz v0, :cond_e

    const/16 v0, 0x28

    if-ge v3, v0, :cond_8

    const/16 v0, 0x28

    move v3, v0

    goto :goto_2

    :cond_8
    const/16 v0, 0x50

    if-ge v3, v0, :cond_9

    const/16 v0, 0x50

    move v3, v0

    goto :goto_2

    :cond_9
    const/16 v0, 0xb8

    if-ge v3, v0, :cond_a

    const/16 v0, 0xb8

    move v3, v0

    goto :goto_2

    :cond_a
    const/16 v0, 0x168

    if-ge v3, v0, :cond_b

    const/16 v0, 0x168

    move v3, v0

    goto :goto_2

    :cond_b
    const/16 v0, 0x200

    if-ge v3, v0, :cond_c

    const/16 v0, 0x200

    move v3, v0

    goto :goto_2

    :cond_c
    const/16 v0, 0x370

    if-ge v3, v0, :cond_d

    const/16 v0, 0x370

    move v3, v0

    goto :goto_2

    :cond_d
    if-ge v3, v8, :cond_e

    const/16 v0, 0x3ff

    move v3, v0

    :cond_e
    :goto_2
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le v3, v0, :cond_f

    iget-boolean v0, v1, mHDRMode:Z

    if-eqz v0, :cond_f

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    sub-int v0, v3, v0

    invoke-virtual {v1, v0, v5}, animateHBMBrightness(IZ)V

    return-void

    :cond_f
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le v3, v0, :cond_10

    sget v3, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    :cond_10
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Animating brightness: target="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", rate="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-direct/range {p0 .. p0}, isFodEnabled()Z

    move-result v4

    iget v0, v1, mTempScreenBrightnessRangeMinimum:I

    if-eqz v0, :cond_12

    goto :goto_3

    :cond_12
    move v6, v5

    :goto_3
    invoke-direct/range {p0 .. p0}, getBrightnessStaticsLevel()I

    move-result v0

    const/16 v7, 0xc8

    const-wide/16 v8, -0x1

    if-lt v3, v0, :cond_13

    iget-wide v10, v1, mBrightnessStaticsTimestamp:J

    cmp-long v0, v8, v10

    if-nez v0, :cond_13

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, v1, mBrightnessStaticsTimestamp:J

    iget-object v0, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const-wide/32 v8, 0x927c0

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    :cond_13
    invoke-direct/range {p0 .. p0}, getBrightnessStaticsLevel()I

    move-result v0

    if-ge v3, v0, :cond_14

    iget-wide v10, v1, mBrightnessStaticsTimestamp:J

    cmp-long v0, v8, v10

    if-eqz v0, :cond_14

    iget-object v0, v1, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v10

    iget-wide v11, v1, mBrightnessStaticsTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x2710

    invoke-virtual/range {v10 .. v16}, Lcom/android/server/display/OpAutoBrightnessHelper;->addRecord(JJJ)V

    iput-wide v8, v1, mBrightnessStaticsTimestamp:J

    iget-object v0, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    :cond_14
    :goto_4
    if-eqz v6, :cond_15

    iget v0, v1, mScreenBrightnessRangeMaximum:I

    int-to-double v7, v0

    const-wide v9, 0x3fd3333333333333L    # 0.3

    div-double/2addr v7, v9

    double-to-int v0, v7

    const-string/jumbo v7, "sys.debug.face.rate"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v3}, clampScreenBrightness(I)I

    move-result v3

    iget-object v7, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v7, v3, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Animating lighting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DisplayPowerController"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    iget-boolean v0, v1, mRecoverFaceLight:Z

    if-eqz v0, :cond_16

    iget v0, v1, mScreenBrightnessRangeMaximum:I

    mul-int/lit8 v0, v0, 0x3

    const-string/jumbo v7, "sys.debug.face.reset"

    invoke-static {v7, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v7, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v7, v3, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Animating recover lighting: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DisplayPowerController"

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_16
    iget-boolean v0, v1, mBoostBrightnessNormal:Z

    if-eqz v0, :cond_17

    iget-object v0, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/16 v7, 0x9c4

    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    goto :goto_5

    :cond_17
    if-eqz v4, :cond_18

    iget-object v0, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/16 v7, 0x1e0

    invoke-virtual {v0, v3, v7}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    goto :goto_5

    :cond_18
    const/4 v0, -0x1

    if-eq v2, v0, :cond_19

    iget-object v0, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, v3, v2}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    goto :goto_5

    :cond_19
    iget-object v7, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v7, v3, v0}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v7

    :goto_5
    if-eqz v7, :cond_1a

    const-wide/32 v8, 0x20000

    const-string v0, "TargetScreenBrightness"

    invoke-static {v8, v9, v0, v3}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :try_start_1
    iget-object v0, v1, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, v3}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    :cond_1a
    :goto_6
    iput-boolean v5, v1, mRecoverFaceLight:Z

    invoke-direct {v1, v3}, notifyLevelChangeToBrightnessHelper(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private animateScreenStateChange(IZ)V
    .locals 6

    iget-boolean v0, p0, mColorFadeEnabled:Z

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget-object v0, p0, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-eq p1, v2, :cond_1

    return-void

    :cond_1
    iput-boolean v1, p0, mPendingScreenOff:Z

    :cond_2
    iget-boolean v0, p0, mDisplayBlanksAfterDozeConfig:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    invoke-static {v0}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1}, Landroid/view/Display;->isDozeState(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v4, p0, mContext:Landroid/content/Context;

    iget-boolean v5, p0, mColorFadeFadesConfig:Z

    if-eqz v5, :cond_3

    move v5, v2

    goto :goto_0

    :cond_3
    move v5, v1

    :goto_0
    invoke-virtual {v0, v4, v5}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :cond_4
    if-eq p1, v3, :cond_5

    move v0, v3

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    invoke-direct {p0, v3, v0}, setScreenState(IZ)Z

    :cond_6
    iget-boolean v0, p0, mPendingScreenOff:Z

    if-eqz v0, :cond_7

    if-eq p1, v3, :cond_7

    invoke-direct {p0, v3}, setScreenState(I)Z

    iput-boolean v1, p0, mPendingScreenOff:Z

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    :cond_7
    const/high16 v0, 0x3f800000    # 1.0f

    if-ne p1, v2, :cond_9

    invoke-direct {p0, v2}, setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_8

    return-void

    :cond_8
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_9
    const/4 v4, 0x5

    if-ne p1, v4, :cond_c

    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_a

    return-void

    :cond_a
    invoke-direct {p0, v4}, setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_c
    const/4 v4, 0x3

    if-ne p1, v4, :cond_f

    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-ne v1, v2, :cond_d

    return-void

    :cond_d
    invoke-direct {p0, v4}, setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_e

    return-void

    :cond_e
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_f
    const/4 v5, 0x4

    if-ne p1, v5, :cond_13

    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_10

    return-void

    :cond_10
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v5, :cond_12

    invoke-direct {p0, v4}, setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-direct {p0, v5}, setScreenState(I)Z

    :cond_12
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto/16 :goto_3

    :cond_13
    const/4 v4, 0x6

    if-ne p1, v4, :cond_17

    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    if-eq v1, v4, :cond_16

    invoke-direct {p0, v2}, setScreenState(I)Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    invoke-direct {p0, v4}, setScreenState(I)Z

    :cond_16
    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFade()V

    goto :goto_3

    :cond_17
    iput-boolean v3, p0, mPendingScreenOff:Z

    iget-boolean v0, p0, mColorFadeEnabled:Z

    const/4 v4, 0x0

    if-nez v0, :cond_18

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerState;->setColorFadeLevel(F)V

    :cond_18
    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v0

    cmpl-float v0, v0, v4

    if-nez v0, :cond_19

    invoke-direct {p0, v3}, setScreenState(I)Z

    iput-boolean v1, p0, mPendingScreenOff:Z

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->dismissColorFadeResources()V

    goto :goto_3

    :cond_19
    if-eqz p2, :cond_1b

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-boolean v4, p0, mColorFadeFadesConfig:Z

    if-eqz v4, :cond_1a

    goto :goto_2

    :cond_1a
    move v2, v3

    :goto_2
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;->prepareColorFade(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_1b

    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_3

    :cond_1b
    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    :goto_3
    return-void
.end method

.method private blockScreenOff()V
    .locals 4

    iget-object v0, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen off blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mScreenOffBlockStartRealTime:J

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen off"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blockScreenOn()V
    .locals 4

    iget-object v0, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_0

    const-wide/32 v0, 0x20000

    const/4 v2, 0x0

    const-string v3, "Screen on blocked"

    invoke-static {v0, v1, v3, v2}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;-><init>(Lcom/android/server/display/DisplayPowerController;Lcom/android/server/display/DisplayPowerController$1;)V

    iput-object v0, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mScreenOnBlockStartRealTime:J

    const-string v0, "DisplayPowerController"

    const-string v1, "Blocking screen on until initial contents have been drawn."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private caculateBrightnessByNits(IDZ)I
    .locals 4

    iget-object v0, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-nez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p2

    double-to-float v0, v0

    iget-object v1, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v1

    iget v2, p0, mScreenBrightnessRangeMaximum:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-eqz p4, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LPB:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ") --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    invoke-virtual {v3, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private caculateBrightnessRateLocked(DID)I
    .locals 5

    const/4 v0, 0x0

    invoke-direct {p0, p3, p1, p2, v0}, caculateBrightnessByNits(IDZ)I

    move-result v0

    sub-int v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-double v0, v0

    div-double v2, v0, p4

    double-to-int v2, v2

    iget v3, p0, mScreenBrightnessRangeMaximum:I

    const/4 v4, 0x1

    invoke-static {v2, v4, v3}, Landroid/util/MathUtils;->constrain(III)I

    move-result v2

    return v2
.end method

.method private static clampAbsoluteBrightness(I)I
    .locals 2

    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private static clampAutoBrightnessAdjustment(F)F
    .locals 2

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method private clampScreenBrightness(I)I
    .locals 2

    iget v0, p0, mTempScreenBrightnessRangeMinimum:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    if-gt v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "override brightness:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, mTempScreenBrightnessRangeMinimum:I

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, mScreenBrightnessRangeMinimum:I

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clampScreenBrightnessForVr(I)I
    .locals 2

    iget v0, p0, mScreenBrightnessForVrRangeMinimum:I

    iget v1, p0, mScreenBrightnessForVrRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private clearPendingProximityDebounceTime()V
    .locals 4

    iget-wide v0, p0, mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, mPendingProximityDebounceTime:J

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    :cond_0
    return-void
.end method

.method private convertToNits(I)F
    .locals 1

    iget-object v0, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertToNits(I)F

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method private debounceProximitySensor()V
    .locals 6

    iget-boolean v0, p0, mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    iget v0, p0, mPendingProximity:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, mPendingProximityDebounceTime:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    iget v2, p0, mPendingProximity:I

    iput v2, p0, mProximity:I

    const/4 v2, 0x0

    iput-boolean v2, p0, mProximityEventHandled:Z

    invoke-direct {p0}, updatePowerState()V

    invoke-direct {p0}, clearPendingProximityDebounceTime()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-wide v4, p0, mPendingProximityDebounceTime:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private dumpLocal(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Thread State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerRequest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUnfinishedBusiness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mUnfinishedBusiness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mWaitingForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mWaitingForNegativeProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximitySensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mProximitySensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mProximityThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mProximity:I

    invoke-static {v1}, proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mPendingProximity:I

    invoke-static {v1}, proximityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingProximityDebounceTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, mPendingProximityDebounceTime:J

    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBecauseOfProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mScreenOffBecauseOfProximity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastUserSetScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mLastUserSetScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mCurrentScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenBrightnessSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mPendingScreenBrightnessSetting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryScreenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mTemporaryScreenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTemporaryAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mTemporaryAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mPendingAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessForVr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAppliedAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedDimming="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAppliedDimming:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedLowPower="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAppliedLowPower:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedScreenBrightnessOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAppliedScreenBrightnessOverride:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAppliedTemporaryBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAppliedTemporaryBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipRampState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mSkipRampState:I

    invoke-static {v1}, skipRampStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mInitialAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mInitialAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOnBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, mScreenOnBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenOffBlockStartRealTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, mScreenOffBlockStartRealTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOnUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOffUnblocker="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPendingScreenOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mPendingScreenOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mReportedToPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mReportedScreenStateToPolicy:I

    invoke-static {v1}, reportedToPolicyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRampAnimator.isAnimating()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOnAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeOffAnimator.isStarted()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerState;->dump(Ljava/io/PrintWriter;)V

    :cond_3
    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->dump(Ljava/io/PrintWriter;)V

    :cond_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    iget-object v0, p0, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_6

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->dump(Ljava/io/PrintWriter;)V

    :cond_6
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/OpAutoBrightnessHelper;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private findDisplayLightSensor(Ljava/lang/String;)Landroid/hardware/Sensor;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getStringType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    return-object v0
.end method

.method private getAutoBrightnessAdjustmentSetting()F
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "screen_auto_brightness_adj"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, clampAutoBrightnessAdjustment(F)F

    move-result v1

    :goto_0
    return v1
.end method

.method private getBrightnessStaticsLevel()I
    .locals 2

    iget-object v0, p0, mBrightnessMapper:Lcom/android/server/display/BrightnessMappingStrategy;

    if-eqz v0, :cond_0

    const/high16 v1, 0x43af0000    # 350.0f

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessMappingStrategy;->convertNitsToBrightness(F)F

    move-result v0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0

    :cond_0
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    return v0
.end method

.method private getDcEnable()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.vendor.dc.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private getScreenBrightnessForVrSetting()I
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, mScreenBrightnessForVrDefault:I

    const-string/jumbo v2, "screen_brightness_for_vr"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-direct {p0, v0}, clampScreenBrightnessForVr(I)I

    move-result v1

    return v1
.end method

.method private getScreenBrightnessSetting()I
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, mScreenBrightnessDefault:I

    const-string/jumbo v2, "screen_brightness"

    const/4 v3, -0x2

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, clampAbsoluteBrightness(I)I

    move-result v1

    return v1
.end method

.method private handleProximitySensorEvent(JZ)V
    .locals 3

    iget-boolean v0, p0, mProximitySensorEnabled:Z

    if-eqz v0, :cond_3

    iget v0, p0, mPendingProximity:I

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget v0, p0, mPendingProximity:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    if-eqz p3, :cond_2

    iput v1, p0, mPendingProximity:I

    const-wide/16 v0, 0x0

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, setPendingProximityDebounceTime(J)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput v0, p0, mPendingProximity:I

    const-wide/16 v0, 0x14

    add-long/2addr v0, p1

    invoke-direct {p0, v0, v1}, setPendingProximityDebounceTime(J)V

    :goto_0
    invoke-direct {p0}, debounceProximitySensor()V

    :cond_3
    return-void
.end method

.method private handleSettingsChange(Z)V
    .locals 7

    invoke-direct {p0}, getScreenBrightnessSetting()I

    move-result v0

    iput v0, p0, mPendingScreenBrightnessSetting:I

    if-eqz p1, :cond_0

    iget v0, p0, mPendingScreenBrightnessSetting:I

    iput v0, p0, mCurrentScreenBrightnessSetting:I

    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_0
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, mAutomaticBrightnessMode:I

    const/4 v2, -0x2

    const-string/jumbo v3, "screen_brightness_mode"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, mAutomaticBrightnessMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_2

    iget-object v1, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_2

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "game_mode_status"

    invoke-static {v1, v5, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "game_mode_close_automatic_brightness"

    invoke-static {v5, v6, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v1, v4, :cond_1

    if-eq v2, v4, :cond_2

    :cond_1
    iget-object v5, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v5}, Lcom/android/server/display/AutomaticBrightnessController;->resetShortTermModel()V

    :cond_2
    iput v0, p0, mAutomaticBrightnessMode:I

    iget v1, p0, mAutomaticBrightnessMode:I

    if-nez v1, :cond_3

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    :cond_3
    invoke-direct {p0}, getAutoBrightnessAdjustmentSetting()F

    move-result v1

    iput v1, p0, mPendingAutoBrightnessAdjustment:F

    invoke-direct {p0}, getScreenBrightnessForVrSetting()I

    move-result v1

    iput v1, p0, mScreenBrightnessForVr:I

    new-array v1, v4, [I

    const/16 v2, 0x7d

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boost_brightness_normal"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v3

    :goto_0
    iput-boolean v1, p0, mBoostBrightnessNormal:Z

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boost_brightness_hdr"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v3

    :goto_1
    iput-boolean v1, p0, mBoostBrightnessHDR:Z

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdr_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_6

    move v3, v4

    :cond_6
    iput-boolean v3, p0, mHDRMode:Z

    :cond_7
    iget-object v1, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v1, :cond_8

    iget v1, p0, mAutomaticBrightnessMode:I

    if-ne v1, v4, :cond_8

    iget v1, p0, mPendingScreenBrightnessSetting:I

    iget v2, p0, mCurrentScreenBrightnessSetting:I

    if-eq v1, v2, :cond_8

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v2, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    iget v3, p0, mCurrentScreenBrightnessSetting:I

    iget v4, p0, mPendingScreenBrightnessSetting:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->adjustBrightness(FII)V

    :cond_8
    invoke-direct {p0}, sendUpdatePowerState()V

    return-void
.end method

.method private initOnlineConfig()Z
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/display/DisplayPowerController$BrightnessConfigUpdater;-><init>(Lcom/android/server/display/DisplayPowerController;)V

    sget-object v4, PROJ_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    const-string v1, "DisplayPowerController"

    if-nez v0, :cond_0

    const-string v0, "OLC Observer is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Brightness_OLC"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/display/DisplayPowerController$11;

    iget-object v2, p0, mOnlineConfigHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/display/DisplayPowerController$11;-><init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V

    iput-object v0, p0, mOnlineConfigHandler:Landroid/os/Handler;

    iget-object v0, p0, mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, mOnlineConfigHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-string v0, "OLC init DONE!"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private initialize()V
    .locals 6

    new-instance v0, Lcom/android/server/display/DisplayPowerState;

    iget-object v1, p0, mBlanker:Lcom/android/server/display/DisplayBlanker;

    iget-boolean v2, p0, mColorFadeEnabled:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/display/ColorFade;

    invoke-direct {v2, v3}, Lcom/android/server/display/ColorFade;-><init>(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v0, v1, v2}, Lcom/android/server/display/DisplayPowerState;-><init>(Lcom/android/server/display/DisplayBlanker;Lcom/android/server/display/ColorFade;)V

    iput-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-boolean v0, p0, mColorFadeEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    const/4 v2, 0x2

    new-array v4, v2, [F

    fill-array-data v4, :array_0

    invoke-static {v0, v1, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v1, Lcom/android/server/display/DisplayPowerState;->COLOR_FADE_LEVEL:Landroid/util/FloatProperty;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    new-instance v0, Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    sget-object v2, Lcom/android/server/display/DisplayPowerState;->SCREEN_BRIGHTNESS:Landroid/util/IntProperty;

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/IntProperty;)V

    iput-object v0, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v0, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v1, p0, mRampAnimatorListener:Lcom/android/server/display/RampAnimator$Listener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    iget-object v0, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Lcom/android/server/display/RampAnimator;->setMax(I)V

    :try_start_0
    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    iget-object v0, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenBrightness()I

    move-result v0

    invoke-direct {p0, v0}, convertToNits(I)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_2

    iget-object v1, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessTracker;->start(F)V

    :cond_2
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_for_vr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_auto_brightness_adj"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x7d

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boost_brightness_normal"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "boost_brightness_hdr"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdr_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_3
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_brightness_mode"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "use_curve_gen_algo"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, mSettingsObserver:Lcom/android/server/display/DisplayPowerController$SettingsObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private isFodEnabled()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v2, "ColorDisable"

    invoke-virtual {v1, v2}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch FOD status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private logDisplayPolicyChanged(I)V
    .locals 2

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0x6a0

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method private needAdjustBrightenDebounceTime()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "19850"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19851"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18865"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19801"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19830"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19833"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19861"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "19863"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private notifyBrightnessChanged(IZZ)V
    .locals 7

    invoke-direct {p0, p1}, convertToNits(I)F

    move-result v6

    iget-object v0, p0, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v6, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_1

    iget-object v0, p0, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    move v3, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    move v3, v0

    :goto_0
    nop

    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    iget-object v1, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v1}, Lcom/android/server/display/AutomaticBrightnessController;->isDefaultConfig()Z

    move-result v5

    move v1, v6

    move v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/BrightnessTracker;->notifyBrightnessChanged(FZFZZ)V

    :cond_1
    return-void
.end method

.method private notifyLevelChangeToBrightnessHelper(I)V
    .locals 6

    iget v0, p0, mAutomaticBrightnessMode:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v0, v2, :cond_7

    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_7

    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-ne v0, v3, :cond_7

    int-to-float v0, p1

    const v4, 0x3ccccccd    # 0.025f

    sget v5, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    cmpg-float v0, v0, v5

    if-gez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v4

    if-eq v4, v0, :cond_8

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    :cond_3
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v2, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v2, v2, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/OpAutoBrightnessHelper;->enterExtremeState(FI)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v1

    if-ne v1, v3, :cond_5

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    :cond_5
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    iget-object v3, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    iget v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->enterExtremeState(FI)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    goto :goto_1

    :cond_7
    iget-object v0, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getExtremeState()I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->exitExtremeState()V

    goto :goto_2

    :cond_8
    :goto_1
    nop

    :cond_9
    :goto_2
    return-void
.end method

.method private parseOnlineConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 13

    const-string v0, "EvenOdd-deviceId"

    const-string v1, "DisplayPowerController"

    if-nez p1, :cond_0

    const-string v0, "OLC is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#OLC:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "newfeature"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "brightnessLimit"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, mBrightnessLimit:I

    iget-object v6, p0, mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "Brightness-limit"

    iget v8, p0, mBrightnessLimit:I

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "EvenOdd-stage"

    if-nez v5, :cond_1

    :try_start_1
    iput v2, p0, mStageEnable:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v7, "stage"

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_4

    :try_start_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#1 mhalfDeviceId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, mhalfDeviceId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, mhalfDeviceId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_2

    iget-object v10, p0, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v10, v0, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, p0, mhalfDeviceId:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#2 mhalfDeviceId:"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, mhalfDeviceId:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, p0, mhalfDeviceId:I

    if-ne v10, v11, :cond_2

    const-string/jumbo v10, "ro.serialno"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    array-length v12, v11

    sub-int/2addr v12, v9

    aget-byte v12, v11, v12

    rem-int/2addr v12, v8

    iput v12, p0, mhalfDeviceId:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "#3 mhalfDeviceId:"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, p0, mhalfDeviceId:I

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget v12, p0, mhalfDeviceId:I

    invoke-static {v8, v0, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    iget v0, p0, mhalfDeviceId:I

    if-ne v0, v9, :cond_3

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mStageEnable:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_3
    iput v2, p0, mStageEnable:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    if-ne v5, v8, :cond_5

    iput v9, p0, mhalfDeviceId:I

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, mStageEnable:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v2, p0, mStageEnable:I

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_0
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/display/OpAutoBrightnessHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/display/OpAutoBrightnessHelper;

    move-result-object v0

    iget v2, p0, mhalfDeviceId:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/OpAutoBrightnessHelper;->setOptFuncValue(I)V

    iget-object v0, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget v2, p0, mStageEnable:I

    invoke-virtual {v0, v2}, Lcom/android/server/display/RampAnimator;->setStageEnable(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mhalfDeviceId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, mhalfDeviceId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " stage:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, mStageEnable:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig]  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_1
    return-void
.end method

.method private proximitySensorEvent(JZ)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, handleProximitySensorEvent(JZ)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_ctrl_psensor_positive"

    invoke-static {v0, v1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static proximityToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Positive"

    return-object v0

    :cond_1
    const-string v0, "Negative"

    return-object v0

    :cond_2
    const-string v0, "Unknown"

    return-object v0
.end method

.method private putAutoBrightnessAdjustmentSetting(F)V
    .locals 3

    iput p1, p0, mAutoBrightnessAdjustment:F

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_auto_brightness_adj"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private putScreenBrightnessSetting(I)V
    .locals 3

    iput p1, p0, mCurrentScreenBrightnessSetting:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private static reportedToPolicyToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "REPORTED_TO_POLICY_SCREEN_ON"

    return-object v0

    :cond_1
    const-string v0, "REPORTED_TO_POLICY_SCREEN_TURNING_ON"

    return-object v0

    :cond_2
    const-string v0, "REPORTED_TO_POLICY_SCREEN_OFF"

    return-object v0
.end method

.method private sendOnProximityNegativeSuspendWithWakelock()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, mEnableAutoBrightnessDuringCall:Z

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, mOnProximityNegativeSuspendRunnable:Ljava/lang/Runnable;

    iget v2, p0, mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendOnProximityNegativeWithWakelock()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, mEnableAutoBrightnessDuringCall:Z

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, mOnProximityNegativeRunnable:Ljava/lang/Runnable;

    iget v2, p0, mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendOnProximityPositiveSuspendWithWakelock()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, mEnableAutoBrightnessDuringCall:Z

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, mOnProximityPositiveSuspendRunnable:Ljava/lang/Runnable;

    iget v2, p0, mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendOnProximityPositiveWithWakelock()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, mEnableAutoBrightnessDuringCall:Z

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, mOnProximityPositiveRunnable:Ljava/lang/Runnable;

    iget v2, p0, mProximityDelayForLightSensor:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private sendOnStateChangedWithWakelock()V
    .locals 2

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    iget-object v1, p0, mOnStateChangedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendUpdatePowerState()V
    .locals 2

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, sendUpdatePowerStateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendUpdatePowerStateLocked()V
    .locals 2

    iget-boolean v0, p0, mPendingUpdatePowerStateLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingUpdatePowerStateLocked:Z

    iget-object v1, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private setPendingProximityDebounceTime(J)V
    .locals 4

    iget-wide v0, p0, mPendingProximityDebounceTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, p0, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    :cond_0
    iput-wide p1, p0, mPendingProximityDebounceTime:J

    return-void
.end method

.method private setProximitySensorEnabled(Z)V
    .locals 5

    if-eqz p1, :cond_0

    iget-boolean v0, p0, mProximitySensorEnabled:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, mProximitySensorEnabled:Z

    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, mProximitySensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    iget-object v4, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, mProximitySensorEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, mProximitySensorEnabled:Z

    iput-boolean v1, p0, useProximityForceSuspend:Z

    const/4 v0, -0x1

    iput v0, p0, mProximity:I

    iput v0, p0, mPendingProximity:I

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->removeMessages(I)V

    iget-object v0, p0, mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    invoke-direct {p0}, clearPendingProximityDebounceTime()V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "display_ctrl_psensor_positive"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    iput-boolean v1, p0, mEnableAutoBrightnessDuringCall:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private setReportedScreenState(I)V
    .locals 3

    const-wide/32 v0, 0x20000

    const-string v2, "ReportedScreenStateToPolicy"

    invoke-static {v0, v1, v2, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iput p1, p0, mReportedScreenStateToPolicy:I

    return-void
.end method

.method private setScreenState(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, setScreenState(IZ)Z

    move-result v0

    return v0
.end method

.method private setScreenState(IZ)Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, p1, :cond_6

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    iget-boolean v5, p0, mScreenOffBecauseOfProximity:Z

    if-nez v5, :cond_2

    iget v5, p0, mReportedScreenStateToPolicy:I

    if-ne v5, v3, :cond_1

    invoke-direct {p0, v4}, setReportedScreenState(I)V

    invoke-direct {p0}, blockScreenOff()V

    iget-object v5, p0, mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v6, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-interface {v5, v6}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOff(Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-direct {p0}, unblockScreenOff()V

    goto :goto_1

    :cond_1
    iget-object v5, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v5, :cond_2

    return v1

    :cond_2
    :goto_1
    if-nez p2, :cond_6

    const-wide/32 v5, 0x20000

    const-string v7, "ScreenState"

    invoke-static {v5, v6, v7, p1}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    iget-object v5, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v5, p1}, Lcom/android/server/display/DisplayPowerState;->setScreenState(I)V

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v4, :cond_5

    iget-object v3, p0, mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    const-string v5, "FingerPrintMode"

    invoke-virtual {v3, v5, v0, v1}, Lcom/oneplus/core/oimc/OIMCServiceManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_3

    :cond_4
    :goto_2
    iget-object v3, p0, mOneplusColorDisplayManager:Lcom/oneplus/display/IOneplusColorDisplayManager;

    invoke-interface {v3, p1}, Lcom/oneplus/display/IOneplusColorDisplayManager;->screenStateChange(I)V

    :cond_5
    :goto_3
    :try_start_0
    iget-object v3, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v3

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    iget v3, p0, mReportedScreenStateToPolicy:I

    if-eqz v3, :cond_7

    iget-boolean v3, p0, mScreenOffBecauseOfProximity:Z

    if-nez v3, :cond_7

    invoke-direct {p0, v1}, setReportedScreenState(I)V

    invoke-direct {p0}, unblockScreenOn()V

    iget-object v3, p0, mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    goto :goto_5

    :cond_7
    if-nez v2, :cond_8

    iget v3, p0, mReportedScreenStateToPolicy:I

    if-ne v3, v4, :cond_8

    invoke-direct {p0}, unblockScreenOff()V

    iget-object v3, p0, mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v3}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOff()V

    invoke-direct {p0, v1}, setReportedScreenState(I)V

    :cond_8
    :goto_5
    if-nez v2, :cond_a

    iget v3, p0, mReportedScreenStateToPolicy:I

    if-nez v3, :cond_a

    invoke-direct {p0, v0}, setReportedScreenState(I)V

    iget-object v3, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_9

    invoke-direct {p0}, blockScreenOn()V

    goto :goto_6

    :cond_9
    invoke-direct {p0}, unblockScreenOn()V

    :goto_6
    iget-object v3, p0, mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget-object v4, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurningOn(Lcom/android/server/policy/WindowManagerPolicy$ScreenOnListener;)V

    :cond_a
    if-eqz v2, :cond_b

    invoke-static {v1}, Lcom/android/server/am/OpRestartProcessManagerInjector;->doWriteRecord(Z)V

    :cond_b
    invoke-static {v2}, Lcom/android/server/am/OpRestartProcessManagerInjector;->setScreenState(Z)V

    iget-object v3, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v3, :cond_c

    goto :goto_7

    :cond_c
    move v0, v1

    :goto_7
    return v0
.end method

.method private static skipRampStateToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "RAMP_STATE_SKIP_AUTOBRIGHT"

    return-object v0

    :cond_1
    const-string v0, "RAMP_STATE_SKIP_INITIAL"

    return-object v0

    :cond_2
    const-string v0, "RAMP_STATE_SKIP_NONE"

    return-object v0
.end method

.method private triggerProximitySensorEvent(Z)V
    .locals 4

    iget-boolean v0, p0, mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-boolean v2, DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "P-Sensor Changed: positive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, v0, v1, p1}, proximitySensorEvent(JZ)V

    :cond_1
    return-void
.end method

.method private unblockScreenOff()V
    .locals 6

    iget-object v0, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, mPendingScreenOffUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, mScreenOffBlockStartRealTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen off after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen off blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private unblockScreenOn()V
    .locals 6

    iget-object v0, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, mScreenOnBlockStartRealTime:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked screen on after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/32 v2, 0x20000

    const/4 v4, 0x0

    const-string v5, "Screen on blocked"

    invoke-static {v2, v3, v5, v4}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private updateAutoBrightnessAdjustment()Z
    .locals 4

    iget v0, p0, mPendingAutoBrightnessAdjustment:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, mAutoBrightnessAdjustment:F

    iget v2, p0, mPendingAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v2

    const/high16 v3, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_1

    iput v3, p0, mPendingAutoBrightnessAdjustment:F

    return v1

    :cond_1
    iput v2, p0, mAutoBrightnessAdjustment:F

    iput v3, p0, mPendingAutoBrightnessAdjustment:F

    const/4 v0, 0x1

    return v0
.end method

.method private updatePowerState()V
    .locals 29

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v0, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    iget-object v4, v1, mLock:Ljava/lang/Object;

    monitor-enter v4

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, v1, mPendingUpdatePowerStateLocked:Z

    iget-object v5, v1, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    iget-object v5, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-nez v5, :cond_1

    new-instance v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v6, v1, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v5, v6}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v5, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v5, v1, mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v5, v1, mWaitingForNegativeProximity:Z

    iput-boolean v0, v1, mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v0, v1, mPendingRequestChangedLocked:Z

    const/4 v2, 0x1

    const/4 v5, 0x3

    goto :goto_0

    :cond_1
    iget-boolean v5, v1, mPendingRequestChangedLocked:Z

    if-eqz v5, :cond_2

    iget-object v5, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    iget-object v6, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-object v7, v1, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v6, v7}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iget-boolean v6, v1, mWaitingForNegativeProximity:Z

    iget-boolean v7, v1, mPendingWaitForNegativeProximityLocked:Z

    or-int/2addr v6, v7

    iput-boolean v6, v1, mWaitingForNegativeProximity:Z

    iput-boolean v0, v1, mPendingWaitForNegativeProximityLocked:Z

    iput-boolean v0, v1, mPendingRequestChangedLocked:Z

    iput-boolean v0, v1, mDisplayReadyLocked:Z

    goto :goto_0

    :cond_2
    iget-object v5, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v5, v5, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_0
    :try_start_1
    iget-boolean v6, v1, mDisplayReadyLocked:Z

    const/4 v7, 0x1

    if-nez v6, :cond_3

    move v6, v7

    goto :goto_1

    :cond_3
    move v6, v0

    :goto_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v2, :cond_4

    invoke-direct/range {p0 .. p0}, initialize()V

    :cond_4
    const/4 v4, -0x1

    const/4 v8, 0x0

    iget-object v9, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-eqz v9, :cond_8

    if-eq v9, v7, :cond_6

    if-eq v9, v10, :cond_5

    const/4 v9, 0x2

    goto :goto_3

    :cond_5
    const/4 v9, 0x5

    goto :goto_3

    :cond_6
    iget-object v9, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eqz v9, :cond_7

    iget-object v9, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v9, v9, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    goto :goto_2

    :cond_7
    const/4 v9, 0x3

    :goto_2
    iget-boolean v12, v1, mAllowAutoBrightnessWhileDozingConfig:Z

    if-nez v12, :cond_9

    iget-object v12, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    iget-object v12, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v12, v11}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_3

    :cond_8
    const/4 v9, 0x1

    const/4 v8, 0x1

    nop

    :cond_9
    :goto_3
    nop

    iget-object v12, v1, mProximitySensor:Landroid/hardware/Sensor;

    const/4 v13, 0x3

    if-eqz v12, :cond_16

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "useProximityForceSuspend = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, useProximityForceSuspend:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "DisplayPowerController"

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v12, v1, useProximityForceSuspend:Z

    if-eqz v12, :cond_12

    iget-object v12, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_d

    invoke-direct {v1, v7}, setProximitySensorEnabled(Z)V

    iget-boolean v12, v1, mProximityEventHandled:Z

    if-nez v12, :cond_c

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mProximity = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, mProximity:I

    invoke-static {v14}, proximityToString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "DisplayPowerController"

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v12, v1, mProximity:I

    if-ne v12, v7, :cond_a

    invoke-direct/range {p0 .. p0}, sendOnProximityPositiveSuspendWithWakelock()V

    goto :goto_4

    :cond_a
    if-nez v12, :cond_b

    invoke-direct/range {p0 .. p0}, sendOnProximityNegativeSuspendWithWakelock()V

    :cond_b
    :goto_4
    iput-boolean v7, v1, mProximityEventHandled:Z

    goto/16 :goto_6

    :cond_c
    sget-boolean v12, DEBUG:Z

    if-eqz v12, :cond_17

    const-string v12, "DisplayPowerController"

    const-string/jumbo v14, "the last proximity event has been handled"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :cond_d
    iget-boolean v12, v1, mProximitySensorEnabled:Z

    if-eqz v12, :cond_17

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "mPowerRequest.useProximitySensor = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", mWaitingForNegativeProximity = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v14, v1, mWaitingForNegativeProximity:Z

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", state = "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "DisplayPowerController"

    invoke-static {v14, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v12, v1, mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_f

    iget v12, v1, mProximity:I

    if-ne v12, v7, :cond_f

    if-eq v9, v7, :cond_e

    if-ne v9, v13, :cond_f

    :cond_e
    invoke-direct {v1, v7}, setProximitySensorEnabled(Z)V

    goto :goto_6

    :cond_f
    invoke-direct {v1, v0}, setProximitySensorEnabled(Z)V

    if-eq v9, v7, :cond_10

    if-ne v9, v13, :cond_11

    :cond_10
    const-string v12, "DisplayPowerController"

    const-string/jumbo v14, "turn on lcd light due to proximity released"

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, sendOnProximityNegativeSuspendWithWakelock()V

    :cond_11
    iput-boolean v0, v1, mScreenOffBecauseOfProximity:Z

    iput-boolean v0, v1, mWaitingForNegativeProximity:Z

    iput-boolean v7, v1, mProximityEventHandled:Z

    goto :goto_6

    :cond_12
    iget-object v12, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v12, v12, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    if-eqz v12, :cond_13

    if-eq v9, v7, :cond_13

    invoke-direct {v1, v7}, setProximitySensorEnabled(Z)V

    iget-boolean v12, v1, mScreenOffBecauseOfProximity:Z

    if-nez v12, :cond_15

    iget v12, v1, mProximity:I

    if-ne v12, v7, :cond_15

    iput-boolean v7, v1, mScreenOffBecauseOfProximity:Z

    invoke-direct/range {p0 .. p0}, sendOnProximityPositiveWithWakelock()V

    goto :goto_5

    :cond_13
    iget-boolean v12, v1, mWaitingForNegativeProximity:Z

    if-eqz v12, :cond_14

    iget-boolean v12, v1, mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_14

    iget v12, v1, mProximity:I

    if-ne v12, v7, :cond_14

    if-eq v9, v7, :cond_14

    invoke-direct {v1, v7}, setProximitySensorEnabled(Z)V

    goto :goto_5

    :cond_14
    invoke-direct {v1, v0}, setProximitySensorEnabled(Z)V

    iput-boolean v0, v1, mWaitingForNegativeProximity:Z

    :cond_15
    :goto_5
    iget-boolean v12, v1, mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_17

    iget v12, v1, mProximity:I

    if-eq v12, v7, :cond_17

    iput-boolean v0, v1, mScreenOffBecauseOfProximity:Z

    invoke-direct/range {p0 .. p0}, sendOnProximityNegativeWithWakelock()V

    goto :goto_6

    :cond_16
    iput-boolean v0, v1, mWaitingForNegativeProximity:Z

    :cond_17
    :goto_6
    iget-boolean v12, v1, useProximityForceSuspend:Z

    if-nez v12, :cond_18

    iget-boolean v12, v1, mScreenOffBecauseOfProximity:Z

    if-eqz v12, :cond_18

    const/4 v9, 0x1

    :cond_18
    iget-object v12, v1, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v12

    invoke-direct {v1, v9, v8}, animateScreenStateChange(IZ)V

    iget-object v14, v1, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v14}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v9

    const/4 v14, 0x5

    if-ne v9, v7, :cond_19

    const/4 v4, 0x0

    iget-object v15, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    :cond_19
    if-ne v9, v14, :cond_1a

    iget v4, v1, mScreenBrightnessForVr:I

    iget-object v15, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v14, 0x6

    invoke-virtual {v15, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    :cond_1a
    if-gez v4, :cond_1b

    iget-object v14, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-ltz v14, :cond_1b

    iget-object v14, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    invoke-direct {v1, v4}, clampScreenBrightness(I)I

    move-result v4

    iget-object v14, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    iput-boolean v7, v1, mAppliedScreenBrightnessOverride:Z

    goto :goto_7

    :cond_1b
    iput-boolean v0, v1, mAppliedScreenBrightnessOverride:Z

    :goto_7
    iget-boolean v14, v1, mProximitySensorEnabled:Z

    if-nez v14, :cond_1c

    iput-boolean v0, v1, mEnableAutoBrightnessDuringCall:Z

    :cond_1c
    iget-boolean v14, v1, mAllowAutoBrightnessWhileDozingConfig:Z

    if-eqz v14, :cond_1e

    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v14

    if-eqz v14, :cond_1e

    iget-object v14, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-eq v14, v11, :cond_1d

    iget-object v14, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v14, v14, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    if-ne v14, v13, :cond_1e

    :cond_1d
    move v14, v7

    goto :goto_8

    :cond_1e
    move v14, v0

    :goto_8
    iget-object v15, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v15, v15, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    if-eqz v15, :cond_21

    if-eq v9, v11, :cond_1f

    if-nez v14, :cond_1f

    iget-boolean v15, v1, mEnableAutoBrightnessDuringCall:Z

    if-eqz v15, :cond_21

    :cond_1f
    if-ltz v4, :cond_20

    if-nez v4, :cond_21

    iget-boolean v15, v1, mEnableAutoBrightnessDuringCall:Z

    if-eqz v15, :cond_21

    :cond_20
    iget-object v15, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v15, :cond_21

    move v15, v7

    goto :goto_9

    :cond_21
    move v15, v0

    :goto_9
    iget v10, v1, mStageEnable:I

    and-int/2addr v10, v11

    move/from16 v25, v14

    const/4 v11, -0x1

    if-lez v10, :cond_24

    iget-object v10, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v10, v10, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v13, v1, mAutoBrightnessEnabled:Z

    if-eq v10, v13, :cond_24

    iget-object v10, v1, mAlsMotion:Lcom/android/server/display/AlsMotion;

    if-nez v10, :cond_22

    new-instance v10, Lcom/android/server/display/AlsMotion;

    invoke-direct {v10}, Lcom/android/server/display/AlsMotion;-><init>()V

    iput-object v10, v1, mAlsMotion:Lcom/android/server/display/AlsMotion;

    :cond_22
    iget-boolean v10, v1, mAutoBrightnessEnabled:Z

    if-nez v10, :cond_23

    iget-object v10, v1, mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v13, "Brightness-limit"

    invoke-static {v10, v13, v11}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    iput v10, v1, mBrightnessLimit:I

    iget-object v10, v1, mAlsMotion:Lcom/android/server/display/AlsMotion;

    iget-object v13, v1, mContext:Landroid/content/Context;

    invoke-virtual {v10, v13, v1}, Lcom/android/server/display/AlsMotion;->start(Landroid/content/Context;Lcom/android/server/display/AlsMotion$Listener;)V

    iput v0, v1, mIsWalking:I

    iput-boolean v7, v1, mAutoBrightnessEnabled:Z

    const-string v10, "DisplayPowerController"

    const-string v13, "ALSM START!"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_23
    iget-object v10, v1, mAlsMotion:Lcom/android/server/display/AlsMotion;

    iget-object v13, v1, mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Lcom/android/server/display/AlsMotion;->stop(Landroid/content/Context;)V

    iput v0, v1, mIsWalking:I

    const-wide/16 v13, -0x1

    iput-wide v13, v1, mAngleChangingTime:J

    iput v11, v1, mBrightnessLimit:I

    iput-boolean v0, v1, mIsAngleChangeCauseDarken:Z

    iput-boolean v0, v1, mAutoBrightnessEnabled:Z

    const-string v10, "DisplayPowerController"

    const-string v13, "ALSM STOP!"

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_a
    iget v10, v1, mStageEnable:I

    const/4 v13, 0x2

    and-int/2addr v10, v13

    if-nez v10, :cond_25

    iget-boolean v10, v1, mAutoBrightnessEnabled:Z

    if-eqz v10, :cond_25

    iget-object v10, v1, mAlsMotion:Lcom/android/server/display/AlsMotion;

    iget-object v13, v1, mContext:Landroid/content/Context;

    invoke-virtual {v10, v13}, Lcom/android/server/display/AlsMotion;->stop(Landroid/content/Context;)V

    iput v0, v1, mIsWalking:I

    const-wide/16 v13, -0x1

    iput-wide v13, v1, mAngleChangingTime:J

    iput v11, v1, mBrightnessLimit:I

    iput-boolean v0, v1, mIsAngleChangeCauseDarken:Z

    iput-boolean v0, v1, mAutoBrightnessEnabled:Z

    const-string v10, "DisplayPowerController"

    const-string v13, "ALSM STOP."

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    invoke-direct/range {p0 .. p0}, updateUserSetScreenBrightness()Z

    move-result v10

    iget v13, v1, mTemporaryScreenBrightness:I

    if-lez v13, :cond_27

    iget v4, v1, mTemporaryScreenBrightness:I

    iput-boolean v7, v1, mAppliedTemporaryBrightness:Z

    iget v14, v1, mCurrentScreenBrightnessSetting:I

    if-ne v13, v14, :cond_26

    iput v11, v1, mTemporaryScreenBrightness:I

    :cond_26
    iget-object v13, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    goto :goto_b

    :cond_27
    iput-boolean v0, v1, mAppliedTemporaryBrightness:Z

    :goto_b
    invoke-direct/range {p0 .. p0}, updateAutoBrightnessAdjustment()Z

    move-result v13

    if-eqz v13, :cond_28

    const/high16 v14, 0x7fc00000    # Float.NaN

    iput v14, v1, mTemporaryAutoBrightnessAdjustment:F

    :cond_28
    iget v14, v1, mTemporaryAutoBrightnessAdjustment:F

    invoke-static {v14}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-nez v14, :cond_29

    iget v14, v1, mTemporaryAutoBrightnessAdjustment:F

    const/4 v3, 0x1

    iput-boolean v7, v1, mAppliedTemporaryAutoBrightnessAdjustment:Z

    goto :goto_c

    :cond_29
    iget v14, v1, mAutoBrightnessAdjustment:F

    const/4 v3, 0x2

    iput-boolean v0, v1, mAppliedTemporaryAutoBrightnessAdjustment:Z

    :goto_c
    iget-object v11, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v11, v11, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    if-eqz v11, :cond_2a

    if-eqz v4, :cond_2a

    sget v4, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    iget-object v11, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/16 v0, 0x9

    invoke-virtual {v11, v0}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    iput-boolean v7, v1, mAppliedBrightnessBoost:Z

    goto :goto_d

    :cond_2a
    const/4 v0, 0x0

    iput-boolean v0, v1, mAppliedBrightnessBoost:Z

    :goto_d
    if-gez v4, :cond_2c

    if-nez v13, :cond_2b

    if-eqz v10, :cond_2c

    :cond_2b
    move v0, v7

    goto :goto_e

    :cond_2c
    const/4 v0, 0x0

    :goto_e
    const/4 v11, 0x0

    iget-object v7, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v7, :cond_2d

    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController;->hasUserDataPoints()Z

    move-result v11

    iget-object v7, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    move/from16 v26, v2

    iget-object v2, v1, mBrightnessConfiguration:Landroid/hardware/display/BrightnessConfiguration;

    move/from16 v27, v3

    iget v3, v1, mLastUserSetScreenBrightness:I

    int-to-float v3, v3

    move/from16 v28, v8

    sget v8, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v8, v8

    div-float v20, v3, v8

    iget-object v3, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v3, v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    move-object/from16 v17, v7

    move/from16 v18, v15

    move-object/from16 v19, v2

    move/from16 v21, v10

    move/from16 v22, v14

    move/from16 v23, v13

    move/from16 v24, v3

    invoke-virtual/range {v17 .. v24}, Lcom/android/server/display/AutomaticBrightnessController;->configure(ZLandroid/hardware/display/BrightnessConfiguration;FZFZI)V

    goto :goto_f

    :cond_2d
    move/from16 v26, v2

    move/from16 v27, v3

    move/from16 v28, v8

    :goto_f
    if-nez v15, :cond_2e

    iget-object v2, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v2, :cond_2e

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    :cond_2e
    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    if-ne v9, v7, :cond_31

    iget v7, v1, mIsWalking:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_2f

    const/4 v7, 0x0

    iput v7, v1, mIsWalking:I

    :cond_2f
    iget-wide v7, v1, mAngleChangingTime:J

    cmp-long v7, v7, v2

    if-gtz v7, :cond_30

    iget-boolean v7, v1, mIsAngleChangeCauseDarken:Z

    if-eqz v7, :cond_31

    :cond_30
    const-wide/16 v7, -0x1

    iput-wide v7, v1, mAngleChangingTime:J

    const/4 v7, 0x0

    iput-boolean v7, v1, mIsAngleChangeCauseDarken:Z

    :cond_31
    iget v7, v1, mIsWalking:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_32

    if-ne v9, v8, :cond_32

    iget v7, v1, mPrevState:I

    if-eq v7, v8, :cond_32

    const/4 v7, 0x0

    iput v7, v1, mIsWalking:I

    :cond_32
    const/4 v7, 0x0

    if-gez v4, :cond_40

    move v8, v14

    if-eqz v15, :cond_33

    iget-object v2, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightness()I

    move-result v4

    iget-object v2, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-virtual {v2}, Lcom/android/server/display/AutomaticBrightnessController;->getAutomaticScreenBrightnessAdjustment()F

    move-result v8

    :cond_33
    if-ltz v4, :cond_3e

    invoke-direct {v1, v4}, clampScreenBrightness(I)I

    move-result v2

    iget-boolean v3, v1, mAppliedAutoBrightness:Z

    if-eqz v3, :cond_34

    if-nez v13, :cond_34

    const/4 v7, 0x1

    :cond_34
    iget v3, v1, mIsWalking:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_37

    if-ne v9, v4, :cond_35

    iget v3, v1, mPrevState:I

    if-ne v3, v4, :cond_36

    :cond_35
    iget v3, v1, mBrightnessLimit:I

    if-le v2, v3, :cond_37

    :cond_36
    const/4 v3, 0x0

    iput v3, v1, mIsWalking:I

    :cond_37
    iget v3, v1, mStageEnable:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-lez v3, :cond_3b

    iget v3, v1, mBrightnessLimit:I

    if-lez v3, :cond_3b

    if-ge v2, v3, :cond_3b

    invoke-direct/range {p0 .. p0}, getScreenBrightnessSetting()I

    move-result v3

    iget v4, v1, mBrightnessLimit:I

    if-lt v3, v4, :cond_3b

    iget v3, v1, mIsWalking:I

    if-gtz v3, :cond_3a

    const/4 v3, 0x2

    if-ne v9, v3, :cond_38

    iget v3, v1, mPrevState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_38

    goto :goto_10

    :cond_38
    iget-boolean v3, v1, mIsAngleChangeCauseDarken:Z

    if-nez v3, :cond_39

    iget-wide v3, v1, mAngleChangingTime:J

    const-wide/16 v17, 0x0

    cmp-long v19, v3, v17

    if-lez v19, :cond_3b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    sub-long v3, v3, v19

    const-wide/16 v19, 0x2710

    cmp-long v3, v3, v19

    if-gez v3, :cond_3b

    :cond_39
    const/4 v3, 0x1

    iput-boolean v3, v1, mIsAngleChangeCauseDarken:Z

    iget v2, v1, mBrightnessLimit:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#2 ABL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_3a
    :goto_10
    iget v2, v1, mBrightnessLimit:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#1 ABL:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisplayPowerController"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    :goto_11
    iget-wide v3, v1, mAngleChangingTime:J

    const-wide/16 v17, 0x0

    cmp-long v3, v3, v17

    if-lez v3, :cond_3c

    iget v3, v1, mBrightnessLimit:I

    if-le v2, v3, :cond_3c

    const-wide/16 v3, -0x1

    iput-wide v3, v1, mAngleChangingTime:J

    const/4 v3, 0x0

    iput-boolean v3, v1, mIsAngleChangeCauseDarken:Z

    :cond_3c
    iget-object v3, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v3, :cond_3d

    iget-boolean v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mHBM_State:Z

    if-nez v3, :cond_3d

    invoke-direct {v1, v2}, putScreenBrightnessSetting(I)V

    :cond_3d
    const/4 v3, 0x1

    iput-boolean v3, v1, mAppliedAutoBrightness:Z

    iget-object v3, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    move v4, v2

    goto :goto_12

    :cond_3e
    const/4 v2, 0x0

    iput-boolean v2, v1, mAppliedAutoBrightness:Z

    :goto_12
    cmpl-float v2, v14, v8

    if-eqz v2, :cond_3f

    invoke-direct {v1, v8}, putAutoBrightnessAdjustmentSetting(F)V

    move/from16 v3, v27

    goto :goto_13

    :cond_3f
    const/4 v3, 0x0

    :goto_13
    goto :goto_14

    :cond_40
    const/4 v2, 0x0

    iput-boolean v2, v1, mAppliedAutoBrightness:Z

    const/4 v3, 0x0

    :goto_14
    if-gez v4, :cond_41

    iget v2, v1, mCurrentScreenBrightnessSetting:I

    invoke-direct {v1, v2}, clampScreenBrightness(I)I

    move-result v4

    iget-object v2, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->setReason(I)V

    :cond_41
    iget-object v2, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v2, v2, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_48

    iget v2, v1, mScreenBrightnessRangeMinimum:I

    if-le v4, v2, :cond_42

    add-int/lit8 v2, v4, -0xa

    iget v8, v1, mScreenBrightnessDimConfig:I

    invoke-static {v2, v8}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget v8, v1, mScreenBrightnessRangeMinimum:I

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v2, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    const/4 v8, 0x1

    invoke-virtual {v2, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    :cond_42
    iget-boolean v2, v1, mAppliedDimming:Z

    if-nez v2, :cond_43

    const/4 v7, 0x0

    :cond_43
    const/4 v2, 0x1

    iput-boolean v2, v1, mAppliedDimming:Z

    new-array v8, v2, [I

    const/16 v17, 0x50

    const/16 v18, 0x0

    aput v17, v8, v18

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_44

    iget-object v8, v1, mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    move/from16 v17, v4

    const-string v4, "fp_screen_time_out"

    invoke-static {v8, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_15

    :cond_44
    move/from16 v17, v4

    :goto_15
    sget-boolean v2, IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v2, :cond_47

    sget-boolean v2, DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_45

    const-string v2, "DisplayPowerController"

    const-string v4, "[DimScreen] Screen is dimming"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_45
    iget-object v2, v1, mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v2

    if-nez v2, :cond_47

    sget-boolean v2, DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_46

    const-string v2, "DisplayPowerController"

    const-string v4, "[DimScreen] set dimming content provider for monitoring."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_46
    iget-object v2, v1, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "device_is_dimming"

    const/4 v8, 0x1

    invoke-static {v2, v4, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_47
    move/from16 v2, v17

    goto :goto_17

    :cond_48
    iget-boolean v2, v1, mAppliedDimming:Z

    if-eqz v2, :cond_4c

    const/4 v7, 0x0

    const/4 v2, 0x0

    iput-boolean v2, v1, mAppliedDimming:Z

    move/from16 v18, v4

    const/4 v8, 0x1

    new-array v4, v8, [I

    const/16 v8, 0x50

    aput v8, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_49

    iget-object v4, v1, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "fp_screen_time_out"

    invoke-static {v4, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_49
    sget-boolean v2, IS_SUPPORT_DIM_MODE_GESTURE:Z

    if-eqz v2, :cond_4b

    sget-boolean v2, DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_4a

    const-string v2, "DisplayPowerController"

    const-string v4, "[DimScreen] Screen is not dimming -> reset"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4a
    iget-object v2, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/16 v4, 0x57

    invoke-virtual {v2, v4, v1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v4, v1, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    move/from16 v17, v7

    const-wide/16 v7, 0xa

    invoke-virtual {v4, v2, v7, v8}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_16

    :cond_4b
    move/from16 v17, v7

    :goto_16
    move/from16 v7, v17

    move/from16 v2, v18

    goto :goto_17

    :cond_4c
    move/from16 v18, v4

    move/from16 v2, v18

    :goto_17
    iget-object v4, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v4, :cond_4f

    iget v4, v1, mScreenBrightnessRangeMinimum:I

    if-le v2, v4, :cond_4d

    iget-object v4, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v4, v4, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenLowPowerBrightnessFactor:F

    invoke-static {v4, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    int-to-float v8, v2

    mul-float/2addr v8, v4

    float-to-int v8, v8

    move/from16 v18, v2

    iget v2, v1, mScreenBrightnessRangeMinimum:I

    invoke-static {v8, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v18, v2

    iget-object v2, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    move/from16 v19, v4

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->addModifier(I)V

    move/from16 v2, v18

    goto :goto_18

    :cond_4d
    move/from16 v18, v2

    :goto_18
    iget-boolean v4, v1, mAppliedLowPower:Z

    if-nez v4, :cond_4e

    const/4 v7, 0x0

    :cond_4e
    const/4 v4, 0x1

    iput-boolean v4, v1, mAppliedLowPower:Z

    goto :goto_19

    :cond_4f
    move/from16 v18, v2

    iget-boolean v2, v1, mAppliedLowPower:Z

    if-eqz v2, :cond_50

    const/4 v7, 0x0

    const/4 v2, 0x0

    iput-boolean v2, v1, mAppliedLowPower:Z

    move/from16 v2, v18

    goto :goto_19

    :cond_50
    move/from16 v2, v18

    :goto_19
    iget-boolean v4, v1, mPendingScreenOff:Z

    if-nez v4, :cond_6b

    iget-boolean v4, v1, mSkipScreenOnBrightnessRamp:Z

    if-eqz v4, :cond_55

    const/4 v4, 0x2

    if-ne v9, v4, :cond_54

    iget v4, v1, mSkipRampState:I

    if-nez v4, :cond_51

    iget-boolean v4, v1, mDozing:Z

    if-eqz v4, :cond_51

    iput v2, v1, mInitialAutoBrightness:I

    const/4 v4, 0x1

    iput v4, v1, mSkipRampState:I

    goto :goto_1a

    :cond_51
    const/4 v4, 0x1

    iget v8, v1, mSkipRampState:I

    if-ne v8, v4, :cond_52

    iget-boolean v4, v1, mUseSoftwareAutoBrightnessConfig:Z

    if-eqz v4, :cond_52

    iget v4, v1, mInitialAutoBrightness:I

    if-eq v2, v4, :cond_52

    const/4 v4, 0x2

    iput v4, v1, mSkipRampState:I

    goto :goto_1a

    :cond_52
    const/4 v4, 0x2

    iget v8, v1, mSkipRampState:I

    if-ne v8, v4, :cond_53

    const/4 v4, 0x0

    iput v4, v1, mSkipRampState:I

    goto :goto_1a

    :cond_53
    const/4 v4, 0x0

    goto :goto_1a

    :cond_54
    const/4 v4, 0x0

    iput v4, v1, mSkipRampState:I

    :cond_55
    :goto_1a
    const/4 v4, 0x5

    if-eq v9, v4, :cond_57

    if-ne v12, v4, :cond_56

    goto :goto_1b

    :cond_56
    const/4 v4, 0x0

    goto :goto_1c

    :cond_57
    :goto_1b
    const/4 v4, 0x1

    :goto_1c
    const/4 v8, 0x2

    if-ne v9, v8, :cond_58

    iget v8, v1, mSkipRampState:I

    if-eqz v8, :cond_58

    const/4 v8, 0x1

    goto :goto_1d

    :cond_58
    const/4 v8, 0x0

    :goto_1d
    nop

    invoke-static {v9}, Landroid/view/Display;->isDozeState(I)Z

    move-result v16

    if-eqz v16, :cond_59

    move/from16 v16, v10

    iget-boolean v10, v1, mBrightnessBucketsInDozeConfig:Z

    if-eqz v10, :cond_5a

    const/4 v10, 0x1

    goto :goto_1e

    :cond_59
    move/from16 v16, v10

    :cond_5a
    const/4 v10, 0x0

    :goto_1e
    move/from16 v18, v12

    iget-boolean v12, v1, mColorFadeEnabled:Z

    if-eqz v12, :cond_5b

    iget-object v12, v1, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayPowerState;->getColorFadeLevel()F

    move-result v12

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v17

    if-nez v12, :cond_5b

    const/4 v12, 0x1

    goto :goto_1f

    :cond_5b
    const/4 v12, 0x0

    :goto_1f
    move/from16 v17, v13

    iget-boolean v13, v1, mAppliedTemporaryBrightness:Z

    if-nez v13, :cond_5d

    iget-boolean v13, v1, mAppliedTemporaryAutoBrightnessAdjustment:Z

    if-eqz v13, :cond_5c

    goto :goto_20

    :cond_5c
    const/4 v13, 0x0

    goto :goto_21

    :cond_5d
    :goto_20
    const/4 v13, 0x1

    :goto_21
    if-nez v8, :cond_64

    if-nez v10, :cond_64

    if-nez v4, :cond_64

    if-eqz v12, :cond_64

    if-eqz v13, :cond_5e

    move/from16 v19, v14

    move/from16 v20, v15

    goto :goto_25

    :cond_5e
    move/from16 v19, v14

    const/4 v14, 0x2

    if-ne v9, v14, :cond_60

    iget v14, v1, mPrevState:I

    move/from16 v20, v15

    const/4 v15, 0x3

    if-ne v14, v15, :cond_61

    iget v14, v1, mStageEnable:I

    const/4 v15, 0x2

    and-int/2addr v14, v15

    if-lez v14, :cond_5f

    iget v14, v1, mIsWalking:I

    if-lez v14, :cond_5f

    iget v14, v1, mBrightnessLimit:I

    if-ge v2, v14, :cond_5f

    iget v2, v1, mBrightnessLimit:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#3 BL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, animateScreenBrightness(II)V

    goto :goto_22

    :cond_60
    move/from16 v20, v15

    :cond_61
    :goto_22
    if-eqz v7, :cond_62

    iget-object v14, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/4 v15, 0x1

    iput-boolean v15, v14, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    goto :goto_23

    :cond_62
    iget-object v14, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    const/4 v15, 0x0

    iput-boolean v15, v14, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    :goto_23
    nop

    if-eqz v7, :cond_63

    const/4 v14, -0x1

    goto :goto_24

    :cond_63
    iget v14, v1, mBrightnessRampRateFast:I

    :goto_24
    invoke-direct {v1, v2, v14}, animateScreenBrightness(II)V

    goto/16 :goto_26

    :cond_64
    move/from16 v19, v14

    move/from16 v20, v15

    :goto_25
    sget-boolean v14, DEBUG:Z

    if-eqz v14, :cond_65

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "initialRampSkip: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", hasBrightnessBuckets:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", wasOrWillBeInVr: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", isDisplayContentVisible: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v15, ", brightnessIsTemporary:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_65
    const/4 v14, 0x3

    if-ne v9, v14, :cond_66

    iget v15, v1, mPrevState:I

    const/4 v14, 0x1

    if-ne v15, v14, :cond_66

    mul-int/lit8 v14, v2, 0xa

    const/4 v15, 0x3

    div-int/2addr v14, v15

    invoke-direct {v1, v2, v14}, animateScreenBrightness(II)V

    goto :goto_26

    :cond_66
    const/4 v14, 0x2

    if-ne v9, v14, :cond_67

    iget v15, v1, mStageEnable:I

    and-int/2addr v15, v14

    if-lez v15, :cond_67

    iget v14, v1, mIsWalking:I

    if-lez v14, :cond_67

    iget v14, v1, mBrightnessLimit:I

    if-ge v2, v14, :cond_67

    iget v2, v1, mBrightnessLimit:I

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "#2 BL:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "DisplayPowerController"

    invoke-static {v15, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    const/4 v14, 0x0

    invoke-direct {v1, v2, v14}, animateScreenBrightness(II)V

    :goto_26
    iput v9, v1, mPrevState:I

    if-nez v13, :cond_6a

    if-eqz v0, :cond_69

    iget-object v14, v1, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v14, :cond_68

    invoke-virtual {v14}, Lcom/android/server/display/AutomaticBrightnessController;->hasValidAmbientLux()Z

    move-result v14

    if-nez v14, :cond_69

    :cond_68
    const/4 v0, 0x0

    :cond_69
    invoke-direct {v1, v2, v0, v11}, notifyBrightnessChanged(IZZ)V

    move v4, v0

    goto :goto_27

    :cond_6a
    move v4, v0

    goto :goto_27

    :cond_6b
    move/from16 v16, v10

    move/from16 v18, v12

    move/from16 v17, v13

    move/from16 v19, v14

    move/from16 v20, v15

    move v4, v0

    :goto_27
    iget-object v0, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v8, v1, mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6c

    if-eqz v3, :cond_6d

    :cond_6c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Brightness ["

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] reason changing to: \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v8, v3}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\', previous reason: \'"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "\'."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "DisplayPowerController"

    invoke-static {v8, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, mBrightnessReason:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    iget-object v8, v1, mBrightnessReasonTemp:Lcom/android/server/display/DisplayPowerController$BrightnessReason;

    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerController$BrightnessReason;->set(Lcom/android/server/display/DisplayPowerController$BrightnessReason;)V

    :cond_6d
    iget-object v0, v1, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_6f

    const/4 v0, 0x2

    if-ne v9, v0, :cond_6e

    iget-object v0, v1, mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_6e

    iget-object v0, v1, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    iget-object v0, v1, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    invoke-virtual {v0}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->updateDisplayColorTemperature()V

    goto :goto_28

    :cond_6e
    iget-object v0, v1, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setEnabled(Z)Z

    :cond_6f
    :goto_28
    iget-object v0, v1, mPendingScreenOnUnblocker:Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    if-nez v0, :cond_71

    iget-boolean v0, v1, mColorFadeEnabled:Z

    if-eqz v0, :cond_70

    iget-object v0, v1, mColorFadeOnAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_71

    iget-object v0, v1, mColorFadeOffAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-nez v0, :cond_71

    :cond_70
    iget-object v0, v1, mPowerState:Lcom/android/server/display/DisplayPowerState;

    iget-object v8, v1, mCleanListener:Ljava/lang/Runnable;

    invoke-virtual {v0, v8}, Lcom/android/server/display/DisplayPowerState;->waitUntilClean(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_71

    const/4 v0, 0x1

    goto :goto_29

    :cond_71
    const/4 v0, 0x0

    :goto_29
    move v8, v0

    if-eqz v8, :cond_72

    iget-object v0, v1, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_72

    const/4 v0, 0x1

    goto :goto_2a

    :cond_72
    const/4 v0, 0x0

    :goto_2a
    move v10, v0

    if-eqz v8, :cond_73

    const/4 v0, 0x1

    if-eq v9, v0, :cond_73

    iget v12, v1, mReportedScreenStateToPolicy:I

    if-ne v12, v0, :cond_73

    const/4 v0, 0x2

    invoke-direct {v1, v0}, setReportedScreenState(I)V

    iget-object v0, v1, mWindowManagerPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->screenTurnedOn()V

    :cond_73
    if-nez v10, :cond_75

    iget-boolean v0, v1, mUnfinishedBusiness:Z

    if-nez v0, :cond_75

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_74

    const-string v0, "DisplayPowerController"

    const-string v12, "Unfinished business..."

    invoke-static {v0, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_74
    iget-object v0, v1, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v0}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->acquireSuspendBlocker()V

    const/4 v0, 0x1

    iput-boolean v0, v1, mUnfinishedBusiness:Z

    :cond_75
    if-eqz v8, :cond_78

    if-eqz v6, :cond_78

    iget-object v12, v1, mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_2
    iget-boolean v0, v1, mPendingRequestChangedLocked:Z

    if-nez v0, :cond_76

    const/4 v0, 0x1

    iput-boolean v0, v1, mDisplayReadyLocked:Z

    sget-boolean v13, DEBUG:Z

    if-eqz v13, :cond_77

    const-string v13, "DisplayPowerController"

    const-string v14, "Display ready!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    :cond_76
    const/4 v0, 0x1

    :cond_77
    :goto_2b
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-direct/range {p0 .. p0}, sendOnStateChangedWithWakelock()V

    goto :goto_2c

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_78
    const/4 v0, 0x1

    :goto_2c
    if-eqz v10, :cond_7a

    iget-boolean v12, v1, mUnfinishedBusiness:Z

    if-eqz v12, :cond_7a

    sget-boolean v12, DEBUG:Z

    if-eqz v12, :cond_79

    const-string v12, "DisplayPowerController"

    const-string v13, "Finished business..."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_79
    const/4 v12, 0x0

    iput-boolean v12, v1, mUnfinishedBusiness:Z

    iget-object v13, v1, mCallbacks:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;

    invoke-interface {v13}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;->releaseSuspendBlocker()V

    goto :goto_2d

    :cond_7a
    const/4 v12, 0x0

    :goto_2d
    const/4 v13, 0x2

    if-eq v9, v13, :cond_7b

    goto :goto_2e

    :cond_7b
    move v0, v12

    :goto_2e
    iput-boolean v0, v1, mDozing:Z

    iget-object v0, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eq v5, v0, :cond_7c

    iget-object v0, v1, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    invoke-direct {v1, v0}, logDisplayPolicyChanged(I)V

    :cond_7c
    return-void

    :catchall_1
    move-exception v0

    move/from16 v26, v2

    goto :goto_2f

    :catchall_2
    move-exception v0

    :goto_2f
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private updateUserSetScreenBrightness()Z
    .locals 4

    iget v0, p0, mPendingScreenBrightnessSetting:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, mCurrentScreenBrightnessSetting:I

    const/4 v3, -0x1

    if-ne v2, v0, :cond_1

    iput v3, p0, mPendingScreenBrightnessSetting:I

    iput v3, p0, mTemporaryScreenBrightness:I

    return v1

    :cond_1
    iput v0, p0, mCurrentScreenBrightnessSetting:I

    iput v0, p0, mLastUserSetScreenBrightness:I

    iput v3, p0, mPendingScreenBrightnessSetting:I

    iput v3, p0, mTemporaryScreenBrightness:I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public alsMotionFlush()V
    .locals 2

    iget v0, p0, mStageEnable:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    iget v0, p0, mBrightnessLimit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, mIsFlushPending:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, mIsAngleChangeCauseDarken:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, getScreenBrightnessSetting()I

    move-result v0

    iget v1, p0, mBrightnessLimit:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, mAlsMotion:Lcom/android/server/display/AlsMotion;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, mIsFlushPending:Z

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AlsMotion;->flush(Landroid/content/Context;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public animateHBMBrightness(IZ)V
    .locals 3

    iget v0, p0, mCurrentScreenBrightnessSetting:I

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->calculateRampRate(II)I

    move-result v0

    if-eqz p2, :cond_0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    invoke-direct {p0, v1}, putScreenBrightnessSetting(I)V

    :cond_0
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating HBM brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    add-int/2addr v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DisplayPowerController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-object v2, p0, mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-static {v1, v2, p1, v0}, Lcom/android/server/display/OpDisplayPowerControllerInjector;->animateHBMScreenBrightness(Lcom/android/server/display/RampAnimator;Lcom/android/internal/app/IBatteryStats;II)V

    invoke-direct {p0, p1}, notifyLevelChangeToBrightnessHelper(I)V

    return-void
.end method

.method public animateScreenBrightness(DIIII)V
    .locals 21

    move-object/from16 v7, p0

    move-wide/from16 v8, p1

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateScreenBrightness: percent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", adjustBrightnessInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBacklightController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    cmpg-double v0, v8, v0

    if-ltz v0, :cond_6

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v8, v0

    if-gtz v0, :cond_6

    if-lez v10, :cond_6

    if-gt v11, v13, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-direct/range {p0 .. p0}, getScreenBrightnessSetting()I

    move-result v14

    const/16 v15, 0x1e

    iget-object v5, v7, mOpBacklightLock:Ljava/lang/Object;

    monitor-enter v5

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v8, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    :try_start_0
    iput v0, v7, mIsOpBacklight:I

    iput v11, v7, mOpMinBrightness:I

    iput v12, v7, mOpMaxBrightness:I

    iput v13, v7, mAdjustBrightnessInterval:I

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iget-wide v2, v7, mPercent:D

    const-wide v16, 0x3fefae147ae147aeL    # 0.99

    cmpg-double v2, v2, v16

    if-gez v2, :cond_2

    iget-wide v2, v7, mPercent:D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    move-wide/from16 v16, v0

    goto :goto_1

    :cond_2
    cmpg-double v2, v8, v16

    if-gez v2, :cond_3

    move-wide/from16 v0, p1

    move-wide/from16 v16, v0

    goto :goto_1

    :cond_3
    move-wide/from16 v16, v0

    :goto_1
    int-to-double v0, v10

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double v18, v0, v2

    move-object/from16 v1, p0

    move-wide/from16 v2, v16

    move v4, v14

    move-object/from16 v20, v5

    move-wide/from16 v5, v18

    :try_start_1
    invoke-direct/range {v1 .. v6}, caculateBrightnessRateLocked(DID)I

    move-result v0

    move v15, v0

    iput-wide v8, v7, mPercent:D

    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget v0, v7, mScreenBrightnessRangeMaximum:I

    const/16 v1, 0xfff

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_5

    :cond_4
    if-le v14, v11, :cond_5

    if-ge v14, v12, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?0."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v7, mIsOpBacklight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " --> :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v7, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightnessOverride:I

    if-gez v0, :cond_5

    iget v0, v7, mTemporaryScreenBrightness:I

    if-gez v0, :cond_5

    iget-object v0, v7, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget-boolean v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    if-nez v0, :cond_5

    iget-object v0, v7, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    iget-object v0, v7, mPowerRequest:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    iget v0, v0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    if-eqz v0, :cond_5

    invoke-direct {v7, v14, v15}, animateScreenBrightness(II)V

    :cond_5
    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v20, v5

    :goto_2
    :try_start_2
    monitor-exit v20
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :cond_6
    :goto_3
    return-void
.end method

.method public callback(ZFFJ)V
    .locals 4

    iget v0, p0, mStageEnable:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget v0, p0, mBrightnessLimit:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isWalking:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " angleDegree:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " maxAngleDegree:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " timestamp:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DisplayPowerController"

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, mIsWalking:I

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_2

    :cond_1
    if-eqz p1, :cond_2

    iput v3, p0, mIsWalking:I

    goto :goto_0

    :cond_2
    iget v0, p0, mIsWalking:I

    if-ne v0, v3, :cond_3

    if-nez p1, :cond_3

    iput v1, p0, mIsWalking:I

    :cond_3
    :goto_0
    iget-boolean v0, p0, mIsFlushPending:Z

    if-eqz v0, :cond_5

    const/high16 v0, 0x42480000    # 50.0f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mAngleChangingTime:J

    :cond_4
    iput-boolean v2, p0, mIsFlushPending:Z

    :cond_5
    return-void

    :cond_6
    :goto_1
    iput v2, p0, mIsWalking:I

    return-void
.end method

.method public debug(II)V
    .locals 0

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v1, "Display Power Controller Locked State:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mDisplayReadyLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mDisplayReadyLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingRequestChangedLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mPendingRequestChangedLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingWaitForNegativeProximityLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mPendingWaitForNegativeProximityLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingUpdatePowerStateLocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mPendingUpdatePowerStateLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Display Power Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessDozeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDimConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessDimConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTempScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mTempScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessForVrRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessForVrRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessForVrDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mScreenBrightnessForVrDefault:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseSoftwareAutoBrightnessConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mUseSoftwareAutoBrightnessConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAllowAutoBrightnessWhileDozingConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mAllowAutoBrightnessWhileDozingConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateFast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mBrightnessRampRateFast:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessRampRateSlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mBrightnessRampRateSlow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSkipScreenOnBrightnessRamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mSkipScreenOnBrightnessRamp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeFadesConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mColorFadeFadesConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorFadeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mColorFadeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayBlanksAfterDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mDisplayBlanksAfterDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessBucketsInDozeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mBrightnessBucketsInDozeConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x7d

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBoostBrightnessNormal="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mBoostBrightnessNormal:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBoostBrightnessHDR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mBoostBrightnessHDR:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mHDRMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mHDRMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mProximityDelayForLightSensor ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mProximityDelayForLightSensor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableAutoBrightnessDuringCall="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mEnableAutoBrightnessDuringCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    iget-boolean v1, v1, Lcom/android/server/display/RampAnimator;->mEnableDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUseCurveGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mUseCurveGenAlgo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessStaticsLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, getBrightnessStaticsLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1}, Lcom/android/server/display/RampAnimator;->dump(Ljava/io/PrintWriter;)V

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    new-instance v1, Lcom/android/server/display/DisplayPowerController$10;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/DisplayPowerController$10;-><init>(Lcom/android/server/display/DisplayPowerController;Ljava/io/PrintWriter;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->runWithScissors(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/AmbientBrightnessDayStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->getAmbientBrightnessStats(I)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getBrightnessEvents(IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/hardware/display/BrightnessChangeEvent;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/BrightnessTracker;->getEvents(IZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBrightnessConfiguration()Landroid/hardware/display/BrightnessConfiguration;
    .locals 1

    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController;->getDefaultConfig()Landroid/hardware/display/BrightnessConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getStageEnable()I
    .locals 2

    iget v0, p0, mScreenBrightnessRangeMaximum:I

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_0

    iget v0, p0, mStageEnable:I

    return v0

    :cond_0
    const v0, 0xffff

    return v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    iget-object v0, p0, mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onSwitchUser(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, handleSettingsChange(Z)V

    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessTracker;->onSwitchUser(I)V

    return-void
.end method

.method public overrideScreenBrightnessRangeMinimum(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, mForceUpdateBrightness:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, mRecoverFaceLight:Z

    iget v2, p0, mTempScreenBrightnessRangeMinimum:I

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    iget-object v2, p0, mPowerState:Lcom/android/server/display/DisplayPowerState;

    invoke-virtual {v2}, Lcom/android/server/display/DisplayPowerState;->getScreenState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    iget-object v2, p0, mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-boolean v1, p0, mPendingUpdatePowerStateLocked:Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput p1, p0, mTempScreenBrightnessRangeMinimum:I

    iput-boolean v0, p0, mRecoverFaceLight:Z

    invoke-direct {p0}, sendUpdatePowerState()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    :goto_0
    iput p1, p0, mTempScreenBrightnessRangeMinimum:I

    return-void
.end method

.method public persistBrightnessTrackerState()V
    .locals 1

    iget-object v0, p0, mBrightnessTracker:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->persistBrightnessTrackerState()V

    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 5

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "requestPowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", waitForNegativeProximity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    :try_start_0
    iget-boolean v3, p0, mPendingWaitForNegativeProximityLocked:Z

    if-nez v3, :cond_1

    iput-boolean v2, p0, mPendingWaitForNegativeProximityLocked:Z

    const/4 v1, 0x1

    :cond_1
    iget-object v3, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v4, 0x0

    if-nez v3, :cond_2

    new-instance v3, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-direct {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    iput-object v3, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, mForceUpdateBrightness:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    if-eqz v3, :cond_4

    iget-object v3, p0, mPendingRequestLocked:Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    invoke-virtual {v3, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    const/4 v1, 0x1

    iput-boolean v4, p0, mForceUpdateBrightness:Z

    :cond_4
    :goto_0
    if-eqz v1, :cond_5

    iput-boolean v4, p0, mDisplayReadyLocked:Z

    :cond_5
    if-eqz v1, :cond_6

    iget-boolean v3, p0, mPendingRequestChangedLocked:Z

    if-nez v3, :cond_6

    iput-boolean v2, p0, mPendingRequestChangedLocked:Z

    invoke-direct {p0}, sendUpdatePowerStateLocked()V

    :cond_6
    iget-boolean v2, p0, mDisplayReadyLocked:Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setAmbientColorTemperatureOverride(F)V
    .locals 1

    iget-object v0, p0, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setAmbientColorTemperatureOverride(F)Z

    invoke-direct {p0}, sendUpdatePowerState()V

    :cond_0
    return-void
.end method

.method setAutoBrightnessLoggingEnabled(Z)V
    .locals 1

    sput-boolean p1, DEBUG:Z

    iget-object v0, p0, mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->setLoggingEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public setBrightnessConfiguration(Landroid/hardware/display/BrightnessConfiguration;)V
    .locals 2

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDimmingSpeedInternal(I)V
    .locals 4

    const-string v0, "DisplayPowerController"

    :try_start_0
    iget-object v1, p0, mOneplusDisplayService:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v2, 0x20

    invoke-interface {v1, v2, p1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDimmingSpeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set dimming speed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method setDisplayWhiteBalanceLoggingEnabled(Z)V
    .locals 1

    iget-object v0, p0, mDisplayWhiteBalanceController:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceController;->setLoggingEnabled(Z)Z

    iget-object v0, p0, mDisplayWhiteBalanceSettings:Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;

    invoke-virtual {v0, p1}, Lcom/android/server/display/whitebalance/DisplayWhiteBalanceSettings;->setLoggingEnabled(Z)Z

    :cond_0
    return-void
.end method

.method public setProximityEventEnable(Z)V
    .locals 2

    sget-boolean v0, sProximityResFeature:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PsetProximityEventEnable enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-boolean p1, sEnableProximityEvent:Z

    sget-boolean v0, sEnableProximityEvent:Z

    if-eqz v0, :cond_2

    sget-boolean v0, sLastPositive:Z

    invoke-direct {p0, v0}, triggerProximitySensorEvent(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, triggerProximitySensorEvent(Z)V

    :goto_0
    return-void
.end method

.method public setTemporaryAutoBrightnessAdjustment(F)V
    .locals 4

    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setTemporaryBrightness(I)V
    .locals 3

    iget v0, p0, mStageEnable:I

    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_0

    iget v0, p0, mIsWalking:I

    if-lez v0, :cond_0

    iget v0, p0, mBrightnessLimit:I

    if-lez v0, :cond_0

    if-ge p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BL:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " < "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mBrightnessLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayPowerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    iput v0, p0, mBrightnessLimit:I

    :cond_0
    iget-object v0, p0, mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setUseProximityForceSuspend(Z)V
    .locals 1

    iget-boolean v0, p0, useProximityForceSuspend:Z

    if-nez v0, :cond_0

    iput-boolean p1, p0, useProximityForceSuspend:Z

    :cond_0
    return-void
.end method

.method public updateBrightness()V
    .locals 0

    invoke-direct {p0}, sendUpdatePowerState()V

    return-void
.end method

.method public updateWhiteBalance()V
    .locals 0

    invoke-direct {p0}, sendUpdatePowerState()V

    return-void
.end method
