.class public Lcom/android/server/am/OnePlusBGController$wtn;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "wtn"
.end annotation


# instance fields
.field public Ap:Lcom/android/server/am/OnePlusBGController$rtg;

.field public Bp:Lcom/android/server/am/OnePlusBGController$rtg;

.field public Cp:J

.field private Dp:I

.field private dp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$tsu;",
            ">;"
        }
    .end annotation
.end field

.field public mPkgName:Ljava/lang/String;

.field public mUid:I

.field public mVersionCode:I

.field public np:Z

.field private qp:Lcom/android/server/am/OnePlusBGController$OptType;

.field private rp:Lcom/android/server/am/OnePlusBGController$ProcType;

.field public sp:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field private tp:Z

.field public vp:Z

.field private wp:D

.field private xp:D

.field private yp:D

.field public zp:Lcom/android/server/am/OnePlusBGController$rtg;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$rtg;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object v0, p0, sp:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v0, 0x0

    iput-boolean v0, p0, tp:Z

    iput-boolean v0, p0, vp:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Cp:J

    iput-boolean v0, p0, np:Z

    sget-object v0, Lcom/android/server/am/OnePlusBGController$OptType;->S:Lcom/android/server/am/OnePlusBGController$OptType;

    iput-object v0, p0, qp:Lcom/android/server/am/OnePlusBGController$OptType;

    iget-wide v0, p6, Lcom/android/server/am/OnePlusBGController$rtg;->pc:D

    iput p1, p0, mUid:I

    iput-object p2, p0, mPkgName:Ljava/lang/String;

    iput p3, p0, mVersionCode:I

    new-instance p1, Lcom/android/server/am/OnePlusBGController$rtg;

    sget-object p2, Lcom/android/server/am/OnePlusBGController$MySipperType;->T:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-direct {p1, p2}, Lcom/android/server/am/OnePlusBGController$rtg;-><init>(Lcom/android/server/am/OnePlusBGController$MySipperType;)V

    iput-object p1, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    new-instance p1, Lcom/android/server/am/OnePlusBGController$rtg;

    sget-object p2, Lcom/android/server/am/OnePlusBGController$MySipperType;->M:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-direct {p1, p2}, Lcom/android/server/am/OnePlusBGController$rtg;-><init>(Lcom/android/server/am/OnePlusBGController$MySipperType;)V

    iput-object p1, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    new-instance p1, Lcom/android/server/am/OnePlusBGController$rtg;

    sget-object p2, Lcom/android/server/am/OnePlusBGController$MySipperType;->B:Lcom/android/server/am/OnePlusBGController$MySipperType;

    invoke-direct {p1, p2}, Lcom/android/server/am/OnePlusBGController$rtg;-><init>(Lcom/android/server/am/OnePlusBGController$MySipperType;)V

    iput-object p1, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$800()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p1, p0, mUid:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$800()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, np:Z

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, dp:Ljava/util/List;

    monitor-enter p0

    const-wide/16 p1, 0x0

    cmpl-double p1, v0, p1

    if-ltz p1, :cond_1

    :try_start_0
    iput-object p4, p0, rp:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget-object p1, p0, dp:Ljava/util/List;

    new-instance p2, Lcom/android/server/am/OnePlusBGController$tsu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v0, p2

    move-object v1, p4

    move v2, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusBGController$tsu;-><init>(Lcom/android/server/am/OnePlusBGController$ProcType;IJLcom/android/server/am/OnePlusBGController$rtg;)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public Ab()V
    .locals 1

    iget v0, p0, Dp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Dp:I

    return-void
.end method

.method public Bb()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, dp:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, dp:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, dp:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$tsu;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$tsu;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Cb()I
    .locals 0

    iget p0, p0, Dp:I

    return p0
.end method

.method public Db()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, yp:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Eb()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, xp:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Fb()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, wp:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Gb()Lcom/android/server/am/OnePlusBGController$OptType;
    .locals 0

    iget-object p0, p0, qp:Lcom/android/server/am/OnePlusBGController$OptType;

    return-object p0
.end method

.method public Hb()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v0, v0, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    iget-object v2, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    add-double/2addr v0, v2

    iget-object v2, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    add-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Ib()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, wp:D

    iget-wide v2, p0, xp:D

    add-double/2addr v0, v2

    iget-wide v2, p0, yp:D

    add-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Jb()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, tp:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public Kb()Z
    .locals 1

    iget p0, p0, Dp:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public Lb()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, vp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, tp:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mVersionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iput p1, p0, mVersionCode:I

    return-void
.end method

.method public getUid()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, mUid:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ssp(III)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "{\"seq\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"pn\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"pc\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, mVersionCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"pr\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, sp:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"ab\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Cb()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"rf\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Jb()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\",\"fs\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, vp:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\",\"ot\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Gb()Lcom/android/server/am/OnePlusBGController$OptType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"dz\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Tta\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:J

    const-wide/16 v5, 0x1f4

    add-long/2addr v3, v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v3, v7

    long-to-double v3, v3

    const-wide v9, 0x414b774000000000L    # 3600000.0

    div-double/2addr v3, v9

    const-wide/16 v11, 0x0

    cmpl-double v13, v3, v11

    if-eqz v13, :cond_0

    iget-wide v13, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    div-double v2, v13, v3

    goto :goto_0

    :cond_0
    move-wide v2, v11

    :goto_0
    const-string v4, "\",\"Tcu\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Mta\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v13, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:J

    add-long/2addr v13, v5

    div-long/2addr v13, v7

    long-to-double v13, v13

    div-double/2addr v13, v9

    cmpl-double v3, v13, v11

    if-eqz v3, :cond_1

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    div-double/2addr v2, v13

    goto :goto_1

    :cond_1
    move-wide v2, v11

    :goto_1
    const-string v13, "\",\"Mcu\":\""

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bta\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v14, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:J

    add-long/2addr v14, v5

    div-long/2addr v14, v7

    long-to-double v14, v14

    div-double/2addr v14, v9

    cmpl-double v3, v14, v11

    if-eqz v3, :cond_2

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    div-double v11, v2, v14

    :cond_2
    const-string v2, "\",\"Bcu\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v11, v12}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v3, p3, 0x1

    const/4 v9, 0x1

    if-ne v3, v9, :cond_3

    const-string v3, "\",\"Trn\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v9, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:J

    add-long/2addr v9, v5

    div-long/2addr v9, v7

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Twi\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Tgs\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Tsn\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Tmo\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Twk\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Tcm\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Tfh\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Tbt\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v3, p3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const-string v3, "\",\"Mrn\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:J

    add-long/2addr v3, v5

    div-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mwi\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mgs\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Msn\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mmo\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mwk\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mcm\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mfh\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\",\"Mbt\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const/4 v3, 0x4

    and-int/lit8 v4, p3, 0x4

    if-ne v4, v3, :cond_5

    const-string v3, "\",\"Brn\":\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v3, v3, Lcom/android/server/am/OnePlusBGController$rtg;->Cc:J

    add-long/2addr v3, v5

    div-long/2addr v3, v7

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Hc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bwi\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Fc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bgs\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Gc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bsn\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Ic:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bmo\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Jc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bwk\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Kc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bcm\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Lc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bfh\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v2, Lcom/android/server/am/OnePlusBGController$rtg;->Mc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",\"Bbt\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v2, v0, Lcom/android/server/am/OnePlusBGController$rtg;->Nc:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v0, "\"}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 13

    iget-wide v0, p0, wp:D

    iget-wide v2, p0, yp:D

    add-double/2addr v2, v0

    iget-wide v4, p0, xp:D

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v8, v0

    invoke-direct {v1, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x4

    const/4 v8, 0x3

    invoke-virtual {v1, v8, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iget-wide v9, p0, xp:D

    mul-double/2addr v9, v4

    div-double/2addr v9, v2

    mul-double/2addr v9, v6

    double-to-float v9, v9

    new-instance v10, Ljava/math/BigDecimal;

    float-to-double v11, v9

    invoke-direct {v10, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v10, v8, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigDecimal;->floatValue()F

    move-result v9

    iget-wide v10, p0, yp:D

    mul-double/2addr v10, v4

    div-double/2addr v10, v2

    mul-double/2addr v10, v6

    double-to-float v2, v10

    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v8, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    goto :goto_0

    :cond_0
    move v1, v5

    move v9, v1

    :goto_0
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$2100()Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, "\n"

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$6000()Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    move-result-object v0

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_TOP:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    if-eq v0, v2, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$6000()Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    move-result-object v0

    sget-object v2, Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;->ACC_BG:Lcom/oneplus/android/server/am/highpower/IHighPowerDetector$BGCOrderType;

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusBGController$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# SipperInfo ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, mUid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, mVersionCode:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, wp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " %), "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, xp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, yp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " %)], [Rnk: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, sp:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Abn: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Dp:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [Ref: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, tp:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [FS: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, vp:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [Spec: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, np:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [Opt: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, qp:Lcom/android/server/am/OnePlusBGController$OptType;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, wp:D

    iget-wide v6, p0, xp:D

    add-double/2addr v4, v6

    iget-wide v6, p0, yp:D

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$MySipperType;)D
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/cjf;->ap:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const-wide/16 v0, 0x0

    monitor-exit p0

    return-wide v0

    :cond_0
    iget-object p1, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v0, p1, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    monitor-exit p0

    return-wide v0

    :cond_1
    iget-object p1, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v0, p1, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    monitor-exit p0

    return-wide v0

    :cond_2
    iget-object p1, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    iget-wide v0, p1, Lcom/android/server/am/OnePlusBGController$rtg;->Dc:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$AppBucketRanking;)V
    .locals 0

    iput-object p1, p0, sp:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-void
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$CleanType;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/cjf;->bp:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    const/4 p1, 0x4

    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, dp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, dp:Ljava/util/List;

    iget-object v0, p0, dp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/OnePlusBGController$tsu;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$tsu;->reset()V

    :cond_1
    iget-object p1, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$rtg;->t()V

    iget-object p1, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$rtg;->t()V

    iget-object p1, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$rtg;->t()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, dp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_3
    iput v1, p0, Dp:I

    iput-boolean v1, p0, vp:Z

    iput-boolean v1, p0, tp:Z

    iget-object v0, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$rtg;->s()V

    iget-object v0, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$rtg;->s()V

    iget-object v0, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController$rtg;->s()V

    :cond_4
    sget-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->pwa:Lcom/android/server/am/OnePlusBGController$CleanType;

    if-ne p1, v0, :cond_5

    invoke-virtual {p0}, Kb()Z

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mark uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, mUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as ever day-of-force-stopped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iput-boolean v2, p0, vp:Z

    :cond_5
    iget-object p1, p0, dp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_6

    iget-object p1, p0, dp:Ljava/util/List;

    iget-object v0, p0, dp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, xp:D

    iput-wide v0, p0, yp:D

    iput-wide v0, p0, wp:D

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$OptType;)V
    .locals 0

    iput-object p1, p0, qp:Lcom/android/server/am/OnePlusBGController$OptType;

    return-void
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$ProcType;ILcom/android/server/am/OnePlusBGController$rtg;)V
    .locals 9

    iget-wide v0, p3, Lcom/android/server/am/OnePlusBGController$rtg;->pc:D

    monitor-enter p0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_b

    :try_start_0
    iget-object v4, p0, dp:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    iget-object v4, p0, dp:Ljava/util/List;

    iget-object v5, p0, dp:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusBGController$tsu;

    sget-object v5, Lcom/android/server/am/OnePlusBGController$ProcType;->ywa:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v5, :cond_0

    const-string v5, "oops!! why insert type with ProcType.B_RECONFIRM"

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_0
    if-eqz v4, :cond_9

    iget-object v5, v4, Lcom/android/server/am/OnePlusBGController$tsu;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    const/4 v6, 0x2

    if-eq v5, p1, :cond_5

    iget-wide v7, v4, Lcom/android/server/am/OnePlusBGController$tsu;->pc:D

    sub-double/2addr v0, v7

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1.oops, diff is negative:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", just cleanUp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->qwa:Lcom/android/server/am/OnePlusBGController$CleanType;

    :goto_0
    invoke-virtual {p0, v0}, zta(Lcom/android/server/am/OnePlusBGController$CleanType;)V

    goto/16 :goto_2

    :cond_1
    sget-object v2, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v2, :cond_3

    iget v2, v4, Lcom/android/server/am/OnePlusBGController$tsu;->mUidState:I

    if-ne v2, v6, :cond_2

    iget-wide v2, p0, wp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, wp:D

    iget-object v0, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    :goto_1
    invoke-virtual {v0, v4, p3}, Lcom/android/server/am/OnePlusBGController$rtg;->zta(Lcom/android/server/am/OnePlusBGController$tsu;Lcom/android/server/am/OnePlusBGController$rtg;)V

    goto/16 :goto_2

    :cond_2
    iget-wide v2, p0, xp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, xp:D

    iget-object v0, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v2, :cond_9

    iget v2, p0, mUid:I

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->f(I)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#### Due to audio-active, uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", add into Fg instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v2, p0, xp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, xp:D

    iget-object v0, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    goto :goto_1

    :cond_4
    iget-wide v2, p0, yp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, yp:D

    iget-object v0, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    goto :goto_1

    :cond_5
    iget-wide v7, v4, Lcom/android/server/am/OnePlusBGController$tsu;->pc:D

    sub-double/2addr v0, v7

    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "2.oops, diff is negative:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", just cleanUp"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->qwa:Lcom/android/server/am/OnePlusBGController$CleanType;

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v2, :cond_7

    iget-wide v2, p0, yp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, yp:D

    iget-object v0, p0, Bp:Lcom/android/server/am/OnePlusBGController$rtg;

    goto :goto_1

    :cond_7
    iget v2, v4, Lcom/android/server/am/OnePlusBGController$tsu;->mUidState:I

    if-ne v2, v6, :cond_8

    iget-wide v2, p0, wp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, wp:D

    iget-object v0, p0, zp:Lcom/android/server/am/OnePlusBGController$rtg;

    goto :goto_1

    :cond_8
    iget-wide v2, p0, xp:D

    add-double/2addr v2, v0

    iput-wide v2, p0, xp:D

    iget-object v0, p0, Ap:Lcom/android/server/am/OnePlusBGController$rtg;

    goto/16 :goto_1

    :cond_9
    :goto_2
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$5900()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, dp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_a
    iput-object p1, p0, rp:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget-object v0, p0, dp:Ljava/util/List;

    new-instance v7, Lcom/android/server/am/OnePlusBGController$tsu;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object v1, v7

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/OnePlusBGController$tsu;-><init>(Lcom/android/server/am/OnePlusBGController$ProcType;IJLcom/android/server/am/OnePlusBGController$rtg;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_b
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
