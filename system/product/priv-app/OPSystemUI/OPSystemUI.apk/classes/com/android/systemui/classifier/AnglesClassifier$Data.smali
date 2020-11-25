.class Lcom/android/systemui/classifier/AnglesClassifier$Data;
.super Ljava/lang/Object;
.source "AnglesClassifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/AnglesClassifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Data"
.end annotation


# instance fields
.field private final ANGLE_DEVIATION:F

.field private mAnglesCount:F

.field private mBiggestAngle:F

.field private mCount:F

.field private mFirstAngleVariance:F

.field private mFirstLength:F

.field private mLastThreePoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/classifier/Point;",
            ">;"
        }
    .end annotation
.end field

.field private mLeftAngles:F

.field private mLength:F

.field private mPreviousAngle:F

.field private mRightAngles:F

.field private mSecondCount:F

.field private mSecondSum:F

.field private mSecondSumSquares:F

.field private mStraightAngles:F

.field private mSum:F

.field private mSumSquares:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e20d97c

    iput v0, p0, ANGLE_DEVIATION:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, mFirstAngleVariance:F

    const v1, 0x40490fdb    # (float)Math.PI

    iput v1, p0, mPreviousAngle:F

    iput v0, p0, mBiggestAngle:F

    iput v0, p0, mSecondSumSquares:F

    iput v0, p0, mSumSquares:F

    iput v0, p0, mSecondSum:F

    iput v0, p0, mSum:F

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, mSecondCount:F

    iput v1, p0, mCount:F

    iput v0, p0, mFirstLength:F

    iput v0, p0, mLength:F

    iput v0, p0, mStraightAngles:F

    iput v0, p0, mRightAngles:F

    iput v0, p0, mLeftAngles:F

    iput v0, p0, mAnglesCount:F

    return-void
.end method


# virtual methods
.method public addPoint(Lcom/android/systemui/classifier/Point;)V
    .locals 7

    iget-object v0, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/Point;->equals(Lcom/android/systemui/classifier/Point;)Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, mLength:F

    iget-object v2, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/classifier/Point;

    invoke-virtual {v2, p1}, Lcom/android/systemui/classifier/Point;->dist(Lcom/android/systemui/classifier/Point;)F

    move-result v2

    add-float/2addr v0, v2

    iput v0, p0, mLength:F

    :cond_1
    iget-object v0, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object p1, p0, mLastThreePoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, mLastThreePoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/classifier/Point;

    iget-object v1, p0, mLastThreePoints:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/classifier/Point;

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/classifier/Point;->getAngle(Lcom/android/systemui/classifier/Point;Lcom/android/systemui/classifier/Point;)F

    move-result p1

    iget v0, p0, mAnglesCount:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iput v0, p0, mAnglesCount:F

    float-to-double v2, p1

    const-wide v4, 0x4007e0485c442d18L    # 2.9845130165391645

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2

    iget v0, p0, mLeftAngles:F

    add-float/2addr v0, v1

    iput v0, p0, mLeftAngles:F

    goto :goto_0

    :cond_2
    const-wide v4, 0x400a63ae4c442d18L    # 3.298672290640422

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_3

    iget v0, p0, mStraightAngles:F

    add-float/2addr v0, v1

    iput v0, p0, mStraightAngles:F

    goto :goto_0

    :cond_3
    iget v0, p0, mRightAngles:F

    add-float/2addr v0, v1

    iput v0, p0, mRightAngles:F

    :goto_0
    iget v0, p0, mPreviousAngle:F

    sub-float v0, p1, v0

    iget v2, p0, mBiggestAngle:F

    cmpg-float v2, v2, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-gez v2, :cond_4

    iput p1, p0, mBiggestAngle:F

    iget v2, p0, mLength:F

    iput v2, p0, mFirstLength:F

    iget v2, p0, mSumSquares:F

    iget v5, p0, mSum:F

    iget v6, p0, mCount:F

    invoke-virtual {p0, v2, v5, v6}, getAnglesVariance(FFF)F

    move-result v2

    iput v2, p0, mFirstAngleVariance:F

    const/4 v2, 0x0

    iput v2, p0, mSecondSumSquares:F

    iput v2, p0, mSecondSum:F

    iput v1, p0, mSecondCount:F

    goto :goto_1

    :cond_4
    iget v1, p0, mSecondSum:F

    add-float/2addr v1, v0

    iput v1, p0, mSecondSum:F

    iget v1, p0, mSecondSumSquares:F

    mul-float v2, v0, v0

    add-float/2addr v1, v2

    iput v1, p0, mSecondSumSquares:F

    iget v1, p0, mSecondCount:F

    float-to-double v1, v1

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, p0, mSecondCount:F

    :goto_1
    iget v1, p0, mSum:F

    add-float/2addr v1, v0

    iput v1, p0, mSum:F

    iget v1, p0, mSumSquares:F

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    iput v1, p0, mSumSquares:F

    iget v0, p0, mCount:F

    float-to-double v0, v0

    add-double/2addr v0, v3

    double-to-float v0, v0

    iput v0, p0, mCount:F

    iput p1, p0, mPreviousAngle:F

    :cond_5
    return-void
.end method

.method public getAnglesPercentage()F
    .locals 4

    iget v0, p0, mAnglesCount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    sget-boolean p0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getAnglesPercentage: count==0, result=1"

    invoke-static {p0, v0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_1
    iget v0, p0, mLeftAngles:F

    iget v1, p0, mRightAngles:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget v1, p0, mStraightAngles:F

    add-float/2addr v0, v1

    iget v1, p0, mAnglesCount:F

    div-float/2addr v0, v1

    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesPercentage: left="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mLeftAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " right="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mRightAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " straight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mStraightAngles:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, mAnglesCount:F

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, " result="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method public getAnglesVariance()F
    .locals 5

    iget v0, p0, mSumSquares:F

    iget v1, p0, mSum:F

    iget v2, p0, mCount:F

    invoke-virtual {p0, v0, v1, v2}, getAnglesVariance(FFF)F

    move-result v0

    sget-boolean v1, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAnglesVariance: (first pass) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - mFirstLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mFirstLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   - mLength="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mLength:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget v1, p0, mFirstLength:F

    iget v2, p0, mLength:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget v1, p0, mFirstAngleVariance:F

    iget v2, p0, mSecondSumSquares:F

    iget v3, p0, mSecondSum:F

    iget v4, p0, mSecondCount:F

    invoke-virtual {p0, v2, v3, v4}, getAnglesVariance(FFF)F

    move-result p0

    add-float/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sget-boolean p0, Lcom/android/systemui/classifier/AnglesClassifier;->VERBOSE:Z

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/android/systemui/classifier/AnglesClassifier;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnglesVariance: (second pass) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/systemui/classifier/FalsingLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method public getAnglesVariance(FFF)F
    .locals 0

    div-float/2addr p1, p3

    div-float/2addr p2, p3

    mul-float/2addr p2, p2

    sub-float/2addr p1, p2

    return p1
.end method
