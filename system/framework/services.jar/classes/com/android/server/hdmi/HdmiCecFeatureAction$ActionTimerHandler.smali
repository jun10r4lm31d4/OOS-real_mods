.class Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;
.super Landroid/os/Handler;
.source "HdmiCecFeatureAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecFeatureAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionTimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public clearTimerMessage()V
    .locals 1

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, removeMessages(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported message:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecFeatureAction"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->handleTimerEvent(I)V

    nop

    :goto_0
    return-void
.end method

.method public sendTimerMessage(IJ)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method