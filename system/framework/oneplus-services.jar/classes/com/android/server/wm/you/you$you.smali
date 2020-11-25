.class Lcom/android/server/wm/you/you$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/you/you;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/you/you;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/you;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/server/wm/you/you;

    invoke-static {}, Lcom/android/server/wm/you/you;->access$100()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/wm/you/you;->zta(Lcom/android/server/wm/you/you;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
