.class Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;
.super Ljava/lang/Object;
.source "TouchExplorer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/TouchExplorer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendHoverEnterAndMoveDelayed"
.end annotation


# instance fields
.field private final LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

.field private final mEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPointerIdBits:I

.field private mPolicyFlags:I

.field final synthetic this$0:Lcom/android/server/accessibility/TouchExplorer;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/TouchExplorer;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "SendHoverEnterAndMoveDelayed"

    iput-object v0, p0, LOG_TAG_SEND_HOVER_DELAYED:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mEvents:Ljava/util/List;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/accessibility/TouchExplorer$SendHoverEnterAndMoveDelayed;)Z
    .locals 1

    invoke-direct {p0}, isPending()Z

    move-result v0

    return v0
.end method

.method private clear()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, mPointerIdBits:I

    const/4 v0, 0x0

    iput v0, p0, mPolicyFlags:I

    iget-object v0, p0, mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_0

    iget-object v2, p0, mEvents:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private isPending()Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addEvent(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, mEvents:Ljava/util/List;

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 1

    invoke-direct {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, clear()V

    :cond_0
    return-void
.end method

.method public forceSendAndRemove()V
    .locals 1

    invoke-direct {p0}, isPending()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, run()V

    invoke-virtual {p0}, cancel()V

    :cond_0
    return-void
.end method

.method public post(Landroid/view/MotionEvent;ZII)V
    .locals 3

    invoke-virtual {p0}, cancel()V

    invoke-virtual {p0, p1}, addEvent(Landroid/view/MotionEvent;)V

    iput p3, p0, mPointerIdBits:I

    iput p4, p0, mPolicyFlags:I

    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v0}, Lcom/android/server/accessibility/TouchExplorer;->access$300(Lcom/android/server/accessibility/TouchExplorer;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    invoke-static {v1}, Lcom/android/server/accessibility/TouchExplorer;->access$600(Lcom/android/server/accessibility/TouchExplorer;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public run()V
    .locals 7

    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/android/server/accessibility/TouchExplorer;->access$400(Lcom/android/server/accessibility/TouchExplorer;I)V

    iget-object v0, p0, mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v1, p0, mEvents:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MotionEvent;

    const/16 v2, 0x9

    iget v3, p0, mPointerIdBits:I

    iget v4, p0, mPolicyFlags:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    iget-object v0, p0, mEvents:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, this$0:Lcom/android/server/accessibility/TouchExplorer;

    iget-object v3, p0, mEvents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MotionEvent;

    const/4 v4, 0x7

    iget v5, p0, mPointerIdBits:I

    iget v6, p0, mPolicyFlags:I

    invoke-static {v2, v3, v4, v5, v6}, Lcom/android/server/accessibility/TouchExplorer;->access$700(Lcom/android/server/accessibility/TouchExplorer;Landroid/view/MotionEvent;III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, clear()V

    return-void
.end method