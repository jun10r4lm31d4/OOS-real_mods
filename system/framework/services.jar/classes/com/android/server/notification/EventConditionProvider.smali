.class public Lcom/android/server/notification/EventConditionProvider;
.super Lcom/android/server/notification/SystemConditionProviderService;
.source "EventConditionProvider.java"


# static fields
.field private static final ACTION_EVALUATE:Ljava/lang/String;

.field private static final CHANGE_DELAY:J = 0x7d0L

.field public static final COMPONENT:Landroid/content/ComponentName;

.field private static final DEBUG:Z

.field private static final EXTRA_TIME:Ljava/lang/String; = "time"

.field private static final NOT_SHOWN:Ljava/lang/String; = "..."

.field private static final REQUEST_CODE_EVALUATE:I = 0x1

.field private static final SIMPLE_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "ConditionProviders.ECP"


# instance fields
.field private mBootComplete:Z

.field private mConnected:Z

.field private final mContext:Landroid/content/Context;

.field private final mEvaluateSubscriptionsW:Ljava/lang/Runnable;

.field private mNextAlarmTime:J

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegistered:Z

.field private final mSubscriptions:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private final mThread:Landroid/os/HandlerThread;

.field private final mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field private final mTrackers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/notification/CalendarTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, DEBUG:Z

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, COMPONENT:Landroid/content/ComponentName;

    const-class v0, Lcom/android/server/notification/EventConditionProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, SIMPLE_NAME:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".EVALUATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, ACTION_EVALUATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/notification/SystemConditionProviderService;-><init>()V

    iput-object p0, p0, mContext:Landroid/content/Context;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mTrackers:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/server/notification/EventConditionProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$2;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    new-instance v0, Lcom/android/server/notification/EventConditionProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$3;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/notification/EventConditionProvider$4;

    invoke-direct {v0, p0}, Lcom/android/server/notification/EventConditionProvider$4;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    iput-object v0, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    sget-boolean v0, DEBUG:Z

    const-string v1, "ConditionProviders.ECP"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, mWorker:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, reloadTrackers()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/notification/EventConditionProvider;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/notification/EventConditionProvider;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, mWorker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, evaluateSubscriptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/notification/EventConditionProvider;)V
    .locals 0

    invoke-direct {p0}, evaluateSubscriptionsW()V

    return-void
.end method

.method private createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;
    .locals 12

    const-string v0, "..."

    const-string v1, "..."

    const-string v2, "..."

    new-instance v11, Landroid/service/notification/Condition;

    const-string v5, "..."

    const-string v6, "..."

    const-string v7, "..."

    const/4 v8, 0x0

    const/4 v10, 0x2

    move-object v3, v11

    move-object v4, p1

    move v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/service/notification/Condition;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    return-object v11
.end method

.method private evaluateSubscriptions()V
    .locals 2

    iget-object v0, p0, mWorker:Landroid/os/Handler;

    iget-object v1, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mWorker:Landroid/os/Handler;

    iget-object v1, p0, mEvaluateSubscriptionsW:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private evaluateSubscriptionsW()V
    .locals 19

    move-object/from16 v1, p0

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string v2, "evaluateSubscriptions"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, v1, mBootComplete:Z

    if-nez v0, :cond_2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ConditionProviders.ECP"

    const-string v2, "Skipping evaluate before boot complete"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v4, v0

    iget-object v5, v1, mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v5

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    :try_start_0
    iget-object v7, v1, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    iget-object v7, v1, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    iget-object v8, v1, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    iget-object v8, v1, mTrackerCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    :goto_1
    invoke-virtual {v7, v8}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    iget-object v6, v1, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    move v6, v0

    :goto_2
    invoke-direct {v1, v6}, setRegistered(Z)V

    const-wide/16 v8, 0x0

    iget-object v6, v1, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/Uri;

    invoke-static {v10}, Landroid/service/notification/ZenModeConfig;->tryParseEventConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$EventInfo;

    move-result-object v11

    if-nez v11, :cond_6

    invoke-direct {v1, v10, v0}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v12

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v6

    move-wide/from16 v16, v8

    goto/16 :goto_6

    :cond_6
    const/4 v12, 0x0

    iget-object v13, v11, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v13, :cond_9

    move v13, v0

    :goto_4
    iget-object v14, v1, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v13, v14, :cond_8

    iget-object v14, v1, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/notification/CalendarTracker;

    invoke-virtual {v14, v11, v2, v3}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v15

    if-nez v12, :cond_7

    move-object v12, v15

    move-object v0, v6

    move-wide/from16 v16, v8

    goto :goto_5

    :cond_7
    iget-boolean v7, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    iget-boolean v0, v15, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    or-int/2addr v0, v7

    iput-boolean v0, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    move-object v0, v6

    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide/from16 v16, v8

    iget-wide v8, v15, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    :goto_5
    add-int/lit8 v13, v13, 0x1

    move-object v6, v0

    move-wide/from16 v8, v16

    const/4 v0, 0x0

    goto :goto_4

    :cond_8
    move-object v0, v6

    move-wide/from16 v16, v8

    goto :goto_7

    :cond_9
    move-object v0, v6

    move-wide/from16 v16, v8

    iget v6, v11, Landroid/service/notification/ZenModeConfig$EventInfo;->userId:I

    invoke-static {v6}, Landroid/service/notification/ZenModeConfig$EventInfo;->resolveUserId(I)I

    move-result v6

    iget-object v7, v1, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/CalendarTracker;

    if-nez v7, :cond_a

    const-string v8, "ConditionProviders.ECP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "No calendar tracker found for user "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    invoke-direct {v1, v10, v8}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v9

    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_6
    move-object v6, v0

    move-wide/from16 v8, v16

    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_a
    invoke-virtual {v7, v11, v2, v3}, Lcom/android/server/notification/CalendarTracker;->checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    move-result-object v8

    move-object v12, v8

    :goto_7
    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_c

    cmp-long v6, v16, v8

    if-eqz v6, :cond_b

    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v6, v6, v16

    if-gez v6, :cond_c

    :cond_b
    iget-wide v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    move-wide v8, v6

    goto :goto_8

    :cond_c
    move-wide/from16 v8, v16

    :goto_8
    iget-boolean v6, v12, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    if-nez v6, :cond_d

    const/4 v6, 0x0

    invoke-direct {v1, v10, v6}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    goto :goto_9

    :cond_d
    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v1, v10, v7}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v13

    invoke-interface {v4, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    nop

    :goto_9
    move/from16 v18, v6

    move-object v6, v0

    move/from16 v0, v18

    goto/16 :goto_3

    :cond_e
    move-wide/from16 v16, v8

    invoke-direct {v1, v2, v3, v8, v9}, rescheduleAlarm(JJ)V

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/Condition;

    if-eqz v5, :cond_f

    invoke-virtual {v1, v5}, notifyCondition(Landroid/service/notification/Condition;)V

    :cond_f
    goto :goto_a

    :cond_10
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "evaluateSubscriptions took "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v5, "ConditionProviders.ECP"

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private reloadTrackers()V
    .locals 8

    sget-boolean v0, DEBUG:Z

    const-string v1, "ConditionProviders.ECP"

    if-eqz v0, :cond_0

    const-string/jumbo v0, "reloadTrackers"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/CalendarTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/notification/CalendarTracker;->setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->isSystem()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, mContext:Landroid/content/Context;

    goto :goto_2

    :cond_2
    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-static {v3, v2}, getContextForUser(Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to create context for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v4, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    new-instance v6, Lcom/android/server/notification/CalendarTracker;

    iget-object v7, p0, mContext:Landroid/content/Context;

    invoke-direct {v6, v7, v3}, Lcom/android/server/notification/CalendarTracker;-><init>(Landroid/content/Context;Landroid/content/Context;)V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, evaluateSubscriptions()V

    return-void
.end method

.method private rescheduleAlarm(JJ)V
    .locals 9

    iput-wide p3, p0, mNextAlarmTime:J

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, ACTION_EVALUATE:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "time"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v4, 0x8000000

    invoke-static {v1, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const-wide/16 v4, 0x0

    cmp-long v2, p3, v4

    const-string v6, "ConditionProviders.ECP"

    if-eqz v2, :cond_2

    cmp-long v2, p3, p1

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-boolean v2, DEBUG:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3, p4}, ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    sub-long v7, p3, p1

    invoke-static {v7, v8}, formatDuration(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {p1, p2}, ts(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    const-string v3, "Scheduling evaluate for %s, in %s, now=%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v4, p3, p4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_2
    :goto_0
    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not scheduling evaluate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    cmp-long v3, p3, v4

    if-nez v3, :cond_3

    const-string/jumbo v3, "no time specified"

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "specified time in the past"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method private setRegistered(Z)V
    .locals 2

    iget-boolean v0, p0, mRegistered:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setRegistered "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, mRegistered:Z

    iget-boolean v0, p0, mRegistered:Z

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, ACTION_EVALUATE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-object v0, p0, mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public asInterface()Landroid/service/notification/IConditionProvider;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Landroid/service/notification/IConditionProvider;

    return-object v0
.end method

.method public attachBase(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 7

    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v0, SIMPLE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "      mConnected="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mConnected:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mRegistered="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mRegistered:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "      mBootComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, mBootComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-wide v3, p0, mNextAlarmTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string/jumbo v2, "mNextAlarmTime"

    move-object v1, p1

    invoke-static/range {v1 .. v6}, dumpUpcomingTime(Ljava/io/PrintWriter;Ljava/lang/String;JJ)V

    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    const-string v1, "      mSubscriptions="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    const-string v3, "        "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "      mTrackers="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const-string v1, "        user="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    iget-object v1, p0, mTrackers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/CalendarTracker;

    const-string v2, "          "

    invoke-virtual {v1, v2, p1}, Lcom/android/server/notification/CalendarTracker;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public isValidConditionId(Landroid/net/Uri;)Z
    .locals 1

    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    return v0
.end method

.method public onBootComplete()V
    .locals 3

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onBootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, mBootComplete:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, mBootComplete:Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/notification/EventConditionProvider$1;

    invoke-direct {v2, p0}, Lcom/android/server/notification/EventConditionProvider$1;-><init>(Lcom/android/server/notification/EventConditionProvider;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, reloadTrackers()V

    return-void
.end method

.method public onConnected()V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mConnected:Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/notification/SystemConditionProviderService;->onDestroy()V

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ConditionProviders.ECP"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mConnected:Z

    return-void
.end method

.method public onSubscribe(Landroid/net/Uri;)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSubscribe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, createCondition(Landroid/net/Uri;I)Landroid/service/notification/Condition;

    move-result-object v0

    invoke-virtual {p0, v0}, notifyCondition(Landroid/service/notification/Condition;)V

    return-void

    :cond_1
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, evaluateSubscriptions()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnsubscribe(Landroid/net/Uri;)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUnsubscribe "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConditionProviders.ECP"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mSubscriptions:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mSubscriptions:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, evaluateSubscriptions()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
