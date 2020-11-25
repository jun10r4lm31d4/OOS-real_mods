.class Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategyModified;
.super Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;
.source "BrightnessMappingStrategy.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PhysicalMappingStrategyModified"
.end annotation


# instance fields
.field private mCurveGen:Lcom/android/server/display/CurveGen;

.field private mEnableCurveGenAlgo:Z

.field private final mHBMLuxToBacklightSpline:Landroid/util/Spline;


# direct methods
.method public constructor <init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF[F[F)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;-><init>(Landroid/hardware/display/BrightnessConfiguration;[F[IF)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mEnableCurveGenAlgo:Z

    invoke-static {p5, p6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, mHBMLuxToBacklightSpline:Landroid/util/Spline;

    const-string v0, "bend drag"

    invoke-static {v0}, Lcom/android/server/display/CurveGen;->create(Ljava/lang/String;)Lcom/android/server/display/CurveGen;

    move-result-object v0

    iput-object v0, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    :try_start_0
    iget-object v0, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    iget-object v1, p0, mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v1}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v1

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [F

    iget-object v2, p0, mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v2}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v2

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, [F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/CurveGen;->setDefaultCurve([F[F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create PhysicalMappingStrategyModified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private computeSpline()V
    .locals 2

    iget-boolean v0, p0, mEnableCurveGenAlgo:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v0}, Lcom/android/server/display/CurveGen;->getLuxArray()[F

    move-result-object v0

    iget-object v1, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v1}, Lcom/android/server/display/CurveGen;->getNitArray()[F

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    iput-object v0, p0, mBrightnessSpline:Landroid/util/Spline;

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->access$100(Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;)V

    :goto_0
    return-void
.end method

.method private getAdjustedNits(F)F
    .locals 1

    iget-object v0, p0, mBacklightToNitsSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method

.method private getUnadjustedNits(F)F
    .locals 3

    iget-object v0, p0, mConfig:Landroid/hardware/display/BrightnessConfiguration;

    invoke-virtual {v0}, Landroid/hardware/display/BrightnessConfiguration;->getCurve()Landroid/util/Pair;

    move-result-object v0

    iget-object v1, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v1}, Lcom/android/server/display/CurveGen;->getLuxArray()[F

    move-result-object v1

    iget-object v2, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v2}, Lcom/android/server/display/CurveGen;->getNitArray()[F

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method public addUserDataPoint(FF)V
    .locals 3

    iget-boolean v0, p0, mEnableCurveGenAlgo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, getUnadjustedNits(F)F

    move-result v0

    invoke-direct {p0, p2}, getAdjustedNits(F)F

    move-result v1

    iget-object v2, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v2, p1}, Lcom/android/server/display/CurveGen;->onLightChanged(F)V

    iget-object v2, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/display/CurveGen;->onUserOperation(FF)V

    iput p1, p0, mUserLux:F

    iput p2, p0, mUserBrightness:F

    invoke-direct {p0}, computeSpline()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->addUserDataPoint(FF)V

    :goto_0
    return-void
.end method

.method public clearUserDataPoints()V
    .locals 5

    iget v0, p0, mUserLux:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, mLoggingEnabled:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearUserDataPoints: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, mAutoBrightnessAdjustment:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " => 0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BrightnessMappingStrategy"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/display/BrightnessMappingStrategy;->access$000()Lcom/android/server/display/utils/Plog;

    move-result-object v0

    const-string v2, "clear user data points"

    invoke-virtual {v0, v2}, Lcom/android/server/display/utils/Plog;->start(Ljava/lang/String;)Lcom/android/server/display/utils/Plog;

    move-result-object v0

    iget v2, p0, mUserLux:F

    iget v3, p0, mUserBrightness:F

    const-string/jumbo v4, "user data point"

    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/display/utils/Plog;->logPoint(Ljava/lang/String;FF)Lcom/android/server/display/utils/Plog;

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, mAutoBrightnessAdjustment:F

    iput v1, p0, mUserLux:F

    iput v1, p0, mUserBrightness:F

    iget-object v0, p0, mCurveGen:Lcom/android/server/display/CurveGen;

    invoke-virtual {v0}, Lcom/android/server/display/CurveGen;->resetUserOperations()V

    invoke-direct {p0}, computeSpline()V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/display/BrightnessMappingStrategy$PhysicalMappingStrategy;->dump(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableCurveGenAlgo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mEnableCurveGenAlgo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableCurveGenAlgo(Z)V
    .locals 0

    iput-boolean p1, p0, mEnableCurveGenAlgo:Z

    return-void
.end method

.method public getHBMBrightness(FLjava/lang/String;I)F
    .locals 1

    iget-object v0, p0, mHBMLuxToBacklightSpline:Landroid/util/Spline;

    invoke-virtual {v0, p1}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    return v0
.end method
