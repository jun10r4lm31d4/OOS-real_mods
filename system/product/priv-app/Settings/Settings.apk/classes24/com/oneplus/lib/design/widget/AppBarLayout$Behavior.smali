.class public Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;
.super Lcom/oneplus/lib/design/widget/HeaderBehavior;
.source "AppBarLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/AppBarLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;,
        Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/design/widget/HeaderBehavior<",
        "Lcom/oneplus/lib/design/widget/AppBarLayout;",
        ">;"
    }
.end annotation


# static fields
.field private static final INVALID_POSITION:I = -0x1

.field private static final MAX_OFFSET_ANIMATION_DURATION:I = 0x258


# instance fields
.field private mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mOffsetAnimator:Landroid/animation/ValueAnimator;

.field private mOffsetDelta:I

.field private mOffsetToChildIndexOnLayout:I

.field private mOffsetToChildIndexOnLayoutIsMinHeight:Z

.field private mOffsetToChildIndexOnLayoutPerc:F

.field private mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

.field private mSkipNestedPreScroll:Z

.field private mWasNestedFlung:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, mOffsetToChildIndexOnLayout:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;)I
    .locals 1

    iget v0, p0, mOffsetDelta:I

    return v0
.end method

.method private animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V
    .locals 4

    invoke-virtual {p0}, getTopBottomOffsetForScrollingSibling()I

    move-result v0

    sub-int/2addr v0, p3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p4

    const/4 v1, 0x0

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x447a0000    # 1000.0f

    int-to-float v2, v0

    div-float/2addr v2, p4

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_0
    int-to-float v1, v0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    const/high16 v3, 0x43160000    # 150.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    :goto_0
    invoke-direct {p0, p1, p2, p3, v1}, animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    return-void
.end method

.method private animateOffsetWithDuration(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 4

    invoke-virtual {p0}, getTopBottomOffsetForScrollingSibling()I

    move-result v0

    if-ne v0, p3, :cond_1

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-nez v1, :cond_2

    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$1;-><init>(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior;Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_0
    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/16 v2, 0x258

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private static checkFlag(II)Z
    .locals 1

    and-int v0, p0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;
    .locals 5

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    if-lt v0, v4, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    if-gt v0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    neg-int v4, p2

    if-gt v3, v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    neg-int v4, p2

    if-lt v3, v4, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method private interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I
    .locals 12

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    if-lt v0, v6, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    if-gt v0, v6, :cond_3

    if-eqz v5, :cond_4

    const/4 v6, 0x0

    invoke-virtual {v4}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v7

    and-int/lit8 v8, v7, 0x1

    if-eqz v8, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v8

    iget v9, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->topMargin:I

    add-int/2addr v8, v9

    iget v9, v4, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v8, v9

    add-int/2addr v6, v8

    and-int/lit8 v8, v7, 0x2

    if-eqz v8, :cond_0

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v6, v8

    :cond_0
    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    sub-int/2addr v6, v8

    :cond_1
    if-lez v6, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v8, v0, v8

    int-to-float v9, v6

    int-to-float v10, v8

    int-to-float v11, v6

    div-float/2addr v10, v11

    invoke-interface {v5, v10}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v10

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result v10

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v11

    add-int/2addr v11, v9

    mul-int/2addr v10, v11

    return v10

    :cond_2
    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return p2
.end method

.method private shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 8

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getDependents(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    nop

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v5}, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Lcom/oneplus/lib/design/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    instance-of v7, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    if-eqz v7, :cond_1

    move-object v7, v6

    check-cast v7, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;

    invoke-virtual {v7}, Lcom/oneplus/lib/design/widget/AppBarLayout$ScrollingViewBehavior;->getOverlayTop()I

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method private snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 10

    invoke-virtual {p0}, getTopBottomOffsetForScrollingSibling()I

    move-result v0

    invoke-direct {p0, p2, v0}, getChildIndexOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v1

    if-ltz v1, :cond_5

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v4

    and-int/lit8 v5, v4, 0x11

    const/16 v6, 0x11

    if-ne v5, v6, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ne v1, v7, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v7

    add-int/2addr v6, v7

    :cond_0
    const/4 v7, 0x2

    invoke-static {v4, v7}, checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_0

    :cond_1
    const/4 v8, 0x5

    invoke-static {v4, v8}, checkFlag(II)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v8

    add-int/2addr v8, v6

    if-ge v0, v8, :cond_2

    move v5, v8

    goto :goto_0

    :cond_2
    move v6, v8

    :cond_3
    :goto_0
    add-int v8, v6, v5

    div-int/2addr v8, v7

    if-ge v0, v8, :cond_4

    move v7, v6

    goto :goto_1

    :cond_4
    move v7, v5

    :goto_1
    nop

    nop

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v8

    neg-int v8, v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {p0, p1, p2, v8, v9}, animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    :cond_5
    return-void
.end method

.method private updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V
    .locals 7

    invoke-static {p2, p3}, getAppBarChildOnOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/AppBarLayout$LayoutParams;->getScrollFlags()I

    move-result v2

    const/4 v3, 0x0

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_1

    if-gez p4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move v3, v4

    :cond_1
    invoke-virtual {p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->setCollapsedState(Z)Z

    move-result v4

    if-eqz v4, :cond_2

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_2

    invoke-direct {p0, p1, p2}, shouldJumpElevationState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->jumpDrawablesToCurrentState()V

    :cond_2
    return-void
.end method


# virtual methods
.method bridge synthetic canDragView(Landroid/view/View;)Z
    .locals 0

    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result p1

    return p1
.end method

.method canDragView(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z
    .locals 3

    iget-object v0, p0, mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;->canDrag(Lcom/oneplus/lib/design/widget/AppBarLayout;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/oneplus/support/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v1
.end method

.method public bridge synthetic getLeftAndRightOffset()I
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getLeftAndRightOffset()I

    move-result v0

    return v0
.end method

.method bridge synthetic getMaxDragOffset(Landroid/view/View;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getMaxDragOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method bridge synthetic getScrollRangeForDragFling(Landroid/view/View;)I
    .locals 0

    check-cast p1, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1}, getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I

    move-result p1

    return p1
.end method

.method getScrollRangeForDragFling(Lcom/oneplus/lib/design/widget/AppBarLayout;)I
    .locals 1

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getTopAndBottomOffset()I
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->getTopAndBottomOffset()I

    move-result v0

    return v0
.end method

.method getTopBottomOffsetForScrollingSibling()I
    .locals 2

    invoke-virtual {p0}, getTopAndBottomOffset()I

    move-result v0

    iget v1, p0, mOffsetDelta:I

    add-int/2addr v0, v1

    return v0
.end method

.method isOffsetAnimatorRunning()Z
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method bridge synthetic onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    return-void
.end method

.method onFlingFinished(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2}, snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    return-void
.end method

.method public bridge synthetic onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z

    move-result p1

    return p1
.end method

.method public onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;I)Z
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onLayoutChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getPendingAction()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    and-int/lit8 v4, v1, 0x2

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v4

    neg-int v4, v4

    if-eqz v3, :cond_1

    invoke-direct {p0, p1, p2, v4, v5}, animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, p2, v4}, setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_1

    :cond_2
    and-int/lit8 v4, v1, 0x1

    if-eqz v4, :cond_4

    if-eqz v3, :cond_3

    invoke-direct {p0, p1, p2, v2, v5}, animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    goto :goto_3

    :cond_3
    invoke-virtual {p0, p1, p2, v2}, setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    goto :goto_3

    :cond_4
    :goto_1
    goto :goto_3

    :cond_5
    iget v3, p0, mOffsetToChildIndexOnLayout:I

    if-ltz v3, :cond_7

    invoke-virtual {p2, v3}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    neg-int v4, v4

    iget-boolean v5, p0, mOffsetToChildIndexOnLayoutIsMinHeight:Z

    if-eqz v5, :cond_6

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, mOffsetToChildIndexOnLayoutPerc:F

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v4, v5

    :goto_2
    invoke-virtual {p0, v4}, setTopAndBottomOffset(I)Z

    goto :goto_4

    :cond_7
    :goto_3
    nop

    :goto_4
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->resetPendingAction()V

    const/4 v3, -0x1

    iput v3, p0, mOffsetToChildIndexOnLayout:I

    nop

    invoke-virtual {p0}, getTopAndBottomOffset()I

    move-result v3

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v4

    neg-int v4, v4

    invoke-static {v3, v4, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-virtual {p0, v2}, setTopAndBottomOffset(I)Z

    invoke-virtual {p0}, getTopAndBottomOffset()I

    move-result v2

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    return v0
.end method

.method public bridge synthetic onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z

    move-result p1

    return p1
.end method

.method public onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IIII)Z
    .locals 8

    nop

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;

    iget v1, v0, Lcom/oneplus/lib/design/widget/CoordinatorLayout$LayoutParams;->height:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_0

    nop

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v7, p6

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    const/4 v1, 0x1

    return v1

    :cond_0
    invoke-super/range {p0 .. p6}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onMeasureChild(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .locals 7

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z

    move-result p1

    return p1
.end method

.method public onNestedFling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;FFZ)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p6, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v5, v1

    const/4 v6, 0x0

    neg-float v7, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, fling(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;IIF)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    cmpg-float v1, p5, v1

    if-gez v1, :cond_2

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, getTopBottomOffsetForScrollingSibling()I

    move-result v2

    if-ge v2, v1, :cond_1

    invoke-direct {p0, p1, p2, v1, p5}, animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    const/4 v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v1

    neg-int v1, v1

    invoke-virtual {p0}, getTopBottomOffsetForScrollingSibling()I

    move-result v2

    if-le v2, v1, :cond_3

    invoke-direct {p0, p1, p2, v1, p5}, animateOffsetTo(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;IF)V

    const/4 v0, 0x1

    :cond_3
    :goto_0
    iput-boolean v0, p0, mWasNestedFlung:Z

    return v0
.end method

.method public bridge synthetic onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .locals 7

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V

    return-void
.end method

.method public onNestedPreScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;II[I)V
    .locals 9

    if-eqz p5, :cond_1

    iget-boolean v0, p0, mSkipNestedPreScroll:Z

    if-nez v0, :cond_1

    if-gez p5, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTotalScrollRange()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedPreScrollRange()I

    move-result v1

    add-int/2addr v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getUpNestedPreScrollRange()I

    move-result v0

    neg-int v0, v0

    const/4 v1, 0x0

    :goto_0
    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p5

    move v6, v0

    move v7, v1

    invoke-virtual/range {v2 .. v7}, scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    move-result v2

    aput v2, p6, v8

    :cond_1
    return-void
.end method

.method public bridge synthetic onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .locals 8

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V

    return-void
.end method

.method public onNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;IIII)V
    .locals 7

    if-gez p7, :cond_0

    nop

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getDownNestedScrollRange()I

    move-result v0

    neg-int v5, v0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p7

    invoke-virtual/range {v1 .. v6}, scroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I

    const/4 v0, 0x1

    iput-boolean v0, p0, mSkipNestedPreScroll:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mSkipNestedPreScroll:Z

    :goto_0
    return-void
.end method

.method public bridge synthetic onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V

    return-void
.end method

.method public onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p3, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, p1, p2, v1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    iput v1, p0, mOffsetToChildIndexOnLayout:I

    iget v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    iput v1, p0, mOffsetToChildIndexOnLayoutPerc:F

    iget-boolean v1, v0, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    iput-boolean v1, p0, mOffsetToChildIndexOnLayoutIsMinHeight:Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onRestoreInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    const/4 v0, -0x1

    iput v0, p0, mOffsetToChildIndexOnLayout:I

    :goto_0
    return-void
.end method

.method public bridge synthetic onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2}, onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method

.method public onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)Landroid/os/Parcelable;
    .locals 9

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->onSaveInstanceState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, getTopAndBottomOffset()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildCount()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_2

    invoke-virtual {p2, v2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/2addr v6, v1

    if-gtz v6, :cond_1

    if-ltz v5, :cond_1

    new-instance v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;

    invoke-direct {v6, v0}, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;-><init>(Landroid/os/Parcelable;)V

    iput v2, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildIndex:I

    nop

    invoke-static {v4}, Lcom/oneplus/support/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v7

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getTopInset()I

    move-result v8

    add-int/2addr v7, v8

    if-ne v5, v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    iput-boolean v7, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildAtMinimumHeight:Z

    int-to-float v7, v5

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, v6, Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$SavedState;->firstVisibleChildPercentageShown:F

    return-object v6

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public bridge synthetic onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .locals 6

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public onStartNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;Landroid/view/View;I)Z
    .locals 2

    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasScrollableChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, mOffsetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return v0
.end method

.method public bridge synthetic onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    check-cast p2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    invoke-virtual {p0, p1, p2, p3}, onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V

    return-void
.end method

.method public onStopNestedScroll(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, mWasNestedFlung:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, snapToChildIfNeeded(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mSkipNestedPreScroll:Z

    iput-boolean v0, p0, mWasNestedFlung:Z

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, mLastNestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDragCallback(Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;)V
    .locals 0
    .param p1    # Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, mOnDragCallback:Lcom/oneplus/lib/design/widget/AppBarLayout$Behavior$DragCallback;

    return-void
.end method

.method bridge synthetic setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Landroid/view/View;III)I
    .locals 6

    move-object v2, p2

    check-cast v2, Lcom/oneplus/lib/design/widget/AppBarLayout;

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I

    move-result p1

    return p1
.end method

.method setHeaderTopBottomOffset(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;III)I
    .locals 5

    invoke-virtual {p0}, getTopBottomOffsetForScrollingSibling()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p4, :cond_3

    if-lt v0, p4, :cond_3

    if-gt v0, p5, :cond_3

    invoke-static {p3, p4, p5}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result p3

    if-eq v0, p3, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2, p3}, interpolateOffset(Lcom/oneplus/lib/design/widget/AppBarLayout;I)I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, p3

    :goto_0
    nop

    invoke-virtual {p0, v2}, setTopAndBottomOffset(I)Z

    move-result v3

    sub-int v1, v0, p3

    sub-int v4, p3, v2

    iput v4, p0, mOffsetDelta:I

    if-nez v3, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/lib/design/widget/AppBarLayout;->hasChildWithInterpolator()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, p2}, Lcom/oneplus/lib/design/widget/CoordinatorLayout;->dispatchDependentViewsChanged(Landroid/view/View;)V

    :cond_1
    invoke-virtual {p0}, getTopAndBottomOffset()I

    move-result v4

    invoke-virtual {p2, v4}, Lcom/oneplus/lib/design/widget/AppBarLayout;->dispatchOffsetUpdates(I)V

    nop

    if-ge p3, v0, :cond_2

    const/4 v4, -0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x1

    :goto_1
    invoke-direct {p0, p1, p2, p3, v4}, updateAppBarLayoutDrawableState(Lcom/oneplus/lib/design/widget/CoordinatorLayout;Lcom/oneplus/lib/design/widget/AppBarLayout;II)V

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    iput v2, p0, mOffsetDelta:I

    :cond_4
    :goto_2
    return v1
.end method

.method public bridge synthetic setLeftAndRightOffset(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setLeftAndRightOffset(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setTopAndBottomOffset(I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/lib/design/widget/HeaderBehavior;->setTopAndBottomOffset(I)Z

    move-result p1

    return p1
.end method
