.class Lcom/android/server/storage/DiskStatsLoggingService$LogRunnable;
.super Ljava/lang/Object;
.source "DiskStatsLoggingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DiskStatsLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogRunnable"
.end annotation


# static fields
.field private static final TIMEOUT_MILLIS:J


# instance fields
.field private mCollector:Lcom/android/server/storage/AppCollector;

.field private mContext:Landroid/content/Context;

.field private mDownloadsDirectory:Ljava/io/File;

.field private mJobService:Landroid/app/job/JobService;

.field private mOutputFile:Ljava/io/File;

.field private mParams:Landroid/app/job/JobParameters;

.field private mSystemSize:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, TIMEOUT_MILLIS:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishJob(Z)V
    .locals 2

    iget-object v0, p0, mJobService:Landroid/app/job/JobService;

    if-eqz v0, :cond_0

    iget-object v1, p0, mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method

.method private logToFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Lcom/android/server/storage/FileCollector$MeasurementResult;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageStats;",
            ">;J)V"
        }
    .end annotation

    new-instance v6, Lcom/android/server/storage/DiskStatsFileLogger;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/storage/DiskStatsFileLogger;-><init>(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V

    :try_start_0
    iget-object v1, p0, mOutputFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    iget-object v1, p0, mOutputFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/android/server/storage/DiskStatsFileLogger;->dumpToFile(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "DiskStatsLogService"

    const-string v3, "Exception while writing opportunistic disk file cache."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "DiskStatsLogService"

    :try_start_0
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/storage/FileCollector;->getMeasurementResult(Landroid/content/Context;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, mDownloadsDirectory:Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/storage/FileCollector;->getMeasurementResult(Ljava/io/File;)Lcom/android/server/storage/FileCollector$MeasurementResult;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v4, p0, mCollector:Lcom/android/server/storage/AppCollector;

    sget-wide v5, TIMEOUT_MILLIS:J

    invoke-virtual {v4, v5, v6}, Lcom/android/server/storage/AppCollector;->getPackageStats(J)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_0

    const/4 v0, 0x0

    iget-wide v6, p0, mSystemSize:J

    move-object v2, p0

    move-object v4, v1

    move-object v5, v8

    invoke-direct/range {v2 .. v7}, logToFile(Lcom/android/server/storage/FileCollector$MeasurementResult;Lcom/android/server/storage/FileCollector$MeasurementResult;Ljava/util/List;J)V

    goto :goto_0

    :cond_0
    const-string v4, "Timed out while fetching package stats."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, finishJob(Z)V

    return-void

    :catch_0
    move-exception v1

    const-string v2, "Error while measuring storage"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, finishJob(Z)V

    return-void
.end method

.method public setAppCollector(Lcom/android/server/storage/AppCollector;)V
    .locals 0

    iput-object p1, p0, mCollector:Lcom/android/server/storage/AppCollector;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method

.method public setDownloadsDirectory(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, mDownloadsDirectory:Ljava/io/File;

    return-void
.end method

.method public setJobService(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, mJobService:Landroid/app/job/JobService;

    iput-object p2, p0, mParams:Landroid/app/job/JobParameters;

    return-void
.end method

.method public setLogOutputFile(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, mOutputFile:Ljava/io/File;

    return-void
.end method

.method public setSystemSize(J)V
    .locals 0

    iput-wide p1, p0, mSystemSize:J

    return-void
.end method
