.class Lcom/android/server/wm/OpPowerConsumpStats$ConsumptionDetectorHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConsumptionDetectorHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x13

    const/16 v4, 0x12

    const/16 v5, 0x11

    const/16 v6, 0x10

    const/16 v7, 0xf

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/16 v8, 0x14

    if-eq v0, v8, :cond_0

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->wtn(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_0
    iget v0, v2, Landroid/os/Message;->what:I

    const-string v8, ""

    const-string v9, " Topping"

    const-string v10, "OPCS"

    const-string v12, " |mIdleState:"

    const-string v13, " |mPlugState:"

    const-string v14, " |mPowerLevel:"

    const/4 v15, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_d

    :pswitch_1
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v8, v2, Landroid/os/Message;->arg2:I

    iget-object v9, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[GapTouch] ------MSG_GAP_TOUCH_GENERATED, events: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, ", mCurTopPkg: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v12}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", gapTouchDiff: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v11, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v11}, Lcom/android/server/wm/OpPowerConsumpStats;->ire(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v0, "[GapTouch] ------MSG_GAP_TOUCH_GENERATED, skip due to BaseTimer not yet timing"

    goto/16 :goto_c

    :cond_1
    iget-object v11, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v11}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v11

    iget-object v12, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v12}, Lcom/android/server/wm/OpPowerConsumpStats;->les(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    iget-object v11, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v11}, Lcom/android/server/wm/OpPowerConsumpStats;->les(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v16, v11

    move/from16 v17, v0

    move/from16 v18, v8

    move-wide/from16 v19, v9

    invoke-static/range {v16 .. v21}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;IIJLjava/lang/String;)V

    goto/16 :goto_d

    :pswitch_2
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------MSG_PREPARE_BGC_MDM, forQuickDebug: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/oneplus/android/server/am/highpower/HighPowerDetectorInjector;->informBGCDailyReporting(Z)V

    goto/16 :goto_d

    :pswitch_3
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "------MSG_UID_UPGRADE "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    if-eqz v0, :cond_16

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->kth(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pkg new versionCode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v9, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStats;->irq(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/OpPowerConsumpStats$gck;

    if-eqz v0, :cond_16

    invoke-virtual {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats$gck;->b(I)V

    goto/16 :goto_d

    :pswitch_4
    const-string v0, "------MSG_KEYGUARD_CHANGE"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget v8, v2, Landroid/os/Message;->arg1:I

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->fromValue(I)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget v8, v2, Landroid/os/Message;->arg2:I

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->fromValue(I)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_KEYGUARD_CHANGE LockScreenDisabled: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->e(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " mKeyguardStatus: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->b(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mOccludedStatus: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mScreenState: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->b(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    move-result-object v0

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;->LOCKED:Lcom/android/server/wm/OpPowerConsumpStats$KeyguardStatus;

    const-string v10, "[Cap] it\'s time to maunually trigger current top pkg: "

    if-ne v0, v8, :cond_3

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->d(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    move-result-object v0

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;->Nda:Lcom/android/server/wm/OpPowerConsumpStats$OccludedStatus;

    if-ne v0, v8, :cond_2

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    if-ne v0, v15, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " Topping when ScreenON"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    if-ne v0, v15, :cond_16

    const-string v0, "[Cap] it\'s time to maunually trigger dummy lock screen Topping when ScreenON"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    sget-object v8, Lcom/android/server/wm/OpPowerConsumpStats$StatusType;->TOP:Lcom/android/server/wm/OpPowerConsumpStats$StatusType;

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$StatusType;)V

    goto/16 :goto_d

    :cond_3
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->vju(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {v0, v8, v9}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    goto/16 :goto_d

    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "------MSG_PKG_STATE_CHANGE, pkg: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    sget-object v9, Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;->NORMAL:Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;

    invoke-virtual {v8, v0, v9}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Ljava/lang/String;Lcom/android/server/wm/OpPowerConsumpStats$PurposeType;)V

    goto/16 :goto_d

    :pswitch_6
    const-string v0, "------MSG_NETWORK_CHANGE"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_NETWORK_CHANGE mNetworkType: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->a(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_7
    const-string v0, "------MSG_PKG_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_4

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v0, "none"

    :goto_1
    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStats;->cjf(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v9

    if-eq v9, v0, :cond_5

    iget-object v9, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v9, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;

    iget-object v9, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v9}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "------MSG_PKG_EVENT mScreenState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v10}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v10}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v10}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v10}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " |pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " |oldPkg:"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :pswitch_8
    const-string v0, "------MSG_RESET_LISTENER"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ivd(Lcom/android/server/wm/OpPowerConsumpStats;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_RESET_LISTENER mScreenState:"

    :goto_2
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v8}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_9
    const-string v0, "------MSG_TRACKDATA"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->vdw(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->qeg(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_TRACKDATA mScreenState:"

    goto :goto_2

    :pswitch_a
    const-string v0, "------MSG_TIME_SET"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->veq(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_TIME_SET mScreenState:"

    goto :goto_2

    :pswitch_b
    iget v0, v2, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_8

    const/4 v15, 0x0

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_REPORT, forQuickDebug: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v8, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/StringBuilder;

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v15}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "------MSG_REPORT mScreenState:"

    goto/16 :goto_2

    :pswitch_c
    const-string v0, "------MSG_PLUG_INIT_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    iget v3, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    if-nez v0, :cond_9

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v5, Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    invoke-direct {v5, v0}, Lcom/android/server/wm/OpPowerConsumpStats$qbh;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    invoke-static {v0, v5}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$qbh;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    iget-object v5, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v5}, Lcom/android/server/wm/OpPowerConsumpStats;->qbh(Lcom/android/server/wm/OpPowerConsumpStats;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->aaa:Ljava/lang/String;

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->baa:J

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    const-wide/16 v24, 0x0

    move-object/from16 v20, v6

    move-object/from16 v21, v0

    invoke-direct/range {v20 .. v25}, Lcom/android/server/wm/OpPowerConsumpStats$sis;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;JJ)V

    invoke-static {v0, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$sis;)Lcom/android/server/wm/OpPowerConsumpStats$sis;

    move-object/from16 v21, v12

    goto :goto_3

    :cond_9
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    new-instance v6, Lcom/android/server/wm/OpPowerConsumpStats$sis;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v28

    iget-object v7, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v7}, Lcom/android/server/wm/OpPowerConsumpStats;->ywr(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/OpPowerConsumpStats$qbh;

    move-result-object v7

    move-object/from16 v21, v12

    iget-wide v11, v7, Lcom/android/server/wm/OpPowerConsumpStats$qbh;->duration:J

    move-object/from16 v26, v6

    move-object/from16 v27, v0

    move-wide/from16 v30, v11

    invoke-direct/range {v26 .. v31}, Lcom/android/server/wm/OpPowerConsumpStats$sis;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;JJ)V

    invoke-static {v0, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$sis;)Lcom/android/server/wm/OpPowerConsumpStats$sis;

    :goto_3
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v6

    invoke-static {v0, v6, v7}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;J)J

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v3, v15, :cond_a

    move v6, v15

    goto :goto_4

    :cond_a
    const/4 v6, 0x0

    :goto_4
    invoke-static {v0, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ugm(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/PowerManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v6

    invoke-static {v0, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->zgw(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/os/BatteryManager;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v6

    invoke-static {v0, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;I)I

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string v6, "MSG_PLUG_INIT_EVENT"

    invoke-static {v0, v6}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)D

    move-result-wide v6

    const-wide/high16 v11, -0x4010000000000000L    # -1.0

    cmpl-double v0, v6, v11

    if-eqz v0, :cond_b

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v6, v7}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;D)D

    :cond_b
    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->Oc()Z

    move-result v0

    if-eqz v0, :cond_d

    :try_start_0
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->oxb(Lcom/android/server/wm/OpPowerConsumpStats;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootActivityContainer:Lcom/android/server/wm/RootActivityContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootActivityContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v6, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/android/server/wm/OpPowerConsumpStats;->rtg(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)Ljava/lang/String;

    :cond_c
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->ear(Lcom/android/server/wm/OpPowerConsumpStats;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MSG_PLUG_INIT_EVENT Exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_5
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;I)V

    if-eqz v9, :cond_e

    if-ne v3, v15, :cond_e

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->hmo(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_e
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->fto(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->ssp(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->access$100()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->lqr(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->veq(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------MSG_PLUG_INIT_EVENT mScreenState:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v3, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |plugTypeInit:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |sENABLE:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->access$100()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_d
    move-object v3, v12

    const-string v0, "------MSG_PERSIST"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    sget-object v4, Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;->BY_DROP:Lcom/android/server/wm/IOpPowerConsumpStats$OrderType;

    const/4 v6, 0x0

    invoke-static {v0, v6, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;ZLcom/android/server/wm/IOpPowerConsumpStats$OrderType;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_PERSIST mScreenState:"

    :goto_6
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :pswitch_e
    move-object v3, v12

    const/4 v6, 0x0

    const-string v0, "------MSG_DOZE_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v0, v15, :cond_10

    goto :goto_8

    :cond_10
    move v15, v6

    :goto_8
    invoke-static {v4, v15}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_11

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    :cond_11
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v8}, Lcom/android/server/wm/OpPowerConsumpStats;->ssp(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_DOZE_EVENT mScreenState:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |reason:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :pswitch_f
    move-object v3, v12

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_POWERLEVEL_EVENT mLastPowerLevel:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v0

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget-object v7, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v7, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;I)I

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v4

    sub-int/2addr v0, v4

    if-lez v0, :cond_12

    goto :goto_9

    :cond_12
    move v15, v6

    :goto_9
    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v15}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_POWERLEVEL_EVENT mScreenState:"

    goto/16 :goto_6

    :pswitch_10
    move-object v3, v12

    const/4 v6, 0x0

    const-string v0, "------MSG_SCREEN_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget v0, v2, Landroid/os/Message;->arg1:I

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v0, v15, :cond_13

    goto :goto_a

    :cond_13
    move v15, v6

    :goto_a
    invoke-static {v4, v15}, Lcom/android/server/wm/OpPowerConsumpStats;->you(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->fto(Lcom/android/server/wm/OpPowerConsumpStats;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_SCREEN_EVENT mScreenState:"

    goto/16 :goto_6

    :pswitch_11
    move-object v3, v12

    const-string v0, "------MSG_PLUGGED_FASTCHARGE_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->hmo(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "------MSG_PLUGGED_FASTCHARGE_EVENT mScreenState:"

    goto/16 :goto_6

    :pswitch_12
    move-object v3, v12

    const/4 v6, 0x0

    const-string v0, "------MSG_PLUG_EVENT"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    iget-object v7, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    if-ne v0, v15, :cond_15

    goto :goto_b

    :cond_15
    move v15, v6

    :goto_b
    invoke-static {v7, v15}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Z)Z

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->sis(Lcom/android/server/wm/OpPowerConsumpStats;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "------MSG_PLUG_EVENT mScreenState:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v6}, Lcom/android/server/wm/OpPowerConsumpStats;->bvj(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->cgv(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |plugType:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :pswitch_13
    const-string v0, "------MSG_GET_ONLINECONFIG"

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    new-instance v3, Lcom/oneplus/config/ConfigGrabber;

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v4}, Lcom/android/server/wm/OpPowerConsumpStats;->gck(Lcom/android/server/wm/OpPowerConsumpStats;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-virtual {v3}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Lorg/json/JSONArray;)V

    iget-object v3, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->dma(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :goto_c
    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->access$200(Ljava/lang/String;)V

    :cond_16
    :goto_d
    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v2, 0xf

    if-eq v0, v2, :cond_17

    const/16 v2, 0x10

    if-eq v0, v2, :cond_17

    const/16 v2, 0x11

    if-eq v0, v2, :cond_17

    const/16 v2, 0x12

    if-eq v0, v2, :cond_17

    const/16 v2, 0x13

    if-eq v0, v2, :cond_17

    const/16 v2, 0x14

    if-eq v0, v2, :cond_17

    iget-object v0, v1, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v0}, Lcom/android/server/wm/OpPowerConsumpStats;->f(Lcom/android/server/wm/OpPowerConsumpStats;)V

    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
