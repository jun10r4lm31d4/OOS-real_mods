.class public Lcom/android/server/display/CurveGen;
.super Ljava/lang/Object;
.source "CurveGen.java"


# static fields
.field private static final ENABLE_ZERO_POINT_ADJUSTMENT:Z = true

.field private static final SIMILAR_LUX_RATIO:F = 0.1f


# instance fields
.field private mAlsLux:F

.field private mDefaultPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mIsUserOperated:Z

.field private mOperatePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;"
        }
    .end annotation
.end field

.field private mOutlierFilter:Lcom/android/server/display/OutlierPointFilter;

.field private mOutputLuxArray:[F

.field private mOutputNitArray:[F

.field private updated:Z


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mDefaultPoints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOperatePoints:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, mOutlierFilter:Lcom/android/server/display/OutlierPointFilter;

    const/4 v1, 0x0

    iput-boolean v1, p0, mIsUserOperated:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, mAlsLux:F

    iput-object v0, p0, mOutputLuxArray:[F

    iput-object v0, p0, mOutputNitArray:[F

    const/4 v0, 0x1

    iput-boolean v0, p0, updated:Z

    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/android/server/display/CurveGen;
    .locals 1

    new-instance v0, Lcom/android/server/display/CurveGen;

    invoke-direct {v0}, <init>()V

    return-object v0
.end method

.method private dragLocal(Ljava/util/ArrayList;Lcom/android/server/display/LuxNitPoint;Z)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;",
            "Lcom/android/server/display/LuxNitPoint;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;"
        }
    .end annotation

    iget v0, p2, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-direct {p0, p1, v0}, findRightIndexByLux(Ljava/util/ArrayList;F)I

    move-result v0

    iget v1, p2, Lcom/android/server/display/LuxNitPoint;->nit:F

    invoke-direct {p0, p1, v1}, findRightIndexByNit(Ljava/util/ArrayList;F)I

    move-result v1

    if-le v0, v1, :cond_0

    move v2, v0

    add-int/lit8 v0, v1, -0x1

    move v1, v2

    goto :goto_0

    :cond_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget v2, p2, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LuxNitPoint;

    iget v3, v3, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_3

    return-object p1

    :cond_3
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LuxNitPoint;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v0, :cond_4

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LuxNitPoint;

    iget v6, v6, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v7, p2, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpg-float v6, v6, v7

    if-gez v6, :cond_6

    if-nez p3, :cond_5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LuxNitPoint;

    iget v6, v6, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {v2, p2, v6}, linearInterpolate(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;F)Lcom/android/server/display/LuxNitPoint;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LuxNitPoint;

    iget v6, v6, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v7, p2, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {v6, v7}, isSimilarLux(FF)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-eq v5, v6, :cond_7

    add-int/lit8 v5, v5, 0x1

    :cond_7
    :goto_3
    if-gt v5, v1, :cond_9

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v5, v6, :cond_9

    if-nez p3, :cond_8

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LuxNitPoint;

    iget v6, v6, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {p2, v3, v6}, linearInterpolate(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;F)Lcom/android/server/display/LuxNitPoint;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_a
    if-eqz p3, :cond_b

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    add-int/lit8 v7, v5, 0x1

    invoke-static {v4, p2, v6, v7}, smooth(Ljava/util/ArrayList;Lcom/android/server/display/LuxNitPoint;II)V

    goto :goto_5

    :cond_b
    iget v5, p2, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-direct {p0, v4, v5}, findRightIndexByLux(Ljava/util/ArrayList;F)I

    move-result v5

    add-int/lit8 v6, v5, -0x1

    invoke-static {v4, p2, v6, v5}, smooth(Ljava/util/ArrayList;Lcom/android/server/display/LuxNitPoint;II)V

    :goto_5
    return-object v4
.end method

.method private findRightIndexByLux(Ljava/util/ArrayList;F)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {v1, p2}, isSimilarLux(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v0, 0x1

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpg-float v1, v1, p2

    if-gez v1, :cond_3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_3

    return v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private findRightIndexByNit(Ljava/util/ArrayList;F)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;F)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v1, v1, p2

    if-gez v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    iget v1, v1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private generate(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, mDefaultPoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {v2}, Lcom/android/server/display/LuxNitPoint;->copy()Lcom/android/server/display/LuxNitPoint;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    iget-boolean v3, p0, mIsUserOperated:Z

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-direct {p0, v0, v2, v4}, dragLocal(Ljava/util/ArrayList;Lcom/android/server/display/LuxNitPoint;Z)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_3

    :cond_2
    :goto_2
    iget-object v3, p0, mOutlierFilter:Lcom/android/server/display/OutlierPointFilter;

    invoke-virtual {v3, v2}, Lcom/android/server/display/OutlierPointFilter;->filter(Lcom/android/server/display/LuxNitPoint;)Lcom/android/server/display/LuxNitPoint;

    move-result-object v2

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3}, dragLocal(Ljava/util/ArrayList;Lcom/android/server/display/LuxNitPoint;Z)Ljava/util/ArrayList;

    move-result-object v0

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private static isSimilarLux(FF)Z
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p0, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    sub-float v0, p1, p0

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method private static linearInterpolate(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;F)Lcom/android/server/display/LuxNitPoint;
    .locals 2

    new-instance v0, Lcom/android/server/display/LuxNitPoint;

    invoke-static {p0, p1, p2}, linearInterpolateNit(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;F)F

    move-result v1

    invoke-direct {v0, p2, v1}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    return-object v0
.end method

.method private static linearInterpolateNit(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;F)F
    .locals 5

    iget v0, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    sub-float v0, p2, v0

    iget v1, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v2, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    sub-float/2addr v1, v2

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v3, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    return v2

    :cond_0
    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v3, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    mul-float v4, v2, v0

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    return v3
.end method

.method private removeUselessOperations(Lcom/android/server/display/LuxNitPoint;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LuxNitPoint;

    iget v3, v2, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {v3, v4}, isSimilarLux(FF)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v3, v2, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpl-float v3, v3, v4

    if-gez v3, :cond_1

    :cond_0
    iget v3, v2, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    iget v3, v2, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    goto :goto_0

    :cond_3
    iget-object v1, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :goto_1
    iget-object v1, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, mDefaultPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v1, v2, :cond_4

    iget-object v1, p0, mOperatePoints:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-void
.end method

.method private static slope(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;)F
    .locals 4

    iget v0, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v1, p0, Lcom/android/server/display/LuxNitPoint;->lux:F

    sub-float/2addr v0, v1

    const/high16 v1, -0x40800000    # -1.0f

    cmpg-float v2, v1, v0

    if-gez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v2

    if-gez v3, :cond_1

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_0

    move v1, v2

    :cond_0
    move v0, v1

    :cond_1
    iget v1, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v2, p0, Lcom/android/server/display/LuxNitPoint;->nit:F

    sub-float/2addr v1, v2

    div-float/2addr v1, v0

    return v1
.end method

.method private static smooth(Ljava/util/ArrayList;Lcom/android/server/display/LuxNitPoint;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/LuxNitPoint;",
            ">;",
            "Lcom/android/server/display/LuxNitPoint;",
            "II)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LuxNitPoint;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LuxNitPoint;

    invoke-static {v2, v0}, slope(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;)F

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LuxNitPoint;

    invoke-static {v1, p1}, slope(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;)F

    move-result v1

    cmpl-float v1, v2, v1

    const/high16 v2, 0x3e800000    # 0.25f

    if-lez v1, :cond_1

    move v1, p3

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LuxNitPoint;

    iget v4, v4, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {p1, v0, v4}, linearInterpolateNit(Lcom/android/server/display/LuxNitPoint;Lcom/android/server/display/LuxNitPoint;F)F

    move-result v4

    iput v4, v3, Lcom/android/server/display/LuxNitPoint;->nit:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    move-object v1, p1

    move v3, p3

    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LuxNitPoint;

    iget v5, v1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v6, v4, Lcom/android/server/display/LuxNitPoint;->lux:F

    add-float/2addr v6, v2

    iget v7, v1, Lcom/android/server/display/LuxNitPoint;->lux:F

    add-float/2addr v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v6, v6, v5

    if-gtz v6, :cond_2

    goto :goto_2

    :cond_2
    iput v5, v4, Lcom/android/server/display/LuxNitPoint;->nit:F

    move-object v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    move-object v1, p1

    move v3, p2

    :goto_3
    if-ltz v3, :cond_5

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LuxNitPoint;

    iget v5, v1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v6, v4, Lcom/android/server/display/LuxNitPoint;->lux:F

    add-float/2addr v6, v2

    iget v7, v1, Lcom/android/server/display/LuxNitPoint;->lux:F

    add-float/2addr v7, v2

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    iget v6, v4, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpl-float v6, v6, v5

    if-ltz v6, :cond_4

    goto :goto_4

    :cond_4
    iput v5, v4, Lcom/android/server/display/LuxNitPoint;->nit:F

    move-object v1, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method private updateIfNeeded()V
    .locals 8

    iget-boolean v0, p0, updated:Z

    if-nez v0, :cond_8

    iget-object v0, p0, mDefaultPoints:Ljava/util/ArrayList;

    iget-object v1, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1}, generate(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/LuxNitPoint;

    iget v6, v3, Lcom/android/server/display/LuxNitPoint;->lux:F

    iget v7, v5, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_0

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_0
    iget v6, v3, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget v7, v5, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    :cond_1
    :goto_1
    add-int/2addr v2, v4

    goto :goto_0

    :cond_2
    iget-object v2, p0, mOutputLuxArray:[F

    if-eqz v2, :cond_3

    array-length v2, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_4

    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p0, mOutputLuxArray:[F

    :cond_4
    iget-object v2, p0, mOutputNitArray:[F

    if-eqz v2, :cond_5

    array-length v2, v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eq v2, v3, :cond_6

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [F

    iput-object v2, p0, mOutputNitArray:[F

    :cond_6
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LuxNitPoint;

    iget-object v5, p0, mOutputLuxArray:[F

    iget v6, v3, Lcom/android/server/display/LuxNitPoint;->lux:F

    aput v6, v5, v2

    iget-object v5, p0, mOutputNitArray:[F

    iget v6, v3, Lcom/android/server/display/LuxNitPoint;->nit:F

    aput v6, v5, v2

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v6, v3, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v4

    const/4 v6, 0x2

    iget v7, v3, Lcom/android/server/display/LuxNitPoint;->nit:F

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v6

    const-string v6, "Generated point[%d]: (%.2f, %.2f)"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "CurveGen"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    iput-boolean v4, p0, updated:Z

    :cond_8
    return-void
.end method


# virtual methods
.method public fromJson(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "OperatePoints"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v3, v0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/android/server/display/LuxNitPoint;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v5}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/display/LuxNitPoint;->fromJsonObject(Lorg/json/JSONObject;)Z

    move-result v5

    if-nez v5, :cond_0

    return v0

    :cond_0
    iget-object v5, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, mIsUserOperated:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    return v0
.end method

.method public getLuxArray()[F
    .locals 1

    invoke-direct {p0}, updateIfNeeded()V

    iget-object v0, p0, mOutputLuxArray:[F

    return-object v0
.end method

.method public getNitArray()[F
    .locals 1

    invoke-direct {p0}, updateIfNeeded()V

    iget-object v0, p0, mOutputNitArray:[F

    return-object v0
.end method

.method public onLightChanged(F)V
    .locals 0

    iput p1, p0, mAlsLux:F

    return-void
.end method

.method public onUserOperation(FF)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, mAlsLux:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "Insert point: (%.2f, %.2f)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CurveGen"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, mDefaultPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LuxNitPoint;

    iget v4, p0, mAlsLux:F

    const/4 v5, 0x0

    cmpg-float v6, v4, v5

    if-ltz v6, :cond_3

    iget v6, v0, Lcom/android/server/display/LuxNitPoint;->lux:F

    cmpl-float v4, v4, v6

    if-ltz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v0, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    iget p2, v0, Lcom/android/server/display/LuxNitPoint;->nit:F

    goto :goto_0

    :cond_1
    cmpg-float v1, p2, v5

    if-gez v1, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_0
    new-instance v1, Lcom/android/server/display/LuxNitPoint;

    iget v4, p0, mAlsLux:F

    invoke-direct {v1, v4, p2}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    invoke-direct {p0, v1}, removeUselessOperations(Lcom/android/server/display/LuxNitPoint;)V

    iget-object v4, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-boolean v3, p0, mIsUserOperated:Z

    iput-boolean v2, p0, updated:Z

    return-void

    :cond_3
    :goto_1
    const-string/jumbo v2, "lux out of adjusting range. ignored"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public resetUserOperations()V
    .locals 1

    iget-object v0, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, updated:Z

    iput-boolean v0, p0, mIsUserOperated:Z

    return-void
.end method

.method public setDefaultCurve([F[F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, mDefaultPoints:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, mDefaultPoints:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/display/LuxNitPoint;

    const/high16 v3, -0x40000000    # -2.0f

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, mDefaultPoints:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/display/LuxNitPoint;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-direct {v1, v3, v4}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, mDefaultPoints:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/display/LuxNitPoint;

    aget v4, p1, v0

    aget v5, p2, v0

    invoke-direct {v3, v4, v5}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/display/OutlierPointFilter;

    invoke-direct {v0, p1, p2}, Lcom/android/server/display/OutlierPointFilter;-><init>([F[F)V

    iput-object v0, p0, mOutlierFilter:Lcom/android/server/display/OutlierPointFilter;

    iput-boolean v2, p0, mIsUserOperated:Z

    iput-boolean v2, p0, updated:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    array-length v2, p2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string/jumbo v2, "lux array (length=%d) and nit array (length=%d) not matched!"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toJson()Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    iget-object v2, p0, mOperatePoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LuxNitPoint;

    invoke-virtual {v3}, Lcom/android/server/display/LuxNitPoint;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    goto :goto_0

    :cond_0
    const-string v2, "OperatePoints"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    nop

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method
