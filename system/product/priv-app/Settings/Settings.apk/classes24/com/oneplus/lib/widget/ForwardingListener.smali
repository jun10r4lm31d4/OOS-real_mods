.class public abstract Lcom/oneplus/lib/widget/ForwardingListener;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;,
        Lcom/oneplus/lib/widget/ForwardingListener$DisallowIntercept;
    }
.end annotation


# instance fields
.field private mActivePointerId:I

.field private mDisallowIntercept:Ljava/lang/Runnable;

.field private mForwarding:Z

.field private final mLongPressTimeout:I

.field private final mScaledTouchSlop:F

.field final mSrc:Landroid/view/View;

.field private final mTapTimeout:I

.field private final mTmpLocation:[I

.field private mTriggerLongPress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, mTmpLocation:[I

    iput-object p1, p0, mSrc:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setLongClickable(Z)V

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, mScaledTouchSlop:F

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, mTapTimeout:I

    iget v1, p0, mTapTimeout:I

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    iput v1, p0, mLongPressTimeout:I

    return-void
.end method

.method private clearCallbacks()V
    .locals 2

    iget-object v0, p0, mTriggerLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v0, p0, mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v1, p0, mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private onTouchForwarded(Landroid/view/MotionEvent;)Z
    .locals 9

    iget-object v0, p0, mSrc:Landroid/view/View;

    invoke-virtual {p0}, getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/oneplus/lib/menu/ShowableListMenu;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {v1}, Lcom/oneplus/lib/menu/ShowableListMenu;->getListView()Landroid/widget/ListView;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/DropDownListView;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/DropDownListView;->isShown()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    invoke-direct {p0, v0, v4}, toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    invoke-direct {p0, v3, v4}, toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    iget v5, p0, mActivePointerId:I

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/widget/DropDownListView;->onForwardedEvent(Landroid/view/MotionEvent;I)Z

    move-result v5

    invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_2

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    move v8, v7

    goto :goto_0

    :cond_2
    move v8, v2

    :goto_0
    if-eqz v5, :cond_3

    if-eqz v8, :cond_3

    move v2, v7

    :cond_3
    return v2

    :cond_4
    :goto_1
    return v2

    :cond_5
    :goto_2
    return v2
.end method

.method private onTouchObserved(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-object v0, p0, mSrc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    goto :goto_0

    :cond_1
    iget v4, p0, mActivePointerId:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v4, :cond_7

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    iget v7, p0, mScaledTouchSlop:F

    invoke-static {v0, v5, v6, v7}, pointInView(Landroid/view/View;FFF)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-direct {p0}, clearCallbacks()V

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    return v3

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, clearCallbacks()V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, mActivePointerId:I

    iget-object v3, p0, mDisallowIntercept:Ljava/lang/Runnable;

    if-nez v3, :cond_5

    new-instance v3, Lcom/oneplus/lib/widget/ForwardingListener$DisallowIntercept;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/ForwardingListener$DisallowIntercept;-><init>(Lcom/oneplus/lib/widget/ForwardingListener;)V

    iput-object v3, p0, mDisallowIntercept:Ljava/lang/Runnable;

    :cond_5
    iget-object v3, p0, mDisallowIntercept:Ljava/lang/Runnable;

    iget v4, p0, mTapTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, mTriggerLongPress:Ljava/lang/Runnable;

    if-nez v3, :cond_6

    new-instance v3, Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;

    invoke-direct {v3, p0}, Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;-><init>(Lcom/oneplus/lib/widget/ForwardingListener;)V

    iput-object v3, p0, mTriggerLongPress:Ljava/lang/Runnable;

    :cond_6
    iget-object v3, p0, mTriggerLongPress:Ljava/lang/Runnable;

    iget v4, p0, mLongPressTimeout:I

    int-to-long v4, v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    nop

    :cond_7
    :goto_0
    return v2
.end method

.method private static pointInView(Landroid/view/View;FFF)Z
    .locals 2

    neg-float v0, p3

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    neg-float v0, p3

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private toGlobalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v2
.end method

.method private toLocalMotionEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, mTmpLocation:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aget v3, v0, v2

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p2, v1, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    return v2
.end method


# virtual methods
.method public abstract getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;
.end method

.method protected onForwardingStarted()Z
    .locals 2

    invoke-virtual {p0}, getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/menu/ShowableListMenu;->show()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onForwardingStopped()Z
    .locals 2

    invoke-virtual {p0}, getPopup()Lcom/oneplus/lib/menu/ShowableListMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/menu/ShowableListMenu;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/menu/ShowableListMenu;->dismiss()V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method onLongPress()V
    .locals 13

    invoke-direct {p0}, clearCallbacks()V

    iget-object v0, p0, mSrc:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isLongClickable()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, onForwardingStarted()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-wide v3, v11

    move-wide v5, v11

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-boolean v2, p0, mForwarding:Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, mForwarding:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    invoke-direct {v0, v1}, onTouchForwarded(Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual/range {p0 .. p0}, onForwardingStopped()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    move v5, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v5, v3

    :goto_1
    goto :goto_3

    :cond_2
    invoke-direct {v0, v1}, onTouchObserved(Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, onForwardingStarted()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v3

    goto :goto_2

    :cond_3
    move v5, v4

    :goto_2
    if-eqz v5, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v6, v14

    move-wide v8, v14

    invoke-static/range {v6 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v6

    iget-object v7, v0, mSrc:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v6}, Landroid/view/MotionEvent;->recycle()V

    :cond_4
    :goto_3
    iput-boolean v5, v0, mForwarding:Z

    if-nez v5, :cond_6

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v3, v4

    :cond_6
    :goto_4
    return v3
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, mForwarding:Z

    const/4 v0, -0x1

    iput v0, p0, mActivePointerId:I

    iget-object v0, p0, mDisallowIntercept:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v1, p0, mSrc:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
