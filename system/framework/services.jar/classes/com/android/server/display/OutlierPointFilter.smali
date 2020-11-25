.class Lcom/android/server/display/OutlierPointFilter;
.super Ljava/lang/Object;
.source "CurveGen.java"


# instance fields
.field private mLowerLimit:Landroid/util/Spline;

.field private mLowerOutlier:Landroid/util/Spline;

.field private mUpperLimit:Landroid/util/Spline;

.field private mUpperOutlier:Landroid/util/Spline;


# direct methods
.method constructor <init>([F[F)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p2

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget v2, p2, v1

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    add-float/2addr v2, v3

    aput v2, v0, v1

    aget v2, v0, v1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, mUpperOutlier:Landroid/util/Spline;

    array-length v0, p2

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    const/high16 v3, 0x42480000    # 50.0f

    if-ge v1, v2, :cond_3

    aget v2, p2, v1

    const/high16 v4, 0x3fc00000    # 1.5f

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    aget v2, v0, v1

    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    aget v3, p2, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, mUpperLimit:Landroid/util/Spline;

    array-length v0, p2

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_2
    array-length v2, p2

    const/4 v4, 0x0

    if-ge v1, v2, :cond_5

    aget v2, p2, v1

    const/high16 v5, 0x3f400000    # 0.75f

    mul-float/2addr v2, v5

    const/high16 v5, 0x41c80000    # 25.0f

    sub-float/2addr v2, v5

    aput v2, v0, v1

    aget v2, v0, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_4

    aput v4, v0, v1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, mLowerLimit:Landroid/util/Spline;

    array-length v0, p2

    new-array v0, v0, [F

    const/4 v1, 0x0

    :goto_3
    array-length v2, p2

    if-ge v1, v2, :cond_7

    aget v2, p2, v1

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v2, v5

    sub-float/2addr v2, v3

    aput v2, v0, v1

    aget v2, v0, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_6

    aput v4, v0, v1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    array-length v2, p2

    add-int/lit8 v2, v2, -0x1

    aget v2, p2, v2

    aput v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    iput-object v1, p0, mLowerOutlier:Landroid/util/Spline;

    return-void
.end method


# virtual methods
.method filter(Lcom/android/server/display/LuxNitPoint;)Lcom/android/server/display/LuxNitPoint;
    .locals 5

    iget v0, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget-object v1, p0, mUpperOutlier:Landroid/util/Spline;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, mUpperLimit:Landroid/util/Spline;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {v0, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v0

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_1

    new-instance v1, Lcom/android/server/display/LuxNitPoint;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-direct {v1, v2, v0}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    return-object v1

    :cond_1
    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    iget-object v3, p0, mLowerOutlier:Landroid/util/Spline;

    iget v4, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-virtual {v3, v4}, Landroid/util/Spline;->interpolate(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    return-object v1

    :cond_2
    iget-object v1, p0, mLowerLimit:Landroid/util/Spline;

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    invoke-virtual {v1, v2}, Landroid/util/Spline;->interpolate(F)F

    move-result v1

    iget v2, p1, Lcom/android/server/display/LuxNitPoint;->nit:F

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3

    new-instance v2, Lcom/android/server/display/LuxNitPoint;

    iget v3, p1, Lcom/android/server/display/LuxNitPoint;->lux:F

    invoke-direct {v2, v3, v1}, Lcom/android/server/display/LuxNitPoint;-><init>(FF)V

    return-object v2

    :cond_3
    return-object p1
.end method
