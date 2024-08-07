.class public final Lcom/android/server/job/controllers/JobStatus;
.super Ljava/lang/Object;
.source "JobStatus.java"


# static fields
.field static final CONSTRAINTS_OF_INTEREST:I = -0x6bfffff1

.field static final CONSTRAINT_BACKGROUND_NOT_RESTRICTED:I = 0x400000

.field static final CONSTRAINT_BATTERY_NOT_LOW:I = 0x2

.field static final CONSTRAINT_CHARGING:I = 0x1

.field static final CONSTRAINT_CONNECTIVITY:I = 0x10000000

.field static final CONSTRAINT_CONTENT_TRIGGER:I = 0x4000000

.field static final CONSTRAINT_DEADLINE:I = 0x40000000

.field static final CONSTRAINT_DEVICE_NOT_DOZING:I = 0x2000000

.field static final CONSTRAINT_IDLE:I = 0x4

.field static final CONSTRAINT_STORAGE_NOT_LOW:I = 0x8

.field static final CONSTRAINT_TIMING_DELAY:I = -0x80000000

.field static final CONSTRAINT_WITHIN_QUOTA:I = 0x1000000

.field static final DEBUG:Z

.field static final DEBUG_PREPARE:Z = true

.field public static final DEFAULT_TRIGGER_MAX_DELAY:J = 0x1d4c0L

.field public static final DEFAULT_TRIGGER_UPDATE_DELAY:J = 0x2710L

.field public static final INTERNAL_FLAG_HAS_FOREGROUND_EXEMPTION:I = 0x1

.field public static final MIN_TRIGGER_MAX_DELAY:J = 0x3e8L

.field public static final MIN_TRIGGER_UPDATE_DELAY:J = 0x1f4L

.field public static final NO_EARLIEST_RUNTIME:J = 0x0L

.field public static final NO_LATEST_RUNTIME:J = 0x7fffffffffffffffL

.field public static final OVERRIDE_FULL:I = 0x2

.field public static final OVERRIDE_SOFT:I = 0x1

.field static final SOFT_OVERRIDE_CONSTRAINTS:I = -0x7ffffff1

.field private static final STATSD_CONSTRAINTS_TO_LOG:I = -0x3afffff4

.field private static final STATS_LOG_ENABLED:Z = false

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"

.field public static final TRACKING_BATTERY:I = 0x1

.field public static final TRACKING_CONNECTIVITY:I = 0x2

.field public static final TRACKING_CONTENT:I = 0x4

.field public static final TRACKING_IDLE:I = 0x8

.field public static final TRACKING_QUOTA:I = 0x40

.field public static final TRACKING_STORAGE:I = 0x10

.field public static final TRACKING_TIME:I = 0x20


# instance fields
.field private final baseHeartbeat:J

.field final batteryName:Ljava/lang/String;

.field final callingUid:I

.field public changedAuthorities:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public changedUris:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field contentObserverJobInstance:Lcom/android/server/job/controllers/ContentObserverController$JobInstance;

.field public dozeWhitelisted:Z

.field private final earliestRunTimeElapsedMillis:J

.field public enqueueTime:J

.field public executingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field final job:Landroid/app/job/JobInfo;

.field public lastEvaluatedPriority:I

.field private final latestRunTimeElapsedMillis:J

.field private mInternalFlags:I

.field private mLastFailedRunTime:J

.field private mLastSuccessfulRunTime:J

.field private mOriginalLatestRunTimeElapsedMillis:J

.field private mPersistedUtcTimes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mReadyDeadlineSatisfied:Z

.field private mReadyNotDozing:Z

.field private mReadyNotRestrictedInBg:Z

.field private mReadyWithinQuota:Z

.field private final mRequiredConstraintsOfInterest:I

.field private mSatisfiedConstraintsOfInterest:I

.field public madeActive:J

.field public madePending:J

.field public network:Landroid/net/Network;

.field public nextPendingWorkId:I

.field private final numFailures:I

.field public overrideState:I

.field public pendingWork:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private prepared:Z

.field final requiredConstraints:I

.field satisfiedConstraints:I

.field final sourcePackageName:Ljava/lang/String;

.field final sourceTag:Ljava/lang/String;

.field final sourceUid:I

.field final sourceUserId:I

.field private standbyBucket:I

.field final tag:Ljava/lang/String;

.field final targetSdkVersion:I

.field private totalNetworkBytes:J

.field private trackingControllers:I

.field public uidActive:Z

.field private unpreparedPoint:Ljava/lang/Throwable;

.field private uriPerms:Lcom/android/server/job/GrantedUriPermissions;

.field private whenStandbyDeferred:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V
    .locals 20

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v5, p11

    move-wide/from16 v7, p13

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v9, 0x0

    iput-object v9, v1, unpreparedPoint:Ljava/lang/Throwable;

    const/4 v10, 0x0

    iput v10, v1, satisfiedConstraints:I

    iput v10, v1, mSatisfiedConstraintsOfInterest:I

    const/4 v11, 0x1

    iput v11, v1, nextPendingWorkId:I

    iput v10, v1, overrideState:I

    const-wide/16 v12, -0x1

    iput-wide v12, v1, totalNetworkBytes:J

    move-object/from16 v12, p1

    iput-object v12, v1, job:Landroid/app/job/JobInfo;

    iput v2, v1, callingUid:I

    move/from16 v13, p3

    iput v13, v1, targetSdkVersion:I

    move/from16 v14, p6

    iput v14, v1, standbyBucket:I

    move-wide/from16 v11, p7

    iput-wide v11, v1, baseHeartbeat:J

    const/16 v16, -0x1

    const/4 v15, -0x1

    if-eq v4, v15, :cond_0

    if-eqz v3, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v3, v10, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v16, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    move/from16 v0, v16

    :goto_0
    if-ne v0, v15, :cond_1

    iput v2, v1, sourceUid:I

    invoke-static/range {p2 .. p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v15

    iput v15, v1, sourceUserId:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, sourcePackageName:Ljava/lang/String;

    iput-object v9, v1, sourceTag:Ljava/lang/String;

    move-object/from16 v9, p9

    goto :goto_1

    :cond_1
    iput v0, v1, sourceUid:I

    iput v4, v1, sourceUserId:I

    iput-object v3, v1, sourcePackageName:Ljava/lang/String;

    move-object/from16 v9, p9

    iput-object v9, v1, sourceTag:Ljava/lang/String;

    :goto_1
    iget-object v15, v1, sourceTag:Ljava/lang/String;

    if-eqz v15, :cond_2

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, sourceTag:Ljava/lang/String;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    :goto_2
    iput-object v10, v1, batteryName:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "*job*/"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, batteryName:Ljava/lang/String;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, tag:Ljava/lang/String;

    iput-wide v5, v1, earliestRunTimeElapsedMillis:J

    iput-wide v7, v1, latestRunTimeElapsedMillis:J

    iput-wide v7, v1, mOriginalLatestRunTimeElapsedMillis:J

    move/from16 v10, p10

    iput v10, v1, numFailures:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getConstraintFlags()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v18

    if-eqz v18, :cond_3

    const/high16 v18, 0x10000000

    or-int v15, v15, v18

    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v18, v5, v18

    if-eqz v18, :cond_4

    const/high16 v18, -0x80000000

    or-int v15, v15, v18

    :cond_4
    const-wide v18, 0x7fffffffffffffffL

    cmp-long v18, v7, v18

    if-eqz v18, :cond_5

    const/high16 v18, 0x40000000    # 2.0f

    or-int v15, v15, v18

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v18

    if-eqz v18, :cond_6

    const/high16 v18, 0x4000000

    or-int v15, v15, v18

    :cond_6
    iput v15, v1, requiredConstraints:I

    const v18, -0x6bfffff1

    move/from16 v19, v0

    and-int v0, v15, v18

    iput v0, v1, mRequiredConstraintsOfInterest:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    const/16 v17, 0x1

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_7

    move/from16 v0, v17

    goto :goto_3

    :cond_7
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, v1, mReadyNotDozing:Z

    move-wide/from16 v2, p15

    iput-wide v2, v1, mLastSuccessfulRunTime:J

    move-wide/from16 v2, p17

    iput-wide v2, v1, mLastFailedRunTime:J

    move/from16 v2, p19

    iput v2, v1, mInternalFlags:I

    invoke-direct/range {p0 .. p0}, updateEstimatedNetworkBytesLocked()V

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v0

    iget-object v0, v0, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    iget v3, v1, sourceUid:I

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->setSingleUid(I)Landroid/net/NetworkCapabilities;

    :cond_8
    return-void
.end method

.method public constructor <init>(Landroid/app/job/JobInfo;ILjava/lang/String;IIJLjava/lang/String;JJJJLandroid/util/Pair;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/job/JobInfo;",
            "I",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/lang/String;",
            "JJJJ",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    move-object/from16 v0, p17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move-wide/from16 v8, p6

    move-object/from16 v10, p8

    move-wide/from16 v12, p9

    move-wide/from16 v14, p11

    move-wide/from16 v16, p13

    move-wide/from16 v18, p15

    move/from16 v20, p18

    invoke-static/range {p1 .. p1}, resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v4

    const/4 v11, 0x0

    invoke-direct/range {v1 .. v20}, <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    iput-object v0, v1, mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v0, :cond_0

    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "JobSchedulerService"

    const-string v3, "+ restored job with RTC times because of bad boot clock"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, getUid()I

    move-result v3

    iget v4, v0, targetSdkVersion:I

    invoke-virtual/range {p1 .. p1}, getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, getSourceUserId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, getStandbyBucket()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, getBaseHeartbeat()J

    move-result-wide v8

    invoke-virtual/range {p1 .. p1}, getSourceTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, getNumFailures()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, getEarliestRunTime()J

    move-result-wide v12

    invoke-virtual/range {p1 .. p1}, getLatestRunTimeElapsed()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, getLastSuccessfulRunTime()J

    move-result-wide v16

    invoke-virtual/range {p1 .. p1}, getLastFailedRunTime()J

    move-result-wide v18

    invoke-virtual/range {p1 .. p1}, getInternalFlags()I

    move-result v20

    invoke-direct/range {v1 .. v20}, <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    iget-object v1, v0, mPersistedUtcTimes:Landroid/util/Pair;

    move-object/from16 v2, p0

    iput-object v1, v2, mPersistedUtcTimes:Landroid/util/Pair;

    iget-object v1, v0, mPersistedUtcTimes:Landroid/util/Pair;

    if-eqz v1, :cond_0

    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "here"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-string v3, "JobSchedulerService"

    const-string v4, "Cloning job with persisted run times"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/controllers/JobStatus;JJJIJJ)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-wide/from16 v8, p2

    move-wide/from16 v12, p4

    move-wide/from16 v14, p6

    move/from16 v11, p8

    move-wide/from16 v16, p9

    move-wide/from16 v18, p11

    iget-object v2, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual/range {p1 .. p1}, getUid()I

    move-result v3

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-static {v4}, resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v4

    invoke-virtual/range {p1 .. p1}, getSourcePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, getSourceUserId()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, getStandbyBucket()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, getSourceTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, getInternalFlags()I

    move-result v20

    invoke-direct/range {v1 .. v20}, <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    return-void
.end method

.method static bucketName(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "NEVER"

    return-object v0

    :cond_1
    const-string v0, "RARE"

    return-object v0

    :cond_2
    const-string v0, "FREQUENT"

    return-object v0

    :cond_3
    const-string v0, "WORKING_SET"

    return-object v0

    :cond_4
    const-string v0, "ACTIVE"

    return-object v0
.end method

.method private computeEstimatedNetworkBytesLocked()J
    .locals 8

    const-wide/16 v0, 0x0

    iget-object v2, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getEstimatedNetworkBytes()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    :cond_0
    add-long/2addr v0, v2

    iget-object v6, p0, pendingWork:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    iget-object v7, p0, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/job/JobWorkItem;

    invoke-virtual {v7}, Landroid/app/job/JobWorkItem;->getEstimatedNetworkBytes()J

    move-result-wide v2

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    return-wide v4

    :cond_1
    add-long/2addr v0, v2

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public static createFromJobInfo(Landroid/app/job/JobInfo;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/controllers/JobStatus;
    .locals 30

    move/from16 v13, p3

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/job/JobInfo;->getMinPeriodMillis()J

    move-result-wide v3

    const-wide v5, 0x757b12c00L

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    add-long v5, v11, v3

    nop

    invoke-static {}, Landroid/app/job/JobInfo;->getMinFlexMillis()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v9

    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    sub-long v3, v5, v7

    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    goto :goto_2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v3

    add-long/2addr v3, v11

    goto :goto_0

    :cond_1
    move-wide v3, v1

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v5

    add-long/2addr v5, v11

    goto :goto_1

    :cond_2
    const-wide v5, 0x7fffffffffffffffL

    :goto_1
    move-wide/from16 v20, v3

    move-wide/from16 v22, v5

    :goto_2
    if-eqz p2, :cond_3

    move-object/from16 v0, p2

    goto :goto_3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_3
    move-object v14, v0

    invoke-static {v14, v13, v11, v12}, Lcom/android/server/job/JobSchedulerService;->standbyBucketForPackage(Ljava/lang/String;IJ)I

    move-result v9

    const-class v0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/job/JobSchedulerInternal;

    if-eqz v6, :cond_4

    invoke-interface {v6, v14, v13, v9}, Lcom/android/server/job/JobSchedulerInternal;->baseHeartbeatForApp(Ljava/lang/String;II)J

    move-result-wide v0

    move-wide v7, v0

    goto :goto_4

    :cond_4
    move-wide v7, v1

    :goto_4
    nop

    new-instance v24, Lcom/android/server/job/controllers/JobStatus;

    move-object/from16 v0, v24

    invoke-static/range {p0 .. p0}, resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I

    move-result v3

    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v25, v6

    move v6, v9

    move/from16 v26, v9

    move-object/from16 v9, p4

    move-wide/from16 v27, v11

    move-wide/from16 v11, v20

    move-object/from16 v29, v14

    move-wide/from16 v13, v22

    invoke-direct/range {v0 .. v19}, <init>(Landroid/app/job/JobInfo;IILjava/lang/String;IIJLjava/lang/String;IJJJJI)V

    return-object v24
.end method

.method private dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-wide v3, 0x10b00000003L

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/Intent;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    invoke-virtual {p4}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/android/server/job/GrantedUriPermissions;

    const-wide v4, 0x10b00000004L

    invoke-virtual {v3, p1, v4, v5}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method private dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V
    .locals 3

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": #"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getDeliveryCount()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v0, "x "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  URI grants:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private formatRunTime(Ljava/io/PrintWriter;JJJ)V
    .locals 2

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    :goto_0
    return-void
.end method

.method private formatRunTime(Ljava/lang/StringBuilder;JJJ)V
    .locals 2

    cmp-long v0, p2, p4

    if-nez v0, :cond_0

    const-string/jumbo v0, "none"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sub-long v0, p2, p6

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method private getProtoConstraint(I)I
    .locals 2

    const/high16 v0, -0x80000000

    const/4 v1, 0x4

    if-eq p1, v0, :cond_a

    if-eq p1, v1, :cond_9

    const/16 v0, 0x8

    if-eq p1, v0, :cond_8

    const/high16 v1, 0x400000

    if-eq p1, v1, :cond_7

    const/high16 v1, 0x1000000

    if-eq p1, v1, :cond_6

    const/high16 v1, 0x2000000

    if-eq p1, v1, :cond_5

    const/high16 v1, 0x4000000

    if-eq p1, v1, :cond_4

    const/high16 v0, 0x10000000

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x5

    return v0

    :cond_3
    const/4 v0, 0x7

    return v0

    :cond_4
    return v0

    :cond_5
    const/16 v0, 0x9

    return v0

    :cond_6
    const/16 v0, 0xa

    return v0

    :cond_7
    const/16 v0, 0xb

    return v0

    :cond_8
    const/4 v0, 0x3

    return v0

    :cond_9
    const/4 v0, 0x6

    return v0

    :cond_a
    return v1
.end method

.method private isConstraintsSatisfied(I)Z
    .locals 4

    iget v0, p0, overrideState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    move v2, p1

    if-ne v0, v1, :cond_1

    iget v0, p0, requiredConstraints:I

    const v3, -0x7ffffff1

    and-int/2addr v0, v3

    or-int/2addr v2, v0

    :cond_1
    iget v0, p0, mRequiredConstraintsOfInterest:I

    and-int v3, v2, v0

    if-ne v3, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isReady(I)Z
    .locals 2

    iget-boolean v0, p0, mReadyWithinQuota:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, mReadyNotDozing:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, mReadyNotRestrictedInBg:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, mReadyDeadlineSatisfied:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, isConstraintsSatisfied(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return v1
.end method

.method private static resolveTargetSdkVersion(Landroid/app/job/JobInfo;)I
    .locals 2

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManagerInternal;->getPackageTargetSdkVersion(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/job/JobWorkItem;->getGrants()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/GrantedUriPermissions;

    invoke-virtual {v0, p0}, Lcom/android/server/job/GrantedUriPermissions;->revoke(Landroid/app/IActivityManager;)V

    :cond_0
    return-void
.end method

.method private static ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IActivityManager;",
            "Ljava/util/ArrayList<",
            "Landroid/app/job/JobWorkItem;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-static {p0, v2}, ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateEstimatedNetworkBytesLocked()V
    .locals 2

    invoke-direct {p0}, computeEstimatedNetworkBytesLocked()J

    move-result-wide v0

    iput-wide v0, p0, totalNetworkBytes:J

    return-void
.end method


# virtual methods
.method public addInternalFlags(I)V
    .locals 1

    iget v0, p0, mInternalFlags:I

    or-int/2addr v0, p1

    iput v0, p0, mInternalFlags:I

    return-void
.end method

.method public clearPersistedUtcTimes()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, mPersistedUtcTimes:Landroid/util/Pair;

    return-void
.end method

.method clearTrackingController(I)Z
    .locals 2

    iget v0, p0, trackingControllers:I

    and-int v1, v0, p1

    if-eqz v1, :cond_0

    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, trackingControllers:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public completeWorkLocked(Landroid/app/IActivityManager;I)Z
    .locals 4

    iget-object v0, p0, executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/job/JobWorkItem;

    invoke-virtual {v2}, Landroid/app/job/JobWorkItem;->getWorkId()I

    move-result v3

    if-ne v3, p2, :cond_0

    iget-object v3, p0, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-static {p1, v2}, ungrantWorkItem(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V

    const/4 v3, 0x1

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public dequeueWorkLocked()Landroid/app/job/JobWorkItem;
    .locals 2

    iget-object v0, p0, pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, pendingWork:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobWorkItem;

    if-eqz v0, :cond_1

    iget-object v1, p0, executingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, executingWork:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p0, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->bumpDeliveryCount()V

    :cond_1
    invoke-direct {p0}, updateEstimatedNetworkBytesLocked()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;JZJ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget v4, v0, callingUid:I

    const-wide v5, 0x10500000001L

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v0, tag:Ljava/lang/String;

    const-wide v7, 0x10900000002L

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, getSourceUid()I

    move-result v4

    const-wide v9, 0x10500000003L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual/range {p0 .. p0}, getSourceUserId()I

    move-result v4

    const-wide v9, 0x10500000004L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual/range {p0 .. p0}, getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    const-wide v9, 0x10900000005L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, getInternalFlags()I

    move-result v4

    const-wide v9, 0x10300000018L

    invoke-virtual {v1, v9, v10, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v11, 0x1080000000aL

    const-wide v13, 0x10800000002L

    const-wide/16 v15, 0x0

    if-eqz p4, :cond_a

    const-wide v9, 0x10b00000006L

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v9

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v4

    const-wide v7, 0x10b00000001L

    invoke-virtual {v4, v1, v7, v8}, Landroid/content/ComponentName;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    invoke-virtual {v1, v13, v14, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10300000003L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10300000004L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v13

    invoke-virtual {v1, v7, v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v7, 0x10800000005L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x11100000006L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10500000007L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10800000008L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v7, 0x10800000009L

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v4

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v4

    invoke-virtual {v1, v11, v12, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_0
    iget-object v7, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v7

    array-length v7, v7

    if-ge v4, v7, :cond_1

    const-wide v7, 0x20b0000000bL

    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    iget-object v13, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v13}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v13

    aget-object v13, v13, v4

    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v14

    invoke-virtual {v1, v5, v6, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {v13}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v14

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const-wide v11, 0x10900000002L

    invoke-virtual {v1, v11, v12, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_1

    :cond_0
    const-wide v11, 0x10900000002L

    :goto_1
    invoke-virtual {v1, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    const-wide v5, 0x10500000001L

    const-wide v11, 0x1080000000aL

    goto :goto_0

    :cond_1
    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_2

    const-wide v4, 0x1030000000cL

    iget-object v6, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_2
    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v4

    cmp-long v4, v4, v15

    if-ltz v4, :cond_3

    const-wide v4, 0x1030000000dL

    iget-object v6, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_3
    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PersistableBundle;->maybeIsEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    const-wide v5, 0x10b0000000eL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/PersistableBundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_4
    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v4

    const-wide v5, 0x10b0000000fL

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/Bundle;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_5
    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-eqz v4, :cond_6

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    const-wide v5, 0x10b00000010L

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/ClipData;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_6
    iget-object v4, v0, uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v4, :cond_7

    const-wide v5, 0x10b00000011L

    invoke-virtual {v4, v1, v5, v6}, Lcom/android/server/job/GrantedUriPermissions;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_7
    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    if-eqz v4, :cond_8

    iget-object v4, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v4

    const-wide v5, 0x10b00000012L

    invoke-virtual {v4, v1, v5, v6}, Landroid/net/NetworkRequest;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_8
    iget-wide v4, v0, totalNetworkBytes:J

    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_9

    const-wide v6, 0x10300000013L

    invoke-virtual {v1, v6, v7, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :cond_9
    const-wide v4, 0x10300000014L

    iget-object v6, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10300000015L

    iget-object v6, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v6

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v4, 0x10b00000016L

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v6, 0x10e00000001L

    iget-object v8, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000002L

    iget-object v8, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v11

    invoke-virtual {v1, v6, v7, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v6, 0x10800000017L

    iget-object v8, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v6, 0x10800000018L

    iget-object v8, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v8}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v8

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    :cond_a
    const-wide v4, 0x20e00000007L

    iget v6, v0, requiredConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    if-eqz p4, :cond_b

    const-wide v4, 0x20e00000008L

    iget v6, v0, satisfiedConstraints:I

    invoke-virtual {v0, v1, v4, v5, v6}, dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    const-wide v4, 0x20e00000009L

    iget v6, v0, requiredConstraints:I

    const/high16 v7, 0x1000000

    or-int/2addr v6, v7

    iget v7, v0, satisfiedConstraints:I

    not-int v7, v7

    and-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V

    iget-boolean v4, v0, dozeWhitelisted:Z

    const-wide v5, 0x1080000000aL

    invoke-virtual {v1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000001aL

    iget-boolean v6, v0, uidActive:Z

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    const-wide v4, 0x1080000001bL

    iget-object v6, v0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v6

    invoke-virtual {v1, v4, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    :cond_b
    iget v4, v0, trackingControllers:I

    const/4 v5, 0x1

    and-int/2addr v4, v5

    const/4 v6, 0x0

    const-wide v7, 0x20e0000000bL

    if-eqz v4, :cond_c

    invoke-virtual {v1, v7, v8, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_c
    iget v4, v0, trackingControllers:I

    const/4 v9, 0x2

    and-int/2addr v4, v9

    if-eqz v4, :cond_d

    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_d
    iget v4, v0, trackingControllers:I

    const/4 v5, 0x4

    and-int/2addr v4, v5

    if-eqz v4, :cond_e

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_e
    iget v4, v0, trackingControllers:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_f

    const/4 v4, 0x3

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_f
    iget v4, v0, trackingControllers:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_10

    invoke-virtual {v1, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_10
    iget v4, v0, trackingControllers:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_11

    const/4 v4, 0x5

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_11
    iget v4, v0, trackingControllers:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_12

    const/4 v4, 0x6

    invoke-virtual {v1, v7, v8, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_12
    const-wide v4, 0x10b00000019L    # 5.665728762E-312

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    const-wide v7, 0x10800000001L

    iget-boolean v9, v0, mReadyNotDozing:Z

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v7, v0, mReadyNotRestrictedInBg:Z

    const-wide v8, 0x10800000002L

    invoke-virtual {v1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {v1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    iget-object v7, v0, changedAuthorities:Landroid/util/ArraySet;

    if-eqz v7, :cond_13

    const/4 v7, 0x0

    :goto_2
    iget-object v8, v0, changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_13

    const-wide v8, 0x2090000000cL

    iget-object v10, v0, changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_13
    iget-object v7, v0, changedUris:Landroid/util/ArraySet;

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    :goto_3
    iget-object v8, v0, changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v7, v8, :cond_14

    iget-object v8, v0, changedUris:Landroid/util/ArraySet;

    invoke-virtual {v8, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/Uri;

    const-wide v9, 0x2090000000dL

    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v10, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_14
    iget-object v7, v0, network:Landroid/net/Network;

    if-eqz v7, :cond_15

    const-wide v8, 0x10b0000000eL

    invoke-virtual {v7, v1, v8, v9}, Landroid/net/Network;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_15
    iget-object v7, v0, pendingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_16

    const/4 v7, 0x0

    :goto_4
    iget-object v8, v0, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_16

    const-wide v8, 0x20b0000000fL

    iget-object v10, v0, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v8, v9, v10}, dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_16
    iget-object v7, v0, executingWork:Ljava/util/ArrayList;

    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_17

    const/4 v7, 0x0

    :goto_5
    iget-object v8, v0, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_17

    const-wide v8, 0x20b00000010L

    iget-object v10, v0, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/job/JobWorkItem;

    invoke-direct {v0, v1, v8, v9, v10}, dumpJobWorkItem(Landroid/util/proto/ProtoOutputStream;JLandroid/app/job/JobWorkItem;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_17
    const-wide v7, 0x10e00000011L

    iget v9, v0, standbyBucket:I

    invoke-virtual {v1, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v7, 0x10300000012L

    iget-wide v9, v0, enqueueTime:J

    sub-long v9, p5, v9

    invoke-virtual {v1, v7, v8, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v7, v0, earliestRunTimeElapsedMillis:J

    cmp-long v9, v7, v15

    const-wide v10, 0x11200000013L

    if-nez v9, :cond_18

    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_6

    :cond_18
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_6
    iget-wide v7, v0, latestRunTimeElapsedMillis:J

    const-wide v9, 0x7fffffffffffffffL

    cmp-long v9, v7, v9

    const-wide v10, 0x11200000014L

    if-nez v9, :cond_19

    invoke-virtual {v1, v10, v11, v6}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    goto :goto_7

    :cond_19
    sub-long v7, v7, p5

    invoke-virtual {v1, v10, v11, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    :goto_7
    const-wide v6, 0x10500000015L

    iget v8, v0, numFailures:I

    invoke-virtual {v1, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10300000016L

    iget-wide v8, v0, mLastSuccessfulRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10300000017L

    iget-wide v8, v0, mLastFailedRunTime:J

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;ZJ)V
    .locals 15

    move-object v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-wide/from16 v11, p4

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, callingUid:I

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " tag="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, tag:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Source: uid="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getSourceUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, " user="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getSourceUserId()I

    move-result v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " pkg="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v0, 0x20

    const-string v1, "  "

    const-wide/16 v13, 0x0

    if-eqz p3, :cond_12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "JobInfo:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Service: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  PERIODIC: interval="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v2, " flex="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_0
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  PERSISTED"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Priority: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v2

    invoke-static {v2}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Flags: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, getInternalFlags()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Internal flags: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getInternalFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getInternalFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    const-string v2, " HAS_FOREGROUND_EXEMPTION"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_5
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Requires: charging="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " batteryNotLow="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Z)V

    const-string v2, " deviceIdle="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger content URIs:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_0
    iget-object v3, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    array-length v3, v3

    if-ge v2, v3, :cond_6

    iget-object v3, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    "

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/app/job/JobInfo$TriggerContentUri;->getFlags()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {v3}, Landroid/app/job/JobInfo$TriggerContentUri;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-ltz v2, :cond_7

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger update delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_7
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-ltz v2, :cond_8

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Trigger max delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_8
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->maybeIsEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Extras: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PersistableBundle;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_a

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->maybeIsEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Transient extras: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getTransientExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Bundle;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_b

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Clip data: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v3, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v3}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ClipData;->toShortString(Ljava/lang/StringBuilder;)V

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_b
    iget-object v2, v8, uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v2, :cond_c

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Granted URI permissions:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v8, uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v9, v3}, Lcom/android/server/job/GrantedUriPermissions;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_c
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    if-eqz v2, :cond_d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network type: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_d
    iget-wide v2, v8, totalNetworkBytes:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Network bytes: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v8, totalNetworkBytes:J

    invoke-virtual {v9, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    :cond_e
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Minimum latency: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMinLatencyMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_f
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    cmp-long v2, v2, v13

    if-eqz v2, :cond_10

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Max execution delay: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getMaxExecutionDelayMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_10
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Backoff: policy="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " initial="

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v2

    invoke-static {v2, v3, v9}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Has early constraint"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  Has late constraint"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Required constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v8, requiredConstraints:I

    invoke-virtual {p0, v9, v2}, dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    if-eqz p3, :cond_15

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Satisfied constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v8, satisfiedConstraints:I

    invoke-virtual {p0, v9, v2}, dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Unsatisfied constraints:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v8, requiredConstraints:I

    const/high16 v3, 0x1000000

    or-int/2addr v2, v3

    iget v3, v8, satisfiedConstraints:I

    not-int v3, v3

    and-int/2addr v2, v3

    invoke-virtual {p0, v9, v2}, dumpConstraints(Ljava/io/PrintWriter;I)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget-boolean v2, v8, dozeWhitelisted:Z

    if-eqz v2, :cond_13

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Doze whitelisted: true"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_13
    iget-boolean v2, v8, uidActive:Z

    if-eqz v2, :cond_14

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Uid: active"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_14
    iget-object v2, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isExemptedFromAppStandby()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Is exempted from app standby"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_15
    iget v2, v8, trackingControllers:I

    if-eqz v2, :cond_1d

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Tracking:"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v8, trackingControllers:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    const-string v2, " BATTERY"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_16
    iget v2, v8, trackingControllers:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_17

    const-string v2, " CONNECTIVITY"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_17
    iget v2, v8, trackingControllers:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_18

    const-string v2, " CONTENT"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_18
    iget v2, v8, trackingControllers:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_19

    const-string v2, " IDLE"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_19
    iget v2, v8, trackingControllers:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1a

    const-string v2, " STORAGE"

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    iget v2, v8, trackingControllers:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_1b

    const-string v0, " TIME"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1b
    iget v0, v8, trackingControllers:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_1c

    const-string v0, " QUOTA"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1c
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_1d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Implicit constraints:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotDozing: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v8, mReadyNotDozing:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyNotRestrictedInBg: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v8, mReadyNotRestrictedInBg:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, v8, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  readyDeadlineSatisfied: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, v8, mReadyDeadlineSatisfied:Z

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1e
    iget-object v0, v8, changedAuthorities:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed authorities:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v2, v8, changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_1f

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, changedAuthorities:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1f
    iget-object v0, v8, changedUris:Landroid/util/ArraySet;

    if-eqz v0, :cond_20

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Changed URIs:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    iget-object v2, v8, changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v8, changedUris:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    iget-object v0, v8, network:Landroid/net/Network;

    if-eqz v0, :cond_21

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Network: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, network:Landroid/net/Network;

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_21
    iget-object v0, v8, pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_22

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Pending work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_3
    iget-object v1, v8, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    iget-object v1, v8, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_22
    iget-object v0, v8, executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_23

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Executing work:"

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4
    iget-object v1, v8, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v1, v8, executingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/job/JobWorkItem;

    invoke-direct {p0, v9, v10, v1, v0}, dumpJobWorkItem(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/app/job/JobWorkItem;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_23
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Standby bucket: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget v0, v8, standbyBucket:I

    if-lez v0, :cond_24

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Base heartbeat: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v8, baseHeartbeat:J

    invoke-virtual {v9, v0, v1}, Ljava/io/PrintWriter;->println(J)V

    :cond_24
    iget-wide v0, v8, whenStandbyDeferred:J

    cmp-long v0, v0, v13

    if-eqz v0, :cond_25

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Deferred since: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v8, whenStandbyDeferred:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    :cond_25
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Enqueue time: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, v8, enqueueTime:J

    invoke-static {v0, v1, v11, v12, v9}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Run time: earliest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v8, earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v6, p4

    invoke-direct/range {v0 .. v7}, formatRunTime(Ljava/io/PrintWriter;JJJ)V

    const-string v0, ", latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v8, latestRunTimeElapsedMillis:J

    const-wide v4, 0x7fffffffffffffffL

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, formatRunTime(Ljava/io/PrintWriter;JJJ)V

    const-string v0, ", original latest="

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, v8, mOriginalLatestRunTimeElapsedMillis:J

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, formatRunTime(Ljava/io/PrintWriter;JJJ)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    iget v0, v8, numFailures:I

    if-eqz v0, :cond_26

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Num failures: "

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, numFailures:I

    invoke-virtual {v9, v0}, Ljava/io/PrintWriter;->println(I)V

    :cond_26
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    const-string v1, "%Y-%m-%d %H:%M:%S"

    iget-wide v2, v8, mLastSuccessfulRunTime:J

    cmp-long v2, v2, v13

    const-string v3, "%Y-%m-%d %H:%M:%S"

    if-eqz v2, :cond_27

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Last successful run: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v8, mLastSuccessfulRunTime:J

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_27
    iget-wide v4, v8, mLastFailedRunTime:J

    cmp-long v2, v4, v13

    if-eqz v2, :cond_28

    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Last failed run: "

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, v8, mLastFailedRunTime:J

    invoke-virtual {v0, v4, v5}, Landroid/text/format/Time;->set(J)V

    invoke-virtual {v0, v3}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method dumpConstraints(Landroid/util/proto/ProtoOutputStream;JI)V
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_1
    and-int/lit8 v0, p4, 0x8

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p4

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_4
    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_6

    const/4 v0, 0x7

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_8
    const/high16 v0, 0x1000000

    and-int/2addr v0, p4

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_9
    const/high16 v0, 0x400000

    and-int/2addr v0, p4

    if-eqz v0, :cond_a

    const/16 v0, 0xb

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    :cond_a
    return-void
.end method

.method dumpConstraints(Ljava/io/PrintWriter;I)V
    .locals 1

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_0

    const-string v0, " CHARGING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_1

    const-string v0, " BATTERY_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v0, p2, 0x8

    if-eqz v0, :cond_2

    const-string v0, " STORAGE_NOT_LOW"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    const/high16 v0, -0x80000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_3

    const-string v0, " TIMING_DELAY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p2

    if-eqz v0, :cond_4

    const-string v0, " DEADLINE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_5

    const-string v0, " IDLE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    const/high16 v0, 0x10000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_6

    const-string v0, " CONNECTIVITY"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    const/high16 v0, 0x4000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_7

    const-string v0, " CONTENT_TRIGGER"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    const/high16 v0, 0x2000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_8

    const-string v0, " DEVICE_NOT_DOZING"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_8
    const/high16 v0, 0x400000

    and-int/2addr v0, p2

    if-eqz v0, :cond_9

    const-string v0, " BACKGROUND_NOT_RESTRICTED"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_9
    const/high16 v0, 0x1000000

    and-int/2addr v0, p2

    if-eqz v0, :cond_a

    const-string v0, " WITHIN_QUOTA"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_a
    if-eqz p2, :cond_b

    const-string v0, " [0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public enqueueWorkLocked(Landroid/app/IActivityManager;Landroid/app/job/JobWorkItem;)V
    .locals 7

    iget-object v0, p0, pendingWork:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, pendingWork:Ljava/util/ArrayList;

    :cond_0
    iget v0, p0, nextPendingWorkId:I

    invoke-virtual {p2, v0}, Landroid/app/job/JobWorkItem;->setWorkId(I)V

    iget v0, p0, nextPendingWorkId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, nextPendingWorkId:I

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/job/GrantedUriPermissions;->checkGrantFlags(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget v3, p0, sourceUid:I

    iget-object v4, p0, sourcePackageName:Ljava/lang/String;

    iget v5, p0, sourceUserId:I

    invoke-virtual {p0}, toShortString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/job/GrantedUriPermissions;->createFromIntent(Landroid/app/IActivityManager;Landroid/content/Intent;ILjava/lang/String;ILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/job/JobWorkItem;->setGrants(Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, updateEstimatedNetworkBytesLocked()V

    return-void
.end method

.method public getBaseHeartbeat()J
    .locals 2

    iget-wide v0, p0, baseHeartbeat:J

    return-wide v0
.end method

.method public getBatteryName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, batteryName:Ljava/lang/String;

    return-object v0
.end method

.method getBucketName()Ljava/lang/String;
    .locals 1

    iget v0, p0, standbyBucket:I

    invoke-static {v0}, bucketName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEarliestRunTime()J
    .locals 2

    iget-wide v0, p0, earliestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getEstimatedNetworkBytes()J
    .locals 2

    iget-wide v0, p0, totalNetworkBytes:J

    return-wide v0
.end method

.method public getFlags()I
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v0

    return v0
.end method

.method public getFractionRunTime()F
    .locals 12

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, earliestRunTimeElapsedMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const-wide v6, 0x7fffffffffffffffL

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez v2, :cond_0

    iget-wide v8, p0, latestRunTimeElapsedMillis:J

    cmp-long v2, v8, v6

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-wide v8, p0, earliestRunTimeElapsedMillis:J

    cmp-long v2, v8, v4

    const/4 v4, 0x0

    if-nez v2, :cond_2

    iget-wide v5, p0, latestRunTimeElapsedMillis:J

    cmp-long v2, v0, v5

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    return v3

    :cond_2
    iget-wide v10, p0, latestRunTimeElapsedMillis:J

    cmp-long v2, v10, v6

    if-nez v2, :cond_4

    cmp-long v2, v0, v8

    if-ltz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    return v3

    :cond_4
    cmp-long v2, v0, v8

    if-gtz v2, :cond_5

    return v4

    :cond_5
    cmp-long v2, v0, v10

    if-ltz v2, :cond_6

    return v3

    :cond_6
    sub-long v2, v0, v8

    long-to-float v2, v2

    sub-long/2addr v10, v8

    long-to-float v3, v10

    div-float/2addr v2, v3

    return v2
.end method

.method public getInternalFlags()I
    .locals 1

    iget v0, p0, mInternalFlags:I

    return v0
.end method

.method public getJob()Landroid/app/job/JobInfo;
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    return-object v0
.end method

.method public getJobId()I
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    return v0
.end method

.method public getLastFailedRunTime()J
    .locals 2

    iget-wide v0, p0, mLastFailedRunTime:J

    return-wide v0
.end method

.method public getLastSuccessfulRunTime()J
    .locals 2

    iget-wide v0, p0, mLastSuccessfulRunTime:J

    return-wide v0
.end method

.method public getLatestRunTimeElapsed()J
    .locals 2

    iget-wide v0, p0, latestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getNumFailures()I
    .locals 1

    iget v0, p0, numFailures:I

    return v0
.end method

.method public getOriginalLatestRunTimeElapsed()J
    .locals 2

    iget-wide v0, p0, mOriginalLatestRunTimeElapsedMillis:J

    return-wide v0
.end method

.method public getPersistedUtcTimes()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, mPersistedUtcTimes:Landroid/util/Pair;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSatisfiedConstraintFlags()I
    .locals 1

    iget v0, p0, satisfiedConstraints:I

    return v0
.end method

.method public getServiceComponent()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public getServiceToken()I
    .locals 1

    iget v0, p0, callingUid:I

    return v0
.end method

.method public getSourcePackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, sourcePackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, sourceTag:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceUid()I
    .locals 1

    iget v0, p0, sourceUid:I

    return v0
.end method

.method public getSourceUserId()I
    .locals 1

    iget v0, p0, sourceUserId:I

    return v0
.end method

.method public getStandbyBucket()I
    .locals 1

    iget v0, p0, standbyBucket:I

    return v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSdkVersion()I
    .locals 1

    iget v0, p0, targetSdkVersion:I

    return v0
.end method

.method public getTriggerContentMaxDelay()J
    .locals 4

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentMaxDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/32 v2, 0x1d4c0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x3e8

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getTriggerContentUpdateDelay()J
    .locals 4

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getTriggerContentUpdateDelay()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-wide/16 v2, 0x2710

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x1f4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, callingUid:I

    return v0
.end method

.method public getUserId()I
    .locals 1

    iget v0, p0, callingUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method public getWhenStandbyDeferred()J
    .locals 2

    iget-wide v0, p0, whenStandbyDeferred:J

    return-wide v0
.end method

.method public hasBatteryNotLowConstraint()Z
    .locals 1

    iget v0, p0, requiredConstraints:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasChargingConstraint()Z
    .locals 2

    iget v0, p0, requiredConstraints:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasConnectivityConstraint()Z
    .locals 2

    iget v0, p0, requiredConstraints:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasContentTriggerConstraint()Z
    .locals 2

    iget v0, p0, requiredConstraints:I

    const/high16 v1, 0x4000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasDeadlineConstraint()Z
    .locals 2

    iget v0, p0, requiredConstraints:I

    const/high16 v1, 0x40000000    # 2.0f

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasExecutingWorkLocked()Z
    .locals 1

    iget-object v0, p0, executingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasIdleConstraint()Z
    .locals 1

    iget v0, p0, requiredConstraints:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPowerConstraint()Z
    .locals 1

    iget v0, p0, requiredConstraints:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasStorageNotLowConstraint()Z
    .locals 1

    iget v0, p0, requiredConstraints:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTimingDelayConstraint()Z
    .locals 2

    iget v0, p0, requiredConstraints:I

    const/high16 v1, -0x80000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasWorkLocked()Z
    .locals 1

    iget-object v0, p0, pendingWork:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, hasExecutingWorkLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isConstraintSatisfied(I)Z
    .locals 1

    iget v0, p0, satisfiedConstraints:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isConstraintsSatisfied()Z
    .locals 1

    iget v0, p0, mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, isConstraintsSatisfied(I)Z

    move-result v0

    return v0
.end method

.method public isPersisted()Z
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v0

    return v0
.end method

.method public isPreparedLocked()Z
    .locals 1

    iget-boolean v0, p0, prepared:Z

    return v0
.end method

.method public isReady()Z
    .locals 1

    iget v0, p0, mSatisfiedConstraintsOfInterest:I

    invoke-direct {p0, v0}, isReady(I)Z

    move-result v0

    return v0
.end method

.method public matches(II)Z
    .locals 1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    if-ne v0, p2, :cond_0

    iget v0, p0, callingUid:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public maybeAddForegroundExemption(Ljava/util/function/Predicate;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasEarlyConstraint()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->hasLateConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, mInternalFlags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, getSourceUid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, addInternalFlags(I)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public prepareLocked(Landroid/app/IActivityManager;)V
    .locals 8

    iget-boolean v0, p0, prepared:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Already prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobSchedulerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, prepared:Z

    const/4 v0, 0x0

    iput-object v0, p0, unpreparedPoint:Ljava/lang/Throwable;

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getClipData()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v3, p0, sourceUid:I

    iget-object v4, p0, sourcePackageName:Ljava/lang/String;

    iget v5, p0, sourceUserId:I

    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getClipGrantFlags()I

    move-result v6

    invoke-virtual {p0}, toShortString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    move-object v2, v0

    invoke-static/range {v1 .. v7}, Lcom/android/server/job/GrantedUriPermissions;->createFromClip(Landroid/app/IActivityManager;Landroid/content/ClipData;ILjava/lang/String;IILjava/lang/String;)Lcom/android/server/job/GrantedUriPermissions;

    move-result-object v1

    iput-object v1, p0, uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_1
    return-void
.end method

.method public printUniqueId(Ljava/io/PrintWriter;)V
    .locals 1

    iget v0, p0, callingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method setBackgroundNotRestrictedConstraintSatisfied(Z)Z
    .locals 1

    const/high16 v0, 0x400000

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, mReadyNotRestrictedInBg:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setBatteryNotLowConstraintSatisfied(Z)Z
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setChargingConstraintSatisfied(Z)Z
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConnectivityConstraintSatisfied(Z)Z
    .locals 1

    const/high16 v0, 0x10000000

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setConstraintSatisfied(IZ)Z
    .locals 5

    iget v0, p0, satisfiedConstraints:I

    and-int/2addr v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-ne v0, p2, :cond_1

    return v2

    :cond_1
    iget v3, p0, satisfiedConstraints:I

    not-int v4, p1

    and-int/2addr v3, v4

    if-eqz p2, :cond_2

    move v2, p1

    :cond_2
    or-int/2addr v2, v3

    iput v2, p0, satisfiedConstraints:I

    iget v2, p0, satisfiedConstraints:I

    const v3, -0x6bfffff1

    and-int/2addr v2, v3

    iput v2, p0, mSatisfiedConstraintsOfInterest:I

    return v1
.end method

.method setContentTriggerConstraintSatisfied(Z)Z
    .locals 1

    const/high16 v0, 0x4000000

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setDeadlineConstraintSatisfied(Z)Z
    .locals 3

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, hasDeadlineConstraint()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, mReadyDeadlineSatisfied:Z

    return v2

    :cond_1
    return v1
.end method

.method setDeviceNotDozingConstraintSatisfied(ZZ)Z
    .locals 3

    iput-boolean p2, p0, dozeWhitelisted:Z

    const/high16 v0, 0x2000000

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v2, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getFlags()I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_1

    :cond_0
    move v1, v0

    :cond_1
    iput-boolean v1, p0, mReadyNotDozing:Z

    return v0

    :cond_2
    return v1
.end method

.method setIdleConstraintSatisfied(Z)Z
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method public setOriginalLatestRunTimeElapsed(J)V
    .locals 0

    iput-wide p1, p0, mOriginalLatestRunTimeElapsedMillis:J

    return-void
.end method

.method setQuotaConstraintSatisfied(Z)Z
    .locals 1

    const/high16 v0, 0x1000000

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean p1, p0, mReadyWithinQuota:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setStandbyBucket(I)V
    .locals 0

    iput p1, p0, standbyBucket:I

    return-void
.end method

.method setStorageNotLowConstraintSatisfied(Z)Z
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTimingDelayConstraintSatisfied(Z)Z
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1}, setConstraintSatisfied(IZ)Z

    move-result v0

    return v0
.end method

.method setTrackingController(I)V
    .locals 1

    iget v0, p0, trackingControllers:I

    or-int/2addr v0, p1

    iput v0, p0, trackingControllers:I

    return-void
.end method

.method setUidActive(Z)Z
    .locals 1

    iget-boolean v0, p0, uidActive:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, uidActive:Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWhenStandbyDeferred(J)V
    .locals 0

    iput-wide p1, p0, whenStandbyDeferred:J

    return-void
.end method

.method public stopTrackingJobLocked(Landroid/app/IActivityManager;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    iget-object v1, p0, executingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, executingWork:Ljava/util/ArrayList;

    iput-object v1, p2, pendingWork:Ljava/util/ArrayList;

    :cond_0
    iget-object v1, p2, pendingWork:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    iget-object v1, p0, pendingWork:Ljava/util/ArrayList;

    iput-object v1, p2, pendingWork:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    iget-object v1, p0, pendingWork:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p2, pendingWork:Ljava/util/ArrayList;

    iget-object v2, p0, pendingWork:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_0
    iput-object v0, p0, pendingWork:Ljava/util/ArrayList;

    iput-object v0, p0, executingWork:Ljava/util/ArrayList;

    iget v0, p0, nextPendingWorkId:I

    iput v0, p2, nextPendingWorkId:I

    invoke-direct {p2}, updateEstimatedNetworkBytesLocked()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, pendingWork:Ljava/util/ArrayList;

    invoke-static {p1, v1}, ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, pendingWork:Ljava/util/ArrayList;

    iget-object v1, p0, executingWork:Ljava/util/ArrayList;

    invoke-static {p1, v1}, ungrantWorkList(Landroid/app/IActivityManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, executingWork:Ljava/util/ArrayList;

    :goto_1
    invoke-direct {p0}, updateEstimatedNetworkBytesLocked()V

    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortStringExceptUniqueId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "JobStatus{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, callingUid:I

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, batteryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " u="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-wide v1, p0, earliestRunTimeElapsedMillis:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iget-wide v1, p0, latestRunTimeElapsedMillis:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    :cond_0
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v10

    const-string v1, " TIME="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, earliestRunTimeElapsedMillis:J

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, v0

    move-wide v8, v10

    invoke-direct/range {v2 .. v9}, formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, latestRunTimeElapsedMillis:J

    const-wide v6, 0x7fffffffffffffffL

    invoke-direct/range {v2 .. v9}, formatRunTime(Ljava/lang/StringBuilder;JJJ)V

    :cond_1
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, " NET"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, " CHARGING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, " BATNOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireStorageNotLow()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, " STORENOTLOW"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, " IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, " PERIODIC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, " PERSISTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget v1, p0, satisfiedConstraints:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-nez v1, :cond_9

    const-string v1, " WAIT:DEV_NOT_DOZING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    if-eqz v1, :cond_a

    const-string v1, " URIS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v1}, Landroid/app/job/JobInfo;->getTriggerContentUris()[Landroid/app/job/JobInfo$TriggerContentUri;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v1, p0, numFailures:I

    if-eqz v1, :cond_b

    const-string v1, " failures="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, numFailures:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_b
    invoke-virtual {p0}, isReady()Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, " READY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public unprepareLocked(Landroid/app/IActivityManager;)V
    .locals 3

    iget-boolean v0, p0, prepared:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Hasn\'t been prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JobSchedulerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, unpreparedPoint:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v2, "Was already unprepared at "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, prepared:Z

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, unpreparedPoint:Ljava/lang/Throwable;

    iget-object v0, p0, uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/server/job/GrantedUriPermissions;->revoke(Landroid/app/IActivityManager;)V

    const/4 v0, 0x0

    iput-object v0, p0, uriPerms:Lcom/android/server/job/GrantedUriPermissions;

    :cond_2
    return-void
.end method

.method wouldBeReadyWithConstraint(I)Z
    .locals 7

    const/4 v0, 0x0

    iget v1, p0, mSatisfiedConstraintsOfInterest:I

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x2000000

    const/high16 v4, 0x1000000

    const/high16 v5, 0x400000

    const/4 v6, 0x1

    if-eq p1, v5, :cond_3

    if-eq p1, v4, :cond_2

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_0

    or-int/2addr v1, p1

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, mReadyDeadlineSatisfied:Z

    iput-boolean v6, p0, mReadyDeadlineSatisfied:Z

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, mReadyNotDozing:Z

    iput-boolean v6, p0, mReadyNotDozing:Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, mReadyWithinQuota:Z

    iput-boolean v6, p0, mReadyWithinQuota:Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, mReadyNotRestrictedInBg:Z

    iput-boolean v6, p0, mReadyNotRestrictedInBg:Z

    nop

    :goto_0
    invoke-direct {p0, v1}, isReady(I)Z

    move-result v6

    if-eq p1, v5, :cond_7

    if-eq p1, v4, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, mReadyDeadlineSatisfied:Z

    goto :goto_1

    :cond_5
    iput-boolean v0, p0, mReadyNotDozing:Z

    goto :goto_1

    :cond_6
    iput-boolean v0, p0, mReadyWithinQuota:Z

    goto :goto_1

    :cond_7
    iput-boolean v0, p0, mReadyNotRestrictedInBg:Z

    nop

    :goto_1
    return v6
.end method

.method public writeToShortProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 5

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget v2, p0, callingUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, job:Landroid/app/job/JobInfo;

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->getId()I

    move-result v2

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, batteryName:Ljava/lang/String;

    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method
