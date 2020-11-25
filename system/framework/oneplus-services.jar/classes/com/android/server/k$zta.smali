.class Lcom/android/server/k$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private sis:J

.field final synthetic this$0:Lcom/android/server/k;


# direct methods
.method public constructor <init>(Lcom/android/server/k;Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, this$0:Lcom/android/server/k;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, sis:J

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.oneplus.enter.smartdoze"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "intent.update.wakelock.smartdoze"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "intent.update.network.smartdoze"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p2, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->zta(Lcom/android/server/k;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->zgw(Lcom/android/server/k;)Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->isCharging()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/k;->ssp(Lcom/android/server/k;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->zgw(Lcom/android/server/k;)Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->isPowerSaveMode()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/k;->cno(Lcom/android/server/k;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->wtn(Lcom/android/server/k;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ire(Lcom/android/server/k;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1, v0}, Lcom/android/server/k;->bio(Lcom/android/server/k;Z)Z

    :cond_1
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ear(Lcom/android/server/k;)Z

    move-result p1

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    if-nez p1, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->fto(Lcom/android/server/k;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->lqr(Lcom/android/server/k;)I

    move-result p1

    if-eq p1, v3, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->lqr(Lcom/android/server/k;)I

    move-result p1

    if-eq p1, v2, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->lqr(Lcom/android/server/k;)I

    move-result p1

    if-eq p1, v1, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1, v0}, Lcom/android/server/k;->wtn(Lcom/android/server/k;Z)Z

    :cond_2
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->wtn(Lcom/android/server/k;)Z

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/k;->kth(Lcom/android/server/k;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ear(Lcom/android/server/k;)Z

    move-result v4

    invoke-static {p1, v4}, Lcom/android/server/k;->igw(Lcom/android/server/k;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->wtn(Lcom/android/server/k;)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_1c

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->zgw(Lcom/android/server/k;)Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_3

    goto/16 :goto_10

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_1

    :sswitch_1
    const-string v1, "intent.update.network.smartdoze"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "com.oneplus.exit.smartdoze"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/16 p1, 0x8

    goto :goto_1

    :sswitch_4
    const-string v1, "intent.update.wakelock.smartdoze"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v3

    goto :goto_1

    :sswitch_5
    const-string v1, "com.oneplus.enter.smartdoze"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v0

    goto :goto_1

    :sswitch_7
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    move p1, v4

    goto :goto_1

    :sswitch_8
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x2

    goto :goto_1

    :cond_4
    :goto_0
    move p1, v6

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ugm(Lcom/android/server/k;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    :goto_2
    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->vdb(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v4, p2, :cond_6

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->vdb(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v6, :cond_5

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    monitor-exit p1

    goto/16 :goto_f

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_1
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ugm(Lcom/android/server/k;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->vdb(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {p2}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v6, :cond_7

    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-static {p0}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit p1

    goto/16 :goto_f

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mNetWorkWhiteList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is clear now!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpSmartDoze"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->gwm(Lcom/android/server/k;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/net/NetworkPolicyManagerService;->getUidRulesFirstLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-static {p0}, Lcom/android/server/k;->gwm(Lcom/android/server/k;)Lcom/android/server/net/NetworkPolicyManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->opUpdateRulesForRestrictPowerUL()V

    monitor-exit p1

    goto/16 :goto_f

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    :pswitch_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mWakeLockWhiteList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " is clear now!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpSmartDoze"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ibl(Lcom/android/server/k;)Lcom/android/server/power/PowerManagerService$PmsInner;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/power/PowerManagerService$PmsInner;->GetLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-static {p0}, Lcom/android/server/k;->ibl(Lcom/android/server/k;)Lcom/android/server/power/PowerManagerService$PmsInner;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/power/PowerManagerService$PmsInner;->updateWakeLockDisabledStatesLockedInner()V

    monitor-exit p1

    goto/16 :goto_f

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0

    :goto_3
    :pswitch_4
    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-static {p0}, Lcom/android/server/k;->zgw(Lcom/android/server/k;)Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    move-result-object p0

    invoke-virtual {p0, v4}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->updateSmartDozeFlagLocked(Z)V

    goto/16 :goto_f

    :goto_4
    :pswitch_5
    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-virtual {p0}, Lcom/android/server/k;->ja()V

    goto/16 :goto_f

    :pswitch_6
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1, v4}, Lcom/android/server/k;->rtg(Lcom/android/server/k;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "now:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOnTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, sis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", screenTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v5, p0, sis:J

    sub-long/2addr v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mShortScreenPeriod:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->bio(Lcom/android/server/k;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mAlarmComing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->qbh(Lcom/android/server/k;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLeaveCharge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->hmo(Lcom/android/server/k;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mLeavePowerSaveMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->veq(Lcom/android/server/k;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSmartDoze"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, sis:J

    sub-long/2addr v0, v2

    iget-object v2, p0, this$0:Lcom/android/server/k;

    invoke-static {v2}, Lcom/android/server/k;->bio(Lcom/android/server/k;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->qbh(Lcom/android/server/k;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->hmo(Lcom/android/server/k;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->veq(Lcom/android/server/k;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto/16 :goto_c

    :cond_8
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->you(Lcom/android/server/k;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    iget-object v3, p0, this$0:Lcom/android/server/k;

    invoke-static {v3}, Lcom/android/server/k;->oif(Lcom/android/server/k;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    :cond_a
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p1, v1

    iget-object v3, p0, this$0:Lcom/android/server/k;

    invoke-static {v3}, Lcom/android/server/k;->bvj(Lcom/android/server/k;)J

    move-result-wide v5

    cmp-long v1, v1, v5

    if-lez v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_c
    move v0, v4

    :goto_7
    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/k;

    invoke-static {v2}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/k;

    invoke-static {v2}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v4, v0, :cond_e

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-virtual {p1}, Lcom/android/server/k;->ja()V

    goto/16 :goto_b

    :catchall_4
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p0

    :cond_f
    move v0, v4

    :goto_9
    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/k;

    invoke-static {v2}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/k;

    invoke-static {v2}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_10
    :goto_a
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v4, v0, :cond_11

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :goto_b
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->sis(Lcom/android/server/k;)Z

    move-result p1

    if-eqz p1, :cond_1b

    goto/16 :goto_4

    :catchall_5
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p0

    :cond_12
    :goto_c
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->hmo(Lcom/android/server/k;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0, v4}, Lcom/android/server/k;->bio(Lcom/android/server/k;Z)Z

    :cond_13
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0}, Lcom/android/server/k;->veq(Lcom/android/server/k;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0, v4}, Lcom/android/server/k;->wtn(Lcom/android/server/k;Z)Z

    :cond_14
    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0, v4}, Lcom/android/server/k;->zta(Lcom/android/server/k;Z)Z

    iget-object v0, p0, this$0:Lcom/android/server/k;

    invoke-static {v0, v4}, Lcom/android/server/k;->sis(Lcom/android/server/k;Z)Z

    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/k;->igw(J)V

    goto/16 :goto_f

    :pswitch_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mScreenOnTime:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, sis:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpSmartDoze"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1, v0}, Lcom/android/server/k;->rtg(Lcom/android/server/k;Z)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, sis:J

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/OnePlusUtil$zta;->P()I

    move-result p1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/OnePlusUtil$zta;->O()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_15

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_15

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-virtual {v1, p2}, Lcom/android/server/k;->obl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->igw(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->gck(Lcom/android/server/k;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->dma(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_15

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p2

    monitor-enter p2

    :try_start_8
    iget-object v1, p0, this$0:Lcom/android/server/k;

    invoke-static {v1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p2

    goto :goto_d

    :catchall_6
    move-exception p0

    monitor-exit p2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    throw p0

    :cond_15
    :goto_d
    new-instance p1, Landroid/content/Intent;

    const-string p2, "intent.update.wakelock.smartdoze"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->ywr(Lcom/android/server/k;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->tsu(Lcom/android/server/k;)Landroid/app/AlarmManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    new-instance p1, Landroid/content/Intent;

    const-string p2, "intent.update.network.smartdoze"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->ywr(Lcom/android/server/k;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v0, p1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->tsu(Lcom/android/server/k;)Landroid/app/AlarmManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->lqr(Lcom/android/server/k;)I

    move-result p1

    if-eq p1, v3, :cond_1b

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->lqr(Lcom/android/server/k;)I

    move-result p1

    if-eq p1, v2, :cond_1b

    goto/16 :goto_3

    :pswitch_8
    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->kth(Lcom/android/server/k;)Z

    move-result p1

    if-eqz p1, :cond_16

    return-void

    :cond_16
    const-string p1, "level"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    mul-int/2addr p1, v0

    const-string v1, "scale"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    div-int/2addr p1, p2

    const/16 p2, 0xa

    if-ge p1, p2, :cond_17

    iget-object p0, p0, this$0:Lcom/android/server/k;

    const-wide/32 p1, 0x493e0

    :goto_e
    invoke-static {p0, p1, p2}, Lcom/android/server/k;->zta(Lcom/android/server/k;J)J

    goto :goto_f

    :cond_17
    const/16 p2, 0x14

    if-ge p1, p2, :cond_18

    iget-object p0, p0, this$0:Lcom/android/server/k;

    const-wide/32 p1, 0x3a980

    goto :goto_e

    :cond_18
    const/16 p2, 0x28

    if-ge p1, p2, :cond_19

    iget-object p0, p0, this$0:Lcom/android/server/k;

    const-wide/32 p1, 0x2bf20

    goto :goto_e

    :cond_19
    const/16 p2, 0x3c

    iget-object p0, p0, this$0:Lcom/android/server/k;

    if-ge p1, p2, :cond_1a

    const-wide/32 p1, 0x1d4c0

    goto :goto_e

    :cond_1a
    const-wide/32 p1, 0xea60

    goto :goto_e

    :cond_1b
    :goto_f
    return-void

    :cond_1c
    :goto_10
    const-string p1, "OpSmartDoze"

    const-string p2, "it is charging or in power save mode, disable SmartDoze"

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->zgw(Lcom/android/server/k;)Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    move-result-object p1

    invoke-virtual {p1, v4}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->updateSmartDozeFlagLocked(Z)V

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1, v4}, Lcom/android/server/k;->zta(Lcom/android/server/k;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1, v4}, Lcom/android/server/k;->sis(Lcom/android/server/k;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->tsu(Lcom/android/server/k;)Landroid/app/AlarmManager;

    move-result-object p1

    iget-object p2, p0, this$0:Lcom/android/server/k;

    iget-object p2, p2, Lcom/android/server/k;->mPending:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p1

    monitor-enter p1

    :try_start_9
    iget-object p2, p0, this$0:Lcom/android/server/k;

    invoke-static {p2}, Lcom/android/server/k;->rtg(Lcom/android/server/k;)Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    iget-object p1, p0, this$0:Lcom/android/server/k;

    invoke-static {p1}, Lcom/android/server/k;->ssp(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, this$0:Lcom/android/server/k;

    invoke-static {p0}, Lcom/android/server/k;->cno(Lcom/android/server/k;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void

    :catchall_7
    move-exception p0

    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    throw p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_8
        -0x5bb23923 -> :sswitch_7
        -0x56ac2893 -> :sswitch_6
        -0x561133b2 -> :sswitch_5
        0xa47f453 -> :sswitch_4
        0x1f50b9c2 -> :sswitch_3
        0x225bb32a -> :sswitch_2
        0x306b9bac -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
