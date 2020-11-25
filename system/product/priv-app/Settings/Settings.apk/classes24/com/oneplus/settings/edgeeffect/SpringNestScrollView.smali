.class public Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;
.super Landroidx/core/widget/NestedScrollView;
.source "SpringNestScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;,
        Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAMPING_RATIO:F = 0.5f

.field private static final STIFFNESS:F = 590.0f

.field private static final VELOCITY_MULTIPLIER:F = 0.3f


# instance fields
.field private mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDampedScrollShift:F

.field private mDispatchScrollCounter:I

.field private mDistance:F

.field private mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

.field private mGlowingBottom:Z

.field private mGlowingTop:Z

.field private mInitialTouchY:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOverScrollNested:Z

.field private mPullCount:I

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field private mRecycleScrolled:Z

.field mScrollConsumed:[I

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;-><init>(Ljava/lang/String;)V

    sput-object v0, DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mGlowingTop:Z

    iput-boolean v0, p0, mGlowingBottom:Z

    const/4 v1, 0x0

    iput v1, p0, mDampedScrollShift:F

    iput v1, p0, mDistance:F

    iput v0, p0, mPullCount:I

    iput-boolean v0, p0, mRecycleScrolled:Z

    invoke-direct {p0}, init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mGlowingTop:Z

    iput-boolean v0, p0, mGlowingBottom:Z

    const/4 v1, 0x0

    iput v1, p0, mDampedScrollShift:F

    iput v1, p0, mDistance:F

    iput v0, p0, mPullCount:I

    iput-boolean v0, p0, mRecycleScrolled:Z

    invoke-direct {p0}, init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mGlowingTop:Z

    iput-boolean v0, p0, mGlowingBottom:Z

    const/4 v1, 0x0

    iput v1, p0, mDampedScrollShift:F

    iput v1, p0, mDistance:F

    iput v0, p0, mPullCount:I

    iput-boolean v0, p0, mRecycleScrolled:Z

    invoke-direct {p0}, init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F
    .locals 1

    iget v0, p0, mDampedScrollShift:F

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)V
    .locals 0

    invoke-direct {p0, p1}, finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)F
    .locals 1

    iget v0, p0, mDistance:F

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)F
    .locals 0

    iput p1, p0, mDistance:F

    return p1
.end method

.method static synthetic access$316(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;F)F
    .locals 1

    iget v0, p0, mDistance:F

    add-float/2addr v0, p1

    iput v0, p0, mDistance:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;I)I
    .locals 0

    iput p1, p0, mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;)I
    .locals 2

    iget v0, p0, mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 0

    invoke-direct {p0, p1}, setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V

    return-void
.end method

.method private cancelTouch()V
    .locals 1

    invoke-direct {p0}, resetTouch()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setScrollState(I)V

    return-void
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, mDampedScrollShift:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, mMaxFlingVelocity:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, mScrollStepConsumed:[I

    new-array v2, v1, [I

    iput-object v2, p0, mScrollOffset:[I

    new-array v2, v1, [I

    iput-object v2, p0, mNestedOffsets:[I

    new-array v1, v1, [I

    iput-object v1, p0, mScrollConsumed:[I

    invoke-virtual {p0}, createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    move-result-object v1

    iput-object v1, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    iget-object v1, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    invoke-virtual {p0, v1}, setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v1, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v3, 0x44138000    # 590.0f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method private isReadyToOverScroll(Z)Z
    .locals 2

    invoke-virtual {p0}, getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p0, v0}, canScrollVertically(I)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    :cond_2
    return v1
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mLastTouchY:I

    iput v2, p0, mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p0}, getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-gtz v1, :cond_5

    const/4 v1, 0x0

    cmpg-float v2, p3, v1

    if-gez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v2, p3, v2

    cmpg-float v3, p4, v1

    const/4 v4, 0x1

    if-gez v3, :cond_1

    iget v3, p0, mPullGrowBottom:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_1

    iget v3, p0, mPullGrowTop:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, ensureTopGlow()V

    iget-object v3, p0, mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v5, p4

    invoke-virtual {p0}, getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    invoke-virtual {p0}, getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float v6, p1, v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v4, p0, mGlowingTop:Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    cmpl-float v3, p4, v1

    if-lez v3, :cond_2

    iget v3, p0, mPullGrowTop:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iget v3, p0, mPullGrowBottom:F

    cmpg-float v3, v2, v3

    if-gez v3, :cond_2

    invoke-virtual {p0}, ensureBottomGlow()V

    iget-object v3, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {p0}, getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float v7, p1, v7

    sub-float/2addr v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/widget/EdgeEffect;->onPull(FF)V

    iput-boolean v4, p0, mGlowingBottom:Z

    const/4 v0, 0x1

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    cmpl-float v3, p2, v1

    if-nez v3, :cond_3

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method private releaseGlows()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v2, p0, mGlowingTop:Z

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v2, p0, mGlowingBottom:Z

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method private resetTouch()V
    .locals 1

    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-direct {p0}, releaseGlows()V

    return-void
.end method

.method private setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;)V
    .locals 1

    iget-object v0, p0, mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    iput-object p1, p0, mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method considerReleasingGlowsOnScroll(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p2, :cond_0

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p2, :cond_1

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;
    .locals 2

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView;Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$1;)V

    return-object v0
.end method

.method dispatchOnScrolled(II)V
    .locals 3

    iget v0, p0, mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mDispatchScrollCounter:I

    invoke-virtual {p0}, getScrollX()I

    move-result v0

    invoke-virtual {p0}, getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, onScrolled(II)V

    iget v2, p0, mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, mDispatchScrollCounter:I

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    iget v0, p0, mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v2, p0, mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setEdgeEffectFactory first, please!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureTopGlow()V
    .locals 4

    iget-object v0, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getClipToPadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setEdgeEffectFactory first, please!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13

    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v1

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x2

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v6, :cond_a

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p1}, onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, mLastTouchY:I

    iput v3, p0, mInitialTouchY:I

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, cancelTouch()V

    goto/16 :goto_2

    :cond_4
    iget v3, p0, mScrollPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    if-gez v3, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, mScrollPointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SpringScrollView"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_5
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v7, v4

    float-to-int v7, v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v4

    float-to-int v4, v8

    iget v8, p0, mLastTouchY:I

    sub-int/2addr v8, v4

    iget-object v9, p0, mScrollConsumed:[I

    iget-object v10, p0, mScrollOffset:[I

    invoke-virtual {p0, v5, v8, v9, v10}, dispatchNestedPreScroll(II[I[I)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, p0, mScrollConsumed:[I

    aget v9, v9, v6

    sub-int/2addr v8, v9

    iget-object v9, p0, mScrollOffset:[I

    aget v10, v9, v5

    int-to-float v10, v10

    aget v9, v9, v6

    int-to-float v9, v9

    invoke-virtual {v2, v10, v9}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v9, p0, mNestedOffsets:[I

    aget v10, v9, v5

    iget-object v11, p0, mScrollOffset:[I

    aget v12, v11, v5

    add-int/2addr v10, v12

    aput v10, v9, v5

    iget-object v9, p0, mNestedOffsets:[I

    aget v10, v9, v6

    aget v11, v11, v6

    add-int/2addr v10, v11

    aput v10, v9, v6

    :cond_6
    iget v9, p0, mScrollState:I

    if-eq v9, v6, :cond_9

    const/4 v9, 0x0

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, mTouchSlop:I

    if-le v10, v11, :cond_8

    if-lez v8, :cond_7

    sub-int/2addr v8, v11

    goto :goto_0

    :cond_7
    add-int/2addr v8, v11

    :goto_0
    const/4 v9, 0x1

    :cond_8
    if-eqz v9, :cond_9

    invoke-virtual {p0, v6}, setScrollState(I)V

    :cond_9
    iget v9, p0, mScrollState:I

    if-ne v9, v6, :cond_e

    iget-object v9, p0, mScrollOffset:[I

    aget v9, v9, v6

    sub-int v9, v4, v9

    iput v9, p0, mLastTouchY:I

    invoke-virtual {p0, v5, v8, v2}, scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_a
    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    iget v6, p0, mMaxFlingVelocity:I

    int-to-float v6, v6

    invoke-virtual {v3, v4, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v3, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    iget v4, p0, mScrollPointerId:I

    invoke-virtual {v3, v4}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v3

    neg-float v3, v3

    const/4 v4, 0x0

    cmpl-float v4, v3, v4

    if-nez v4, :cond_b

    invoke-virtual {p0, v5}, setScrollState(I)V

    goto :goto_1

    :cond_b
    iput v3, p0, mLastYVel:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, mLastY:F

    :goto_1
    invoke-direct {p0}, resetTouch()V

    invoke-virtual {p0}, stopNestedScroll()V

    goto :goto_2

    :cond_c
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v7, v4

    float-to-int v4, v7

    iput v4, p0, mLastTouchY:I

    iput v4, p0, mInitialTouchY:I

    iget v4, p0, mScrollState:I

    if-ne v4, v3, :cond_d

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v6}, setScrollState(I)V

    :cond_d
    iget-object v3, p0, mNestedOffsets:[I

    aput v5, v3, v6

    aput v5, v3, v5

    iput-boolean v5, p0, mRecycleScrolled:Z

    nop

    :cond_e
    :goto_2
    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    iget v0, p0, mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, mDistance:F

    const/4 v1, 0x0

    iput v1, p0, mPullCount:I

    invoke-direct {p0, v0}, finishScrollWithVelocity(F)V

    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 6

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onScrollChanged(IIII)V

    iget-boolean v0, p0, mGlowingTop:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-le p2, p4, :cond_0

    invoke-virtual {p0}, onRecyclerViewScrolled()V

    iput-boolean v2, p0, mRecycleScrolled:Z

    :cond_0
    iget-boolean v0, p0, mGlowingBottom:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-ge p2, p4, :cond_1

    invoke-virtual {p0}, onRecyclerViewScrolled()V

    iput-boolean v2, p0, mRecycleScrolled:Z

    :cond_1
    iget-boolean v0, p0, mGlowingTop:Z

    const/4 v3, 0x0

    const/high16 v4, 0x41a00000    # 20.0f

    if-nez v0, :cond_2

    invoke-virtual {p0, v1}, canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    if-ge p2, p4, :cond_2

    iget v0, p0, mLastX:F

    iget v1, p0, mLastY:F

    iget v5, p0, mLastYVel:F

    div-float/2addr v5, v4

    invoke-direct {p0, v0, v3, v1, v5}, pullGlows(FFFF)V

    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_2

    iget v1, p0, mLastYVel:F

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_2
    iget-boolean v0, p0, mGlowingBottom:Z

    if-nez v0, :cond_3

    invoke-virtual {p0, v2}, canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_3

    if-le p2, p4, :cond_3

    iget v0, p0, mLastX:F

    iget v1, p0, mLastY:F

    iget v2, p0, mLastYVel:F

    div-float/2addr v2, v4

    invoke-direct {p0, v0, v3, v1, v2}, pullGlows(FFFF)V

    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_3

    iget v1, p0, mLastYVel:F

    div-float/2addr v1, v4

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    return-void
.end method

.method public onScrolled(II)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_1

    iget-object v6, p0, mNestedOffsets:[I

    aput v5, v6, v4

    aput v5, v6, v5

    :cond_1
    iget-object v6, p0, mNestedOffsets:[I

    aget v7, v6, v5

    int-to-float v7, v7

    aget v6, v6, v4

    int-to-float v6, v6

    invoke-virtual {v1, v7, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v6, 0x3f000000    # 0.5f

    if-eqz v2, :cond_d

    if-eq v2, v4, :cond_b

    const/4 v7, 0x2

    if-eq v2, v7, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-direct {p0, p1}, onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mScrollPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, mLastTouchY:I

    iput v4, p0, mInitialTouchY:I

    goto/16 :goto_2

    :cond_4
    invoke-direct {p0}, cancelTouch()V

    goto/16 :goto_2

    :cond_5
    iget v7, p0, mScrollPointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    if-gez v7, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, mScrollPointerId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "SpringScrollView"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v6

    float-to-int v8, v8

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v6

    float-to-int v6, v9

    iget v9, p0, mLastTouchY:I

    sub-int/2addr v9, v6

    iget-object v10, p0, mScrollConsumed:[I

    iget-object v11, p0, mScrollOffset:[I

    invoke-virtual {p0, v5, v9, v10, v11}, dispatchNestedPreScroll(II[I[I)Z

    move-result v10

    if-eqz v10, :cond_7

    iget-object v10, p0, mScrollConsumed:[I

    aget v10, v10, v4

    sub-int/2addr v9, v10

    iget-object v10, p0, mScrollOffset:[I

    aget v11, v10, v5

    int-to-float v11, v11

    aget v10, v10, v4

    int-to-float v10, v10

    invoke-virtual {v1, v11, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v10, p0, mNestedOffsets:[I

    aget v11, v10, v5

    iget-object v12, p0, mScrollOffset:[I

    aget v13, v12, v5

    add-int/2addr v11, v13

    aput v11, v10, v5

    iget-object v10, p0, mNestedOffsets:[I

    aget v11, v10, v4

    aget v12, v12, v4

    add-int/2addr v11, v12

    aput v11, v10, v4

    :cond_7
    iget v10, p0, mScrollState:I

    if-eq v10, v4, :cond_a

    const/4 v10, 0x0

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v11

    iget v12, p0, mTouchSlop:I

    if-le v11, v12, :cond_9

    if-lez v9, :cond_8

    sub-int/2addr v9, v12

    goto :goto_0

    :cond_8
    add-int/2addr v9, v12

    :goto_0
    const/4 v10, 0x1

    :cond_9
    if-eqz v10, :cond_a

    invoke-virtual {p0, v4}, setScrollState(I)V

    :cond_a
    iget v10, p0, mScrollState:I

    if-ne v10, v4, :cond_e

    iget-object v10, p0, mScrollOffset:[I

    aget v10, v10, v4

    sub-int v10, v6, v10

    iput v10, p0, mLastTouchY:I

    invoke-virtual {p0, v5, v9, v1}, scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_2

    :cond_b
    iget-object v4, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    iget-object v4, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, mMaxFlingVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v4, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, mScrollPointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v4

    neg-float v4, v4

    const/4 v6, 0x0

    cmpl-float v6, v4, v6

    if-nez v6, :cond_c

    invoke-virtual {p0, v5}, setScrollState(I)V

    goto :goto_1

    :cond_c
    iput v4, p0, mLastYVel:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, mLastX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, mLastY:F

    :goto_1
    invoke-direct {p0}, resetTouch()V

    goto :goto_2

    :cond_d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v6

    float-to-int v4, v4

    iput v4, p0, mLastTouchY:I

    iput v4, p0, mInitialTouchY:I

    const/4 v4, 0x0

    iput-boolean v5, p0, mRecycleScrolled:Z

    nop

    :cond_e
    :goto_2
    if-nez v0, :cond_f

    iget-object v4, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_f
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    invoke-super {p0, p1}, Landroidx/core/widget/NestedScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-gez v8, :cond_0

    move v0, v10

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    invoke-direct {v6, v0}, isReadyToOverScroll(Z)Z

    move-result v12

    if-nez v12, :cond_1

    return v11

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, getChildCount()I

    move-result v4

    if-ltz v4, :cond_2

    iget-object v4, v6, mScrollStepConsumed:[I

    invoke-virtual {v6, v7, v8, v4}, scrollStep(II[I)V

    iget-object v4, v6, mScrollStepConsumed:[I

    aget v2, v4, v11

    aget v3, v4, v10

    sub-int v0, v7, v2

    sub-int v1, v8, v3

    move v15, v0

    move v5, v1

    move v13, v2

    move v14, v3

    goto :goto_1

    :cond_2
    move v15, v0

    move v5, v1

    move v13, v2

    move v14, v3

    :goto_1
    invoke-virtual/range {p0 .. p0}, invalidate()V

    iget-object v4, v6, mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move v3, v15

    move-object/from16 v16, v4

    move v4, v5

    move/from16 v17, v5

    move-object/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, dispatchNestedScroll(IIII[I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v1, v6, mLastTouchY:I

    iget-object v2, v6, mScrollOffset:[I

    aget v3, v2, v10

    sub-int/2addr v1, v3

    iput v1, v6, mLastTouchY:I

    if-eqz v9, :cond_3

    aget v1, v2, v11

    int-to-float v1, v1

    aget v2, v2, v10

    int-to-float v2, v2

    invoke-virtual {v9, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_3
    iget-object v1, v6, mNestedOffsets:[I

    aget v2, v1, v11

    iget-object v3, v6, mScrollOffset:[I

    aget v4, v3, v11

    add-int/2addr v2, v4

    aput v2, v1, v11

    iget-object v1, v6, mNestedOffsets:[I

    aget v2, v1, v10

    aget v3, v3, v10

    add-int/2addr v2, v3

    aput v2, v1, v10

    :cond_4
    if-eqz v0, :cond_6

    iget-boolean v1, v6, mOverScrollNested:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v4, v17

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_8

    if-eqz v9, :cond_7

    const/16 v1, 0x2002

    invoke-virtual {v9, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v15

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    move/from16 v4, v17

    int-to-float v5, v4

    invoke-direct {v6, v1, v2, v3, v5}, pullGlows(FFFF)V

    goto :goto_3

    :cond_7
    move/from16 v4, v17

    :goto_3
    invoke-virtual/range {p0 .. p2}, considerReleasingGlowsOnScroll(II)V

    goto :goto_4

    :cond_8
    move/from16 v4, v17

    :goto_4
    if-nez v13, :cond_9

    if-eqz v14, :cond_a

    :cond_9
    invoke-virtual {v6, v13, v14}, dispatchOnScrolled(II)V

    :cond_a
    invoke-virtual/range {p0 .. p0}, awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual/range {p0 .. p0}, invalidate()V

    :cond_b
    if-nez v13, :cond_d

    if-eqz v14, :cond_c

    goto :goto_5

    :cond_c
    move v10, v11

    :cond_d
    :goto_5
    return v10
.end method

.method scrollStep(II[I)V
    .locals 2
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    iget-boolean v1, p0, mOverScrollNested:Z

    :cond_0
    if-eqz p3, :cond_1

    const/4 v1, 0x1

    aput v0, p3, v1

    :cond_1
    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    iget v0, p0, mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, mDampedScrollShift:F

    invoke-virtual {p0}, invalidate()V

    :cond_0
    return-void
.end method

.method public setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;)V
    .locals 0

    iput-object p1, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringNestScrollView$SEdgeEffectFactory;

    invoke-virtual {p0}, invalidateGlows()V

    return-void
.end method

.method setScrollState(I)V
    .locals 1

    iget v0, p0, mScrollState:I

    if-eq p1, v0, :cond_0

    iput p1, p0, mScrollState:I

    :cond_0
    return-void
.end method
