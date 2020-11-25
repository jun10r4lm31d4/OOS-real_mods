.class public Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;
.super Ljava/lang/Object;
.source "JobSchedulerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/JobSchedulerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JobStorePersistStats"
.end annotation


# instance fields
.field public countAllJobsLoaded:I

.field public countAllJobsSaved:I

.field public countSystemServerJobsLoaded:I

.field public countSystemServerJobsSaved:I

.field public countSystemSyncManagerJobsLoaded:I

.field public countSystemSyncManagerJobsSaved:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, countAllJobsLoaded:I

    iput v0, p0, countSystemServerJobsLoaded:I

    iput v0, p0, countSystemSyncManagerJobsLoaded:I

    iput v0, p0, countAllJobsSaved:I

    iput v0, p0, countSystemServerJobsSaved:I

    iput v0, p0, countSystemSyncManagerJobsSaved:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerInternal$JobStorePersistStats;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, countAllJobsLoaded:I

    iput v0, p0, countSystemServerJobsLoaded:I

    iput v0, p0, countSystemSyncManagerJobsLoaded:I

    iput v0, p0, countAllJobsSaved:I

    iput v0, p0, countSystemServerJobsSaved:I

    iput v0, p0, countSystemSyncManagerJobsSaved:I

    iget v0, p1, countAllJobsLoaded:I

    iput v0, p0, countAllJobsLoaded:I

    iget v0, p1, countSystemServerJobsLoaded:I

    iput v0, p0, countSystemServerJobsLoaded:I

    iget v0, p1, countSystemSyncManagerJobsLoaded:I

    iput v0, p0, countSystemSyncManagerJobsLoaded:I

    iget v0, p1, countAllJobsSaved:I

    iput v0, p0, countAllJobsSaved:I

    iget v0, p1, countSystemServerJobsSaved:I

    iput v0, p0, countSystemServerJobsSaved:I

    iget v0, p1, countSystemSyncManagerJobsSaved:I

    iput v0, p0, countSystemSyncManagerJobsSaved:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FirstLoad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, countAllJobsLoaded:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, countSystemServerJobsLoaded:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, countSystemSyncManagerJobsLoaded:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " LastSave: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, countAllJobsSaved:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, countSystemServerJobsSaved:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, countSystemSyncManagerJobsSaved:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
