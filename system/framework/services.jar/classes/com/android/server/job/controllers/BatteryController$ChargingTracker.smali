.class public final Lcom/android/server/job/controllers/BatteryController$ChargingTracker;
.super Landroid/content/BroadcastReceiver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ChargingTracker"
.end annotation


# instance fields
.field private mBatteryHealthy:Z

.field private mCharging:Z

.field private mLastBatterySeq:I

.field private mMonitor:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/job/controllers/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/BatteryController;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, mLastBatterySeq:I

    return-void
.end method


# virtual methods
.method public getSeq()I
    .locals 1

    iget v0, p0, mLastBatterySeq:I

    return v0
.end method

.method public isBatteryNotLow()Z
    .locals 1

    iget-boolean v0, p0, mBatteryHealthy:Z

    return v0
.end method

.method public isMonitoring()Z
    .locals 1

    iget-object v0, p0, mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnStablePower()Z
    .locals 1

    iget-boolean v0, p0, mCharging:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, mBatteryHealthy:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p0, p2}, onReceiveInternal(Landroid/content/Intent;)V

    return-void
.end method

.method public onReceiveInternal(Landroid/content/Intent;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "JobScheduler.Battery"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery life too low to do work. @ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean v3, p0, mBatteryHealthy:Z

    iget-object v2, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Battery life healthy enough to do work. @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v4, p0, mBatteryHealthy:Z

    iget-object v2, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_0

    :cond_3
    const-string v2, "android.os.action.CHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "JobScheduler.Battery"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received charging intent, fired @ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v5}, Ljava/time/Clock;->millis()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-boolean v4, p0, mCharging:Z

    iget-object v2, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    goto :goto_0

    :cond_5
    const-string v2, "android.os.action.DISCHARGING"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/job/controllers/BatteryController;->access$000()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "JobScheduler.Battery"

    const-string v4, "Disconnected from power."

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-boolean v3, p0, mCharging:Z

    iget-object v2, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    invoke-static {v2}, Lcom/android/server/job/controllers/BatteryController;->access$100(Lcom/android/server/job/controllers/BatteryController;)V

    :cond_7
    :goto_0
    const-string/jumbo v2, "seq"

    iget v3, p0, mLastBatterySeq:I

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, mLastBatterySeq:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMonitorBatteryLocked(Z)V
    .locals 3

    if-eqz p1, :cond_0

    iget-object v0, p0, mMonitor:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/BatteryController$ChargingTracker$1;-><init>(Lcom/android/server/job/controllers/BatteryController$ChargingTracker;)V

    iput-object v0, p0, mMonitor:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v2, p0, mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v0, p0, mMonitor:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v0, v0, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    iget-object v1, p0, mMonitor:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, mMonitor:Landroid/content/BroadcastReceiver;

    :cond_1
    :goto_0
    return-void
.end method

.method public startTracking()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.CHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, this$0:Lcom/android/server/job/controllers/BatteryController;

    iget-object v1, v1, Lcom/android/server/job/controllers/BatteryController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Landroid/os/BatteryManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryManagerInternal;

    invoke-virtual {v1}, Landroid/os/BatteryManagerInternal;->getBatteryLevelLow()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, mBatteryHealthy:Z

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result v2

    iput-boolean v2, p0, mCharging:Z

    return-void
.end method
