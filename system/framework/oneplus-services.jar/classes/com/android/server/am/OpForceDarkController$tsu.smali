.class Lcom/android/server/am/OpForceDarkController$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# static fields
.field static final KEY_PKG_NAME:Ljava/lang/String; = "pkgName"

.field static final KEY_UID:Ljava/lang/String; = "uid"

.field static final pa:I = 0x3e8

.field static final qa:I = 0x3ea

.field static final ra:Ljava/lang/String; = "pkgChangeAction"

.field static final ua:I = 0x3e9

.field static final va:I = 0x3f2


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OpForceDarkController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3f2

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0, p1}, Lcom/android/server/am/OpForceDarkController;->access$1400(Lcom/android/server/am/OpForceDarkController;Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$1300(Lcom/android/server/am/OpForceDarkController;)V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    const-string v0, "OnePlusForceDarkConfig"

    invoke-static {p1, v0}, Lcom/android/server/am/OpForceDarkController;->access$1100(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;)V

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p1}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0}, Lcom/android/server/am/OpForceDarkController;->access$1200(Lcom/android/server/am/OpForceDarkController;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p0, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-static {v2, v0, v3}, Lcom/android/server/am/OpForceDarkController;->access$1500(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {v3}, Lcom/android/server/am/OpForceDarkController;->access$800(Lcom/android/server/am/OpForceDarkController;)Landroid/app/AppOpsManager;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0, p1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Debug Set AppOps,  UID <"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ">, Set {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "} Mode To >>> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    invoke-static {p0, p1}, Lcom/android/server/am/OpForceDarkController;->access$1600(Lcom/android/server/am/OpForceDarkController;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPFD_CTRL_SVC"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
