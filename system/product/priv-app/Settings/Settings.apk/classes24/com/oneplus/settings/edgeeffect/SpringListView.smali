.class public Lcom/oneplus/settings/edgeeffect/SpringListView;
.super Landroid/widget/ListView;
.source "SpringListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;
    }
.end annotation


# static fields
.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2


# instance fields
.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mDispatchScrollCounter:I

.field private mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

.field private mFirstChildTop:I

.field mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mGlowing:Z

.field private mInitialTouchY:I

.field mLastChildBottom:I

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLastX:F

.field private mLastY:F

.field private mLastYVel:F

.field private mMaxFlingVelocity:I

.field private mNestedOffsets:[I

.field mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

.field mOverScrollNested:Z

.field mPullGrowBottom:F

.field mPullGrowTop:F

.field mReadToOverScroll:Z

.field mScrollConsumed:[I

.field private mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field mScrollStepConsumed:[I

.field private mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, mScrollState:I

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mReadToOverScroll:Z

    new-instance v1, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object v1, p0, mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 v1, 0x0

    iput-object v1, p0, mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iput-boolean v0, p0, mGlowing:Z

    const/4 v1, 0x0

    iput v1, p0, mLastYVel:F

    iput v0, p0, mFirstChildTop:I

    invoke-direct {p0}, init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, mScrollState:I

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mReadToOverScroll:Z

    new-instance v1, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object v1, p0, mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 v1, 0x0

    iput-object v1, p0, mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iput-boolean v0, p0, mGlowing:Z

    const/4 v1, 0x0

    iput v1, p0, mLastYVel:F

    iput v0, p0, mFirstChildTop:I

    invoke-direct {p0}, init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, mScrollState:I

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mReadToOverScroll:Z

    new-instance v1, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object v1, p0, mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 v1, 0x0

    iput-object v1, p0, mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iput-boolean v0, p0, mGlowing:Z

    const/4 v1, 0x0

    iput v1, p0, mLastYVel:F

    iput v0, p0, mFirstChildTop:I

    invoke-direct {p0}, init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput v0, p0, mScrollState:I

    iput-boolean v0, p0, mOverScrollNested:Z

    const v1, 0x3dcccccd    # 0.1f

    iput v1, p0, mPullGrowTop:F

    const v1, 0x3f666666    # 0.9f

    iput v1, p0, mPullGrowBottom:F

    iput-boolean v0, p0, mReadToOverScroll:Z

    new-instance v1, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V

    iput-object v1, p0, mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    const/4 v1, 0x0

    iput-object v1, p0, mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iput-boolean v0, p0, mGlowing:Z

    const/4 v1, 0x0

    iput v1, p0, mLastYVel:F

    iput v0, p0, mFirstChildTop:I

    invoke-direct {p0}, init()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
    .locals 1

    iget-object v0, p0, mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/settings/edgeeffect/SpringListView;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
    .locals 0

    iput-object p1, p0, mSpringLayout:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/settings/edgeeffect/SpringListView;)I
    .locals 1

    iget v0, p0, mFirstChildTop:I

    return v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/edgeeffect/SpringListView;I)I
    .locals 0

    iput p1, p0, mFirstChildTop:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringListView;)Z
    .locals 1

    iget-boolean v0, p0, mGlowing:Z

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringListView;)F
    .locals 1

    iget v0, p0, mLastX:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringListView;)F
    .locals 1

    iget v0, p0, mLastY:F

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F
    .locals 1

    iget v0, p0, mLastYVel:F

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringListView;FFFF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, pullGlows(FFFF)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;
    .locals 1

    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    return-object v0
.end method

.method private cancelScroll()V
    .locals 1

    invoke-direct {p0}, resetTouch()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setScrollState(I)V

    iput v0, p0, mFirstChildTop:I

    return-void
.end method

.method private init()V
    .locals 3

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

    iget-object v1, p0, mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    invoke-virtual {p0, v1}, setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isReadyToOverScroll(ZI)Z
    .locals 7

    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p0}, getFooterViewsCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, getHeaderViewsCount()I

    move-result v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, getFirstVisiblePosition()I

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v1}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, getListPaddingTop()I

    move-result v5

    if-lt v4, v5, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    goto :goto_0

    :cond_4
    if-nez p1, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v3

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    if-ne v3, v4, :cond_6

    invoke-virtual {p0}, getChildCount()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v3}, getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p0}, getHeight()I

    move-result v5

    invoke-virtual {p0}, getListPaddingBottom()I

    move-result v6

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_5

    move v1, v2

    :cond_5
    return v1

    :cond_6
    :goto_0
    nop

    :cond_7
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

    iput-boolean v4, p0, mGlowing:Z

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

    iput-boolean v4, p0, mGlowing:Z

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

    iput-boolean v2, p0, mGlowing:Z

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iput-boolean v2, p0, mGlowing:Z

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

.method private resetScroll()V
    .locals 1

    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, stopNestedScroll()V

    invoke-direct {p0}, releaseGlows()V

    const/4 v0, 0x0

    iput v0, p0, mFirstChildTop:I

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

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

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

    iget-object v0, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    if-eqz v0, :cond_2

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

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

.method public getScrollState()I
    .locals 1

    iget v0, p0, mScrollState:I

    return v0
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z
    .locals 1

    iget-object v0, p0, mOnScrollListenerWrapper:Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

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

    const/4 v2, 0x2

    const/high16 v3, 0x3f000000    # 0.5f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_2

    const/4 v2, 0x6

    if-eq v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-direct {p0, p1}, onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mLastTouchY:I

    iput v2, p0, mInitialTouchY:I

    goto/16 :goto_2

    :cond_3
    invoke-direct {p0}, cancelScroll()V

    goto/16 :goto_2

    :cond_4
    iget v2, p0, mScrollPointerId:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    if-gez v2, :cond_5

    return v4

    :cond_5
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v4, v3

    float-to-int v4, v4

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    add-float/2addr v6, v3

    float-to-int v3, v6

    iget v6, p0, mScrollState:I

    if-eq v6, v5, :cond_f

    iget v6, p0, mInitialTouchY:I

    sub-int v6, v3, v6

    const/4 v7, 0x0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    iget v9, p0, mTouchSlop:I

    if-le v8, v9, :cond_6

    iput v3, p0, mLastTouchY:I

    const/4 v7, 0x1

    :cond_6
    if-eqz v7, :cond_7

    invoke-virtual {p0, v5}, setScrollState(I)V

    :cond_7
    goto :goto_2

    :cond_8
    iget-object v2, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual {p0}, stopNestedScroll()V

    goto :goto_2

    :cond_9
    iput-boolean v4, p0, mReadToOverScroll:Z

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, mScrollPointerId:I

    iget v6, p0, mScrollPointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_a

    return v4

    :cond_a
    invoke-virtual {p0}, getLastVisiblePosition()I

    move-result v7

    invoke-virtual {p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    sub-int/2addr v8, v5

    if-ne v7, v8, :cond_b

    move v7, v5

    goto :goto_0

    :cond_b
    move v7, v4

    :goto_0
    if-nez v7, :cond_c

    move v8, v5

    goto :goto_1

    :cond_c
    move v8, v4

    :goto_1
    invoke-direct {p0, v8, v4}, isReadyToOverScroll(ZI)Z

    move-result v8

    if-nez v8, :cond_d

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    :cond_d
    iput-boolean v5, p0, mReadToOverScroll:Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    add-float/2addr v9, v3

    float-to-int v3, v9

    iput v3, p0, mLastTouchY:I

    iput v3, p0, mInitialTouchY:I

    iget v3, p0, mScrollState:I

    if-ne v3, v2, :cond_e

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v5}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-virtual {p0, v5}, setScrollState(I)V

    :cond_e
    iget-object v3, p0, mNestedOffsets:[I

    aput v4, v3, v5

    aput v4, v3, v4

    const/4 v3, 0x0

    or-int/2addr v2, v3

    invoke-virtual {p0, v2}, startNestedScroll(I)Z

    nop

    :cond_f
    :goto_2
    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
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

    const/4 v6, 0x2

    const/high16 v7, 0x3f000000    # 0.5f

    if-eqz v2, :cond_d

    if-eq v2, v4, :cond_b

    if-eq v2, v6, :cond_5

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    const/4 v4, 0x5

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-direct {p0, p1}, onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mScrollPointerId:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, mLastTouchY:I

    iput v4, p0, mInitialTouchY:I

    goto/16 :goto_3

    :cond_4
    invoke-direct {p0}, cancelScroll()V

    goto/16 :goto_3

    :cond_5
    iget v6, p0, mScrollPointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    if-gez v6, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, mScrollPointerId:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "SpringListView"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_6
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v7

    float-to-int v8, v8

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v7

    float-to-int v7, v9

    iget v9, p0, mLastTouchY:I

    sub-int/2addr v9, v7

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

    if-ne v10, v4, :cond_10

    iget-object v10, p0, mScrollOffset:[I

    aget v10, v10, v4

    sub-int v10, v7, v10

    iput v10, p0, mLastTouchY:I

    invoke-virtual {p0, v5, v9, v1}, scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

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
    invoke-direct {p0}, resetScroll()V

    goto :goto_3

    :cond_d
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, mScrollPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    add-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, p0, mLastTouchY:I

    iput v4, p0, mInitialTouchY:I

    invoke-virtual {p0}, getChildCount()I

    move-result v4

    if-lez v4, :cond_e

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p0, v7}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v7

    iput v7, p0, mLastChildBottom:I

    goto :goto_2

    :cond_e
    iput v5, p0, mLastChildBottom:I

    :goto_2
    iget v7, p0, mInitialTouchY:I

    iget v8, p0, mLastChildBottom:I

    if-gt v7, v8, :cond_12

    if-ltz v7, :cond_12

    invoke-virtual {p0}, getHeight()I

    move-result v8

    if-le v7, v8, :cond_f

    goto :goto_4

    :cond_f
    const/4 v5, 0x0

    or-int/2addr v5, v6

    invoke-virtual {p0, v5}, startNestedScroll(I)Z

    nop

    :cond_10
    :goto_3
    if-nez v0, :cond_11

    iget-object v4, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_11
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    :cond_12
    :goto_4
    return v5
.end method

.method protected overScrollBy(IIIIIIIIZ)Z
    .locals 10

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v2, p2

    move v4, p4

    move/from16 v6, p6

    move/from16 v9, p9

    invoke-super/range {v0 .. v9}, Landroid/widget/ListView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0
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
    invoke-direct {v6, v0, v8}, isReadyToOverScroll(ZI)Z

    move-result v12

    if-nez v12, :cond_1

    return v11

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_2

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

.method public setEdgeEffectFactory(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;)V
    .locals 0
    .param p1    # Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, mEdgeEffectFactory:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;

    invoke-virtual {p0}, invalidateGlows()V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    invoke-virtual {p0, p1}, isUserOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void
.end method

.method public setOverScrollNested(Z)V
    .locals 0

    iput-boolean p1, p0, mOverScrollNested:Z

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
