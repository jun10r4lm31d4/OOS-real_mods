.class public Lcom/android/server/display/OpDisplayPowerControllerInjector;
.super Ljava/lang/Object;
.source "OpDisplayPowerControllerInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;

.field private static sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

.field private static sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

.field private static sProximityResFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    const-class v0, Lcom/android/server/display/OpDisplayPowerControllerInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x141

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, sProximityResFeature:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateHBMScreenBrightness(Lcom/android/server/display/RampAnimator;Lcom/android/internal/app/IBatteryStats;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/display/RampAnimator<",
            "Lcom/android/server/display/DisplayPowerState;",
            ">;",
            "Lcom/android/internal/app/IBatteryStats;",
            "II)V"
        }
    .end annotation

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Animating HBM brightness: target="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", rate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    add-int/2addr v0, p2

    invoke-virtual {p0, v0, p3}, Lcom/android/server/display/RampAnimator;->animateTo(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const-wide/32 v1, 0x20000

    const-string v3, "TargetScreenBrightness"

    invoke-static {v1, v2, v3, v0}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    :try_start_0
    invoke-interface {p1, v0}, Lcom/android/internal/app/IBatteryStats;->noteScreenBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_1
    :goto_0
    return-void
.end method

.method public static calculateRampRate(II)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    sub-int v2, p1, p0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v2, v1

    const v3, -0x468dc769    # -2.31E-4f

    mul-float/2addr v2, v3

    int-to-float v3, v1

    mul-float/2addr v2, v3

    int-to-float v3, v1

    const v4, 0x3f119147

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x426db9f7

    add-float/2addr v2, v3

    float-to-int v0, v2

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_0

    const/16 v0, 0x1e

    :cond_0
    return v0
.end method

.method public static hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V
    .locals 2

    sget-object v0, sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_displaypowercontroller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/IOpDisplayPowerController;

    sput-object v0, sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    :cond_0
    sget-object v0, sIOpDisplayPowerController:Lcom/android/server/display/IOpDisplayPowerController;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/android/server/display/IOpDisplayPowerController;->hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V

    :cond_1
    sget-boolean v0, sProximityResFeature:Z

    if-eqz v0, :cond_3

    sget-object v0, sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_proximity_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/IOpProximityDisplayPowerController;

    sput-object v0, sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

    :cond_2
    sget-object v0, sIOpProximityController:Lcom/android/server/display/IOpProximityDisplayPowerController;

    if-eqz v0, :cond_3

    move-object v1, p0

    check-cast v1, Lcom/android/server/display/IOpProximityController;

    invoke-interface {v0, v1}, Lcom/android/server/display/IOpProximityDisplayPowerController;->hookDisplayPowerController(Lcom/android/server/display/IOpProximityController;)V

    :cond_3
    return-void
.end method
