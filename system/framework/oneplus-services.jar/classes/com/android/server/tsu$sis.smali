.class Lcom/android/server/tsu$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# static fields
.field public static final MSG_INIT:I = 0x8

.field public static final bud:I = 0x3

.field public static final cgv:I = 0x1

.field public static final irq:I = 0x5

.field public static final ivd:I = 0x9

.field public static final les:I = 0x4

.field public static final qeg:I = 0x7

.field public static final vdw:I = 0x6

.field public static final veq:I = 0x0

.field public static final vju:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/tsu;


# direct methods
.method constructor <init>(Lcom/android/server/tsu;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "msg.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusChargingGuarder"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, v1, Landroid/os/Message;->what:I

    const-string v4, "opcg_recover_charge_data"

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->igw(Lcom/android/server/tsu;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->dma(Lcom/android/server/tsu;)Lcom/android/server/tsu$zta;

    move-result-object v2

    iget-object v3, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v3}, Lcom/android/server/tsu;->ywr(Lcom/android/server/tsu;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->kth(Lcom/android/server/tsu;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "charging_guarder_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v0}, Lcom/android/server/tsu;->qbh(Lcom/android/server/tsu;)Lcom/android/server/tsu$you;

    move-result-object v0

    invoke-virtual {v1, v2, v5, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_6

    :pswitch_1
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->bio(Lcom/android/server/tsu;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_c

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/tsu$tsu;->Yc:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "total_connected_duration_secs"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/tsu$tsu;->Zc:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "total_suspended_duration_secs"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v4}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "optimized_charging"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v4}, Lcom/android/server/tsu;->A()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "full_charge_capacity"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/tsu$tsu;->_c:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "totalSusConChargingDurSecs"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/server/tsu$tsu;->ad:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "totalSusDisconnectedDurSecs"

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v4}, Lcom/android/server/tsu;->bio(Lcom/android/server/tsu;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v4

    iget-object v5, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v5}, Lcom/android/server/tsu;->igw(Lcom/android/server/tsu;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v3, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/tsu$tsu;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", optimized_charging:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tsu$tsu;->clear()V

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v0}, Lcom/android/server/tsu;->F()V

    goto/16 :goto_6

    :pswitch_2
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v0, v1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v9

    if-eqz v9, :cond_c

    :try_start_0
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    const-string v5, "android"

    const-string v6, "android"

    const/4 v7, 0x0

    const v8, 0x33954bd

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "push notification exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    :pswitch_3
    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tsu$tsu;->u()V

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v1

    if-ne v1, v6, :cond_c

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v0}, Lcom/android/server/tsu;->z()V

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tsu$tsu;->w()V

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/tsu$tsu;->x()V

    goto/16 :goto_6

    :pswitch_4
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v1}, Lcom/android/server/tsu;->y()V

    :pswitch_5
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v1

    if-ne v1, v6, :cond_c

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tsu$tsu;->v()V

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tsu$tsu;->x()V

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v1}, Lcom/android/server/tsu;->z()V

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->tsu(Lcom/android/server/tsu;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v0}, Lcom/android/server/tsu;->igw(Lcom/android/server/tsu;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_6

    :pswitch_6
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v1

    if-ne v1, v6, :cond_c

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/tsu$tsu;->x()V

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v1}, Lcom/android/server/tsu;->z()V

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;J)J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :pswitch_7
    const/16 v4, 0x9

    if-nez v2, :cond_0

    iget v2, v1, Landroid/os/Message;->arg1:I

    iget-object v7, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto :goto_2

    :cond_0
    const/4 v7, 0x3

    if-eq v2, v7, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v2

    if-ne v2, v6, :cond_1

    goto :goto_1

    :cond_1
    move v2, v5

    move v7, v2

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    iget-object v2, v2, Lcom/android/server/tsu;->jd:Landroid/os/BatteryManager;

    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v2

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/tsu$tsu;->zta(J)V

    move v7, v6

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "level:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", isCharging:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", mState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v9}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v8}, Lcom/android/server/tsu;->sis(Lcom/android/server/tsu;)J

    move-result-wide v8

    const-wide/32 v10, 0x36ee80

    sub-long/2addr v8, v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    if-eqz v7, :cond_3

    const/16 v7, 0x50

    if-lt v2, v7, :cond_3

    iget-object v7, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v7}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v7

    const/4 v14, 0x2

    if-ne v7, v14, :cond_3

    iget-object v7, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v7}, Lcom/android/server/tsu;->tsu(Lcom/android/server/tsu;)J

    move-result-wide v14

    cmp-long v7, v8, v14

    if-gtz v7, :cond_4

    :cond_3
    iget v1, v1, Landroid/os/Message;->what:I

    if-ne v1, v4, :cond_a

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v1

    if-ne v1, v6, :cond_a

    :cond_4
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    iget-object v1, v1, Lcom/android/server/tsu;->jd:Landroid/os/BatteryManager;

    invoke-virtual {v1}, Landroid/os/BatteryManager;->computeChargeTimeRemaining()J

    move-result-wide v14

    const-wide/16 v16, -0x1

    cmp-long v1, v14, v16

    if-eqz v1, :cond_5

    add-long/2addr v10, v14

    goto :goto_3

    :cond_5
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->rtg(Lcom/android/server/tsu;)J

    move-result-wide v16

    add-long v10, v16, v10

    :goto_3
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->sis(Lcom/android/server/tsu;)J

    move-result-wide v16

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->ssp(Lcom/android/server/tsu;)J

    move-result-wide v18

    add-long v16, v16, v18

    sub-long v18, v16, v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    add-long v20, v20, v10

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->cno(Lcom/android/server/tsu;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v22

    cmp-long v1, v20, v22

    if-lez v1, :cond_7

    const-string v1, "because of the next wake up alarm coming"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v1

    if-ne v1, v6, :cond_6

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v0}, Lcom/android/server/tsu;->z()V

    :cond_6
    return-void

    :cond_7
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->cno(Lcom/android/server/tsu;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v20

    const-wide v22, 0x7fffffffffffffffL

    cmp-long v1, v20, v22

    const-wide/16 v20, 0x0

    if-eqz v1, :cond_9

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->cno(Lcom/android/server/tsu;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlarmManager;->getNextWakeFromIdleTime()J

    move-result-wide v22

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    sub-long v22, v22, v24

    add-long v22, v22, v12

    sub-long v10, v22, v10

    cmp-long v1, v10, v20

    if-lez v1, :cond_8

    cmp-long v1, v22, v16

    if-gez v1, :cond_8

    const-string v1, "alarm comes first, so need to change end time"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v2

    move-wide v5, v10

    move-wide/from16 v1, v22

    move-wide v10, v1

    goto :goto_4

    :cond_8
    move v7, v2

    move-wide/from16 v10, v16

    move-wide/from16 v5, v18

    move-wide/from16 v1, v22

    goto :goto_4

    :cond_9
    move v7, v2

    move-wide/from16 v10, v16

    move-wide/from16 v5, v18

    move-wide/from16 v1, v20

    :goto_4
    new-instance v4, Ljava/text/SimpleDateFormat;

    move/from16 v17, v7

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "now:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ",startTime:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11, v8, v9}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v8, v12, v8

    if-ltz v8, :cond_b

    cmp-long v8, v12, v5

    if-gtz v8, :cond_b

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "computeChargeTimeRemaining:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ",end:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",alarmEnd:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v1}, Lcom/android/server/tsu;->y()V

    invoke-static {}, Lcom/android/server/tsu$tsu;->access$1100()Lcom/android/server/tsu$tsu;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/android/server/tsu$tsu;->you(J)V

    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    const-string v1, "disable Charging and send notification"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v2, "net.oneplus.charingguarder.intent.OPCG"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->igw(Lcom/android/server/tsu;)Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v2, v4, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->cno(Lcom/android/server/tsu;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v2}, Lcom/android/server/tsu;->cno(Lcom/android/server/tsu;)Landroid/app/AlarmManager;

    move-result-object v2

    invoke-virtual {v2, v7, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_5

    :cond_a
    move/from16 v17, v2

    :cond_b
    :goto_5
    iget-object v1, v0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    const/16 v1, 0x3c

    move/from16 v2, v17

    if-gt v2, v1, :cond_c

    const-string v1, "level is lower than 60, should enable charging"

    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, this$0:Lcom/android/server/tsu;

    invoke-virtual {v0}, Lcom/android/server/tsu;->z()V

    :cond_c
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_4
        :pswitch_7
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method
