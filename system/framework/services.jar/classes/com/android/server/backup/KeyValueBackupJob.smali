.class public Lcom/android/server/backup/KeyValueBackupJob;
.super Landroid/app/job/JobService;
.source "KeyValueBackupJob.java"


# static fields
.field private static final MAX_DEFERRAL:J = 0x5265c00L

.field public static final MAX_JOB_ID:I = 0x31fd950
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final MIN_JOB_ID:I = 0x31fd568
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "KeyValueBackupJob"

.field private static final USER_ID_EXTRA_KEY:Ljava/lang/String; = "userId"

.field private static sKeyValueJobService:Landroid/content/ComponentName;

.field private static final sNextScheduledForUserId:Landroid/util/SparseLongArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field

.field private static final sScheduledForUserId:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android"

    invoke-direct {v0, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, sKeyValueJobService:Landroid/content/ComponentName;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    sput-object v0, sScheduledForUserId:Landroid/util/SparseBooleanArray;

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    sput-object v0, sNextScheduledForUserId:Landroid/util/SparseLongArray;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static cancel(ILandroid/content/Context;)V
    .locals 3

    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    :try_start_0
    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobScheduler;

    invoke-static {p0}, getJobIdForUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/job/JobScheduler;->cancel(I)V

    invoke-static {p0}, clearScheduledForUserId(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static clearScheduledForUserId(I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "KeyValueBackupJob.class"
        }
    .end annotation

    sget-object v0, sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->delete(I)V

    sget-object v0, sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseLongArray;->delete(I)V

    return-void
.end method

.method private static getJobIdForUserId(I)I
    .locals 2

    const v0, 0x31fd568

    const v1, 0x31fd950

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/JobIdManager;->getJobIdForUserId(III)I

    move-result v0

    return v0
.end method

.method public static isScheduled(I)Z
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    :try_start_0
    sget-object v1, sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static nextScheduled(I)J
    .locals 3

    const-class v0, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v0

    :try_start_0
    sget-object v1, sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V
    .locals 19

    move/from16 v1, p0

    const-class v2, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v2

    :try_start_0
    sget-object v0, sScheduledForUserId:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    monitor-enter p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupIntervalMilliseconds()J

    move-result-wide v3

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupFuzzMilliseconds()J

    move-result-wide v5

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequiredNetworkType()I

    move-result v0

    invoke-virtual/range {p4 .. p4}, Lcom/android/server/backup/BackupManagerConstants;->getKeyValueBackupRequireCharging()Z

    move-result v7

    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v8, 0x0

    cmp-long v8, p2, v8

    if-gtz v8, :cond_1

    :try_start_2
    new-instance v8, Ljava/util/Random;

    invoke-direct {v8}, Ljava/util/Random;-><init>()V

    long-to-int v9, v5

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    int-to-long v8, v8

    add-long/2addr v8, v3

    goto :goto_0

    :cond_1
    move-wide/from16 v8, p2

    :goto_0
    :try_start_3
    const-string v10, "KeyValueBackupJob"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Scheduling k/v pass in "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    const-wide/16 v14, 0x3c

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, " minutes"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/app/job/JobInfo$Builder;

    invoke-static/range {p0 .. p0}, getJobIdForUserId(I)I

    move-result v11

    sget-object v12, sKeyValueJobService:Landroid/content/ComponentName;

    invoke-direct {v10, v11, v12}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    invoke-virtual {v10, v8, v9}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    const-wide/32 v11, 0x5265c00

    invoke-virtual {v10, v11, v12}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v12, "userId"

    invoke-virtual {v11, v12, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v10, v11}, Landroid/app/job/JobInfo$Builder;->setTransientExtras(Landroid/os/Bundle;)Landroid/app/job/JobInfo$Builder;

    const-string/jumbo v12, "jobscheduler"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v13, p1

    :try_start_4
    invoke-virtual {v13, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/job/JobScheduler;

    invoke-virtual {v10}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    sget-object v14, sScheduledForUserId:Landroid/util/SparseBooleanArray;

    const/4 v15, 0x1

    invoke-virtual {v14, v1, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    sget-object v14, sNextScheduledForUserId:Landroid/util/SparseLongArray;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide/from16 v17, v3

    add-long v3, v15, v8

    invoke-virtual {v14, v1, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v13, p1

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v13, p1

    :goto_1
    :try_start_5
    monitor-exit p4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    goto :goto_1

    :catchall_4
    move-exception v0

    move-object/from16 v13, p1

    :goto_2
    move-wide/from16 v8, p2

    :goto_3
    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_3
.end method

.method public static schedule(ILandroid/content/Context;Lcom/android/server/backup/BackupManagerConstants;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1, p2}, schedule(ILandroid/content/Context;JLcom/android/server/backup/BackupManagerConstants;)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "userId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-class v1, Lcom/android/server/backup/KeyValueBackupJob;

    monitor-enter v1

    :try_start_0
    invoke-static {v0}, clearScheduledForUserId(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/backup/BackupManagerService;->getInstance()Lcom/android/server/backup/Trampoline;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, v0}, Lcom/android/server/backup/Trampoline;->backupNowForUser(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :goto_1
    const/4 v2, 0x0

    return v2

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
