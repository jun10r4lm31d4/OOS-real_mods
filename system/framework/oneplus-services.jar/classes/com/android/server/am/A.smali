.class Lcom/android/server/am/A;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OpForceDarkController;->scheduleUpdateAppOpsDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OpForceDarkController;

.field final synthetic tsu:J


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;J)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iput-wide p2, p0, tsu:J

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    const-string p2, "ACTION_BOOT_COMPLETED "

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1700(Lcom/android/server/am/OpForceDarkController;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v0}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    iget-wide v0, p0, tsu:J

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method
