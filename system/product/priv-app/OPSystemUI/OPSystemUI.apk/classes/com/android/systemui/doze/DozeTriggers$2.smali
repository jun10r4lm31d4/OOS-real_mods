.class Lcom/android/systemui/doze/DozeTriggers$2;
.super Ljava/lang/Object;
.source "DozeTriggers.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeTriggers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/doze/DozeTriggers;


# direct methods
.method constructor <init>(Lcom/android/systemui/doze/DozeTriggers;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintPoke()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestFingerprintPoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/4 v0, 0x0

    const/16 v1, 0xd

    invoke-static {p0, v1, v0}, Lcom/android/systemui/doze/DozeTriggers;->access$800(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    return-void
.end method

.method public onNotificationAlerted()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$1100(Lcom/android/systemui/doze/DozeTriggers;)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isCustomFingerprint()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p0, p0, this$0:Lcom/android/systemui/doze/DozeTriggers;

    invoke-static {p0}, Lcom/android/systemui/doze/DozeTriggers;->access$900(Lcom/android/systemui/doze/DozeTriggers;)Lcom/android/systemui/doze/DozeMachine;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/doze/DozeMachine$State;->FINISH:Lcom/android/systemui/doze/DozeMachine$State;

    invoke-virtual {p0, p1}, Lcom/android/systemui/doze/DozeMachine;->requestState(Lcom/android/systemui/doze/DozeMachine$State;)V

    :cond_0
    return-void
.end method

.method public onSingleTap()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeTriggers"

    const-string v1, "requestSingleTapPulse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {p0, v1, v0}, Lcom/android/systemui/doze/DozeTriggers;->access$800(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    invoke-static {v1}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 1

    sget-boolean p1, Lcom/android/systemui/doze/DozeMachine;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "DozeTriggers"

    const-string v0, "requestThreeKeyStatusPulse"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/systemui/doze/DozeTriggers;

    const/4 p1, 0x0

    const/16 v0, 0xa

    invoke-static {p0, v0, p1}, Lcom/android/systemui/doze/DozeTriggers;->access$800(Lcom/android/systemui/doze/DozeTriggers;IZ)V

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    return-void
.end method
