.class Lcom/android/server/wm/OpPowerConsumpStats$cno;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "cno"
.end annotation


# instance fields
.field RZ:Z

.field SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

.field fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

.field isTiming:Z

.field lock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;)V
    .locals 2

    iput-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p1, v0}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iput-object p1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, lock:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, isTiming:Z

    iput-boolean p1, p0, RZ:Z

    new-instance p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-object v0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    const-string v1, "chargeFragmentTimerScreenOn"

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;)V

    iput-object p1, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    return-void
.end method

.method private Ac(I)Z
    .locals 5

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, isTiming:Z

    iget-object v3, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ssp;)V

    iget-object v3, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    iput-boolean v2, p0, RZ:Z

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v3, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->LZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v3, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v3

    iput v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->MZ:I

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v3, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->tsu(Lcom/android/server/wm/OpPowerConsumpStats;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->QZ:Ljava/lang/String;

    iget-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->gwm(Lcom/android/server/wm/OpPowerConsumpStats;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)Z

    :cond_1
    iget-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result p1

    const/16 v2, 0x64

    if-ne p1, v2, :cond_2

    iput-boolean v1, p0, RZ:Z

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer startTiming startRelativeTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->LZ:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->MZ:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->QZ:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method private Kr()Lcom/android/server/wm/OpPowerConsumpStats$ssp;
    .locals 6

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {v1, v2}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;)V

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    iget-wide v4, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->LZ:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->LZ:J

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->MZ:I

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->MZ:I

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->NZ:I

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->QZ:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->QZ:Ljava/lang/String;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->PZ:J

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->PZ:J

    iget-object p0, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    invoke-static {p0, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->OZ:J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer getCacheChargeFragment relativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |relativeEndTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |realBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->LZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |beginPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->MZ:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->NZ:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |plugType:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->QZ:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |firstFullTimeToRelativeBeginTime:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->PZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |screenOnDuration:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->OZ:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats;->la(Ljava/lang/String;)V

    monitor-exit v0

    return-object v1

    :cond_0
    const-string p0, "ChargeFragmentTimer getCacheChargeFragment not Timing , return null"

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

.method private Lr()V
    .locals 2

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Mr()V
    .locals 2

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {p0}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Nr()Z
    .locals 7

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-boolean v1, p0, RZ:Z

    if-eqz v1, :cond_1

    monitor-exit v0

    return v2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, RZ:Z

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v3, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v3

    iget-object v5, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v5, v5, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    sub-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->PZ:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ChargeFragmentTimer updateFirstFullTime firstFullTimeToRelativeBeginTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v3, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->PZ:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

.method private Or()Z
    .locals 2

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, isTiming:Z

    if-nez v1, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    iget-object p0, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    const-string v1, "FASTCHARGE"

    iput-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->QZ:Ljava/lang/String;

    const-string p0, "ChargeFragmentTimer updatePlugType plugType:FASTCHARGE"

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

.method private clear()V
    .locals 2

    iget-object v0, p0, lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ssp;)V

    iget-object v1, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    invoke-static {v1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, RZ:Z

    iput-boolean v1, p0, isTiming:Z

    const-string p0, "ChargeFragmentTimer clear"

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

.method static synthetic cno(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Lcom/android/server/wm/OpPowerConsumpStats$ssp;
    .locals 0

    invoke-direct {p0}, Kr()Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    move-result-object p0

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Z
    .locals 0

    invoke-direct {p0}, Nr()Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V
    .locals 0

    invoke-direct {p0}, Lr()V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V
    .locals 0

    invoke-direct {p0}, clear()V

    return-void
.end method

.method private stopTiming()Z
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

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->oif(Lcom/android/server/wm/OpPowerConsumpStats;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    iget-object v4, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v4, v4, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->JZ:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {v2}, Lcom/android/server/wm/OpPowerConsumpStats;->vdb(Lcom/android/server/wm/OpPowerConsumpStats;)I

    move-result v2

    iput v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->NZ:I

    iget-object v1, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, p0, SZ:Lcom/android/server/wm/OpPowerConsumpStats$ywr;

    iget-object v3, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v3, v3, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;J)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->OZ:J

    new-instance v1, Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v3, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats$ssp;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$ssp;)V

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v2, v2, Lcom/android/server/wm/OpPowerConsumpStats;->Vaa:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ChargeFragmentTimer stopTiming relativeEndTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->KZ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |duration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->duration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " |endPowerLevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget v2, v2, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->NZ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |screenOnDuration:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, fragment:Lcom/android/server/wm/OpPowerConsumpStats$ssp;

    iget-wide v2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ssp;->OZ:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

.method static synthetic tsu(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Z
    .locals 0

    invoke-direct {p0}, Or()Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$cno;)V
    .locals 0

    invoke-direct {p0}, Mr()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;)Z
    .locals 0

    invoke-direct {p0}, stopTiming()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$cno;I)Z
    .locals 0

    invoke-direct {p0, p1}, Ac(I)Z

    move-result p0

    return p0
.end method
