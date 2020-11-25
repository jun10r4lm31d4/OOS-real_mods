.class Lcom/android/server/wm/OpPowerConsumpStats$igw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "igw"
.end annotation


# instance fields
.field fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, lock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, isTiming:Z

    return-void
.end method

.method private Pr()Lcom/android/server/wm/OpPowerConsumpStats$bio;
    .locals 6

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->LZ:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->LZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->MZ:I

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->MZ:I

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->KZ:J

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->KZ:J

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->duration:J

    iget-object p0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result p0

    iput p0, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->NZ:I

    const-string p0, "StillContinuing"

    iput-object p0, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->TZ:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DozeFragmentTimer getCacheDozeFragment relativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |relativeEndTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->KZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->duration:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->LZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->MZ:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->NZ:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |exitReason:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->TZ:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->la(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string p0, "DozeFragmentTimer getCacheDozeFragment not Timing , return null"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->la(Ljava/lang/String;)V

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private clear()V
    .locals 2

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, isTiming:Z

    const-string p0, "DozeFragmentTimer clear"

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->la(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$igw;)Lcom/android/server/wm/OpPowerConsumpStats$bio;
    .locals 0

    invoke-direct {p0}, Pr()Lcom/android/server/wm/OpPowerConsumpStats$bio;

    move-result-object p0

    return-object p0
.end method

.method private startTiming()Z
    .locals 5

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, isTiming:Z

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats$bio;->zta(Lcom/android/server/wm/OpPowerConsumpStats$bio;)V

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v3, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->LZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v3, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->MZ:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DozeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |realBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$bio;->LZ:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " |beginPowerLevel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->MZ:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->la(Ljava/lang/String;)V

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private stopTiming(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iput-boolean v2, p0, isTiming:Z

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->KZ:J

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$bio;->KZ:J

    iget-object v4, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$bio;->JZ:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->duration:J

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->NZ:I

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iput-object p1, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->TZ:Ljava/lang/String;

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object v1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    invoke-direct {p1, v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$bio;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$bio;)V

    iget-object v1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, v1, Lcom/android/server/wm/OpPowerConsumpStats;->Uaa:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DozeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->KZ:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |duration:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-wide v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->duration:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " |endPowerLevel:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget v1, v1, Lcom/android/server/wm/OpPowerConsumpStats$bio;->NZ:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |exitReason:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$bio;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$bio;->TZ:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->la(Ljava/lang/String;)V

    const/4 p0, 0x1

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$igw;)V
    .locals 0

    invoke-direct {p0}, clear()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;)Z
    .locals 0

    invoke-direct {p0}, startTiming()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$igw;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, stopTiming(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
