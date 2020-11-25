.class public Lcom/oneplus/support/core/view/DragStartHelper;
.super Ljava/lang/Object;
.source "DragStartHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;
    }
.end annotation


# instance fields
.field private mDragging:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private final mListener:Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;

.field private final mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mTouchListener:Landroid/view/View$OnTouchListener;

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/support/core/view/DragStartHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/DragStartHelper$1;-><init>(Lcom/oneplus/support/core/view/DragStartHelper;)V

    iput-object v0, p0, mLongClickListener:Landroid/view/View$OnLongClickListener;

    new-instance v0, Lcom/oneplus/support/core/view/DragStartHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/DragStartHelper$2;-><init>(Lcom/oneplus/support/core/view/DragStartHelper;)V

    iput-object v0, p0, mTouchListener:Landroid/view/View$OnTouchListener;

    iput-object p1, p0, mView:Landroid/view/View;

    iput-object p2, p0, mListener:Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;

    return-void
.end method


# virtual methods
.method public attach()V
    .locals 2

    iget-object v0, p0, mView:Landroid/view/View;

    iget-object v1, p0, mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, mView:Landroid/view/View;

    iget-object v1, p0, mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public detach()V
    .locals 2

    iget-object v0, p0, mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public getTouchPosition(Landroid/graphics/Point;)V
    .locals 2

    iget v0, p0, mLastTouchX:I

    iget v1, p0, mLastTouchY:I

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, mListener:Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v0, p1, p0}, Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Lcom/oneplus/support/core/view/DragStartHelper;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    if-eq v2, v4, :cond_4

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_0
    const/16 v2, 0x2002

    invoke-static {p2, v2}, Lcom/oneplus/support/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v2

    and-int/2addr v2, v4

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, mDragging:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    iget v2, p0, mLastTouchX:I

    if-ne v2, v0, :cond_3

    iget v2, p0, mLastTouchY:I

    if-ne v2, v1, :cond_3

    goto :goto_0

    :cond_3
    iput v0, p0, mLastTouchX:I

    iput v1, p0, mLastTouchY:I

    iget-object v2, p0, mListener:Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;

    invoke-interface {v2, p1, p0}, Lcom/oneplus/support/core/view/DragStartHelper$OnDragStartListener;->onDragStart(Landroid/view/View;Lcom/oneplus/support/core/view/DragStartHelper;)Z

    move-result v2

    iput-boolean v2, p0, mDragging:Z

    iget-boolean v2, p0, mDragging:Z

    return v2

    :cond_4
    iput-boolean v3, p0, mDragging:Z

    goto :goto_0

    :cond_5
    iput v0, p0, mLastTouchX:I

    iput v1, p0, mLastTouchY:I

    nop

    :cond_6
    :goto_0
    return v3
.end method
