.class public abstract Landroidx/core/widget/AutoScrollHelper;
.super Ljava/lang/Object;
.source "AutoScrollHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/widget/AutoScrollHelper$ClampedScroller;,
        Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACTIVATION_DELAY:I


# instance fields
.field private mActivationDelay:I

.field private mAlreadyDelayed:Z

.field mAnimating:Z

.field private final mEdgeInterpolator:Landroid/view/animation/Interpolator;

.field private mEdgeType:I

.field private mEnabled:Z

.field private mExclusive:Z

.field private mMaximumEdges:[F

.field private mMaximumVelocity:[F

.field private mMinimumVelocity:[F

.field mNeedsCancel:Z

.field mNeedsReset:Z

.field private mRelativeEdges:[F

.field private mRelativeVelocity:[F

.field private mRunnable:Ljava/lang/Runnable;

.field final mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

.field final mTarget:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, DEFAULT_ACTIVATION_DELAY:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-direct {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;-><init>()V

    iput-object v0, p0, mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, mEdgeInterpolator:Landroid/view/animation/Interpolator;

    const/4 v0, 0x2

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    iput-object v1, p0, mRelativeEdges:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    iput-object v1, p0, mMaximumEdges:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    iput-object v1, p0, mRelativeVelocity:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    iput-object v1, p0, mMinimumVelocity:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, mMaximumVelocity:[F

    iput-object p1, p0, mTarget:Landroid/view/View;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const v0, 0x44c4e000    # 1575.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    const v2, 0x439d8000    # 315.0f

    mul-float/2addr p1, v2

    add-float/2addr p1, v1

    float-to-int p1, p1

    int-to-float v0, v0

    invoke-virtual {p0, v0, v0}, setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    int-to-float p1, p1

    invoke-virtual {p0, p1, p1}, setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;

    const p1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {p0, p1, p1}, setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    const p1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, p1, p1}, setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p1}, setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;

    sget p1, DEFAULT_ACTIVATION_DELAY:I

    invoke-virtual {p0, p1}, setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;

    const/16 p1, 0x1f4

    invoke-virtual {p0, p1}, setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;

    invoke-virtual {p0, p1}, setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x7f7fffff    # Float.MAX_VALUE
        0x7f7fffff    # Float.MAX_VALUE
    .end array-data
.end method

.method private computeTargetVelocity(IFFF)F
    .locals 2

    iget-object v0, p0, mRelativeEdges:[F

    aget v0, v0, p1

    iget-object v1, p0, mMaximumEdges:[F

    aget v1, v1, p1

    invoke-direct {p0, v0, p3, v1, p2}, getEdgeValue(FFFF)F

    move-result p2

    const/4 p3, 0x0

    cmpl-float v0, p2, p3

    if-nez v0, :cond_0

    return p3

    :cond_0
    iget-object p3, p0, mRelativeVelocity:[F

    aget p3, p3, p1

    iget-object v1, p0, mMinimumVelocity:[F

    aget v1, v1, p1

    iget-object p0, p0, mMaximumVelocity:[F

    aget p0, p0, p1

    mul-float/2addr p3, p4

    if-lez v0, :cond_1

    mul-float/2addr p2, p3

    invoke-static {p2, v1, p0}, constrain(FFF)F

    move-result p0

    return p0

    :cond_1
    neg-float p1, p2

    mul-float/2addr p1, p3

    invoke-static {p1, v1, p0}, constrain(FFF)F

    move-result p0

    neg-float p0, p0

    return p0
.end method

.method static constrain(FFF)F
    .locals 1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    return p2

    :cond_0
    cmpg-float p2, p0, p1

    if-gez p2, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method static constrain(III)I
    .locals 0

    if-le p0, p2, :cond_0

    return p2

    :cond_0
    if-ge p0, p1, :cond_1

    return p1

    :cond_1
    return p0
.end method

.method private constrainEdgeValue(FF)F
    .locals 4

    const/4 v0, 0x0

    cmpl-float v1, p2, v0

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget v1, p0, mEdgeType:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    const/4 p0, 0x2

    if-eq v1, p0, :cond_1

    goto :goto_0

    :cond_1
    cmpg-float p0, p1, v0

    if-gez p0, :cond_4

    neg-float p0, p2

    div-float/2addr p1, p0

    return p1

    :cond_2
    cmpg-float v1, p1, p2

    if-gez v1, :cond_4

    cmpl-float v1, p1, v0

    const/high16 v3, 0x3f800000    # 1.0f

    if-ltz v1, :cond_3

    div-float/2addr p1, p2

    sub-float/2addr v3, p1

    return v3

    :cond_3
    iget-boolean p1, p0, mAnimating:Z

    if-eqz p1, :cond_4

    iget p0, p0, mEdgeType:I

    if-ne p0, v2, :cond_4

    return v3

    :cond_4
    :goto_0
    return v0
.end method

.method private getEdgeValue(FFFF)F
    .locals 1

    mul-float/2addr p1, p2

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, constrain(FFF)F

    move-result p1

    invoke-direct {p0, p4, p1}, constrainEdgeValue(FF)F

    move-result p3

    sub-float/2addr p2, p4

    invoke-direct {p0, p2, p1}, constrainEdgeValue(FF)F

    move-result p1

    sub-float/2addr p1, p3

    cmpg-float p2, p1, v0

    if-gez p2, :cond_0

    iget-object p0, p0, mEdgeInterpolator:Landroid/view/animation/Interpolator;

    neg-float p1, p1

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    neg-float p0, p0

    goto :goto_0

    :cond_0
    cmpl-float p2, p1, v0

    if-lez p2, :cond_1

    iget-object p0, p0, mEdgeInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {p0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p0

    :goto_0
    const/high16 p1, -0x40800000    # -1.0f

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2}, constrain(FFF)F

    move-result p0

    return p0

    :cond_1
    return v0
.end method

.method private requestStop()V
    .locals 1

    iget-boolean v0, p0, mNeedsReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, mAnimating:Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->requestStop()V

    :goto_0
    return-void
.end method

.method private startAnimating()V
    .locals 6

    iget-object v0, p0, mRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;

    invoke-direct {v0, p0}, Landroidx/core/widget/AutoScrollHelper$ScrollAnimationRunnable;-><init>(Landroidx/core/widget/AutoScrollHelper;)V

    iput-object v0, p0, mRunnable:Ljava/lang/Runnable;

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mAnimating:Z

    iput-boolean v0, p0, mNeedsReset:Z

    iget-boolean v1, p0, mAlreadyDelayed:Z

    if-nez v1, :cond_1

    iget v1, p0, mActivationDelay:I

    if-lez v1, :cond_1

    iget-object v2, p0, mTarget:Landroid/view/View;

    iget-object v3, p0, mRunnable:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, mRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    :goto_0
    iput-boolean v0, p0, mAlreadyDelayed:Z

    return-void
.end method


# virtual methods
.method public abstract canTargetScrollHorizontally(I)Z
.end method

.method public abstract canTargetScrollVertically(I)Z
.end method

.method cancelTargetTouch()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v0, v2

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    iget-object p0, p0, mTarget:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, requestStop()V

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, mNeedsCancel:Z

    iput-boolean v1, p0, mAlreadyDelayed:Z

    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, mTarget:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {p0, v1, v0, v3, v4}, computeTargetVelocity(IFFF)F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object v3, p0, mTarget:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0, v2, p2, p1, v3}, computeTargetVelocity(IFFF)F

    move-result p1

    iget-object p2, p0, mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {p2, v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setTargetVelocity(FF)V

    iget-boolean p1, p0, mAnimating:Z

    if-nez p1, :cond_4

    invoke-virtual {p0}, shouldAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, startAnimating()V

    :cond_4
    :goto_0
    iget-boolean p1, p0, mExclusive:Z

    if-eqz p1, :cond_5

    iget-boolean p0, p0, mAnimating:Z

    if-eqz p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public abstract scrollTargetBy(II)V
.end method

.method public setActivationDelay(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 0

    iput p1, p0, mActivationDelay:I

    return-object p0
.end method

.method public setEdgeType(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 0

    iput p1, p0, mEdgeType:I

    return-object p0
.end method

.method public setEnabled(Z)Landroidx/core/widget/AutoScrollHelper;
    .locals 1

    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, requestStop()V

    :cond_0
    iput-boolean p1, p0, mEnabled:Z

    return-object p0
.end method

.method public setMaximumEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 2

    iget-object v0, p0, mMaximumEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public setMaximumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 3

    iget-object v0, p0, mMaximumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public setMinimumVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 3

    iget-object v0, p0, mMinimumVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public setRampDownDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 1

    iget-object v0, p0, mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampDownDuration(I)V

    return-object p0
.end method

.method public setRampUpDuration(I)Landroidx/core/widget/AutoScrollHelper;
    .locals 1

    iget-object v0, p0, mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0, p1}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->setRampUpDuration(I)V

    return-object p0
.end method

.method public setRelativeEdges(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 2

    iget-object v0, p0, mRelativeEdges:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method public setRelativeVelocity(FF)Landroidx/core/widget/AutoScrollHelper;
    .locals 3

    iget-object v0, p0, mRelativeVelocity:[F

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr p1, v1

    const/4 v2, 0x0

    aput p1, v0, v2

    div-float/2addr p2, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    return-object p0
.end method

.method shouldAnimate()Z
    .locals 2

    iget-object v0, p0, mScroller:Landroidx/core/widget/AutoScrollHelper$ClampedScroller;

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getVerticalDirection()I

    move-result v1

    invoke-virtual {v0}, Landroidx/core/widget/AutoScrollHelper$ClampedScroller;->getHorizontalDirection()I

    move-result v0

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, canTargetScrollVertically(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, canTargetScrollHorizontally(I)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
