.class public Lcom/android/server/wm/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOnePlusSceneManager;


# instance fields
.field public dY:Lcom/android/server/wm/ugm$zta;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSceneButtonLockFeature(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/ugm;->disableSceneButtonLockFeature(Landroid/content/Context;Z)V

    return-void
.end method

.method public endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/wm/ugm;->endUserSwitching(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method

.method public gameModeShowToolBox(II)Z
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->gameModeShowToolBox(II)Z

    move-result p0

    return p0
.end method

.method public handleEvaluateGameMode(ZZ)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->handleEvaluateGameMode(ZZ)V

    return-void
.end method

.method public handleEvaluateReadMode(I)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ugm$zta;->handleEvaluateReadMode(I)V

    return-void
.end method

.method public handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 0

    invoke-static {p1, p2, p3, p4}, Lcom/android/server/wm/ugm;->handleShowOrOccludedChanged(Lcom/android/server/wm/KeyguardController;ZZLcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    invoke-static {}, Lcom/android/server/zta/you;->getInstance()Lcom/android/server/zta/you;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/zta/you;->initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V

    return-void
.end method

.method public initOemSceneModeActivityStack(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/ugm;->Ce()Lcom/android/server/wm/ugm$zta;

    move-result-object v0

    iput-object v0, p0, dY:Lcom/android/server/wm/ugm$zta;

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V

    return-void
.end method

.method public packageChanged(Ljava/lang/String;I)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->packageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->putSceneMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ugm$zta;->sendReadModeNotification(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/wm/ugm;->shouldIgnoreSceneEvaluation(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->startEvaluateGameMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->startEvaluateReadingMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->startEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public startUserSwitching()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/ugm;->startUserSwitching()V

    return-void
.end method

.method public stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->stopEvaluateSceneModes(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public updateDisableSceneScreenEffectFlag(I)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ugm$zta;->updateDisableSceneScreenEffectFlag(I)V

    return-void
.end method

.method public updateSceneScreenEffectFlag(I)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ugm$zta;->updateSceneScreenEffectFlag(I)V

    return-void
.end method

.method public updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    iget-object p0, p0, dY:Lcom/android/server/wm/ugm$zta;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ugm$zta;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method
