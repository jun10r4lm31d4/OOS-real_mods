.class Lcom/android/server/hdmi/SetArcTransmissionStateAction$1;
.super Ljava/lang/Object;
.source "SetArcTransmissionStateAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SetArcTransmissionStateAction;->sendReportArcInitiated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SetArcTransmissionStateAction;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->access$000(Lcom/android/server/hdmi/SetArcTransmissionStateAction;Z)V

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Failed to send <Report Arc Initiated>."

    invoke-static {v1, v0}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, this$0:Lcom/android/server/hdmi/SetArcTransmissionStateAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SetArcTransmissionStateAction;->finish()V

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return-void
.end method
