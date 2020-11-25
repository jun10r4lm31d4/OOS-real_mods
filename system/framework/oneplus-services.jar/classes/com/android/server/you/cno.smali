.class Lcom/android/server/you/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/you/kth;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/you/kth;

.field final synthetic val$direction:I

.field final synthetic val$params:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/server/you/kth;ILandroid/view/WindowManager$LayoutParams;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/you/kth;

    iput p2, p0, val$direction:I

    iput-object p3, p0, val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget v0, p0, val$direction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object p1, p0, this$1:Lcom/android/server/you/kth;

    iget-object p1, p1, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {p1}, Lcom/android/server/you/wtn;->dma(Lcom/android/server/you/wtn;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, this$1:Lcom/android/server/you/kth;

    iget-object v0, v0, Lcom/android/server/you/kth;->this$0:Lcom/android/server/you/wtn;

    invoke-static {v0}, Lcom/android/server/you/wtn;->igw(Lcom/android/server/you/wtn;)Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, val$params:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
