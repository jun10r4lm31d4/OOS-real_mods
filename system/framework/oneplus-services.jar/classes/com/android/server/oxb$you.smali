.class Lcom/android/server/oxb$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oxb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field private He:Z

.field private Ie:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field private rxBytes:J

.field private startTime:J

.field final synthetic this$0:Lcom/android/server/oxb;

.field private txBytes:J


# direct methods
.method public constructor <init>(Lcom/android/server/oxb;ILjava/lang/String;)V
    .locals 2

    iput-object p1, p0, this$0:Lcom/android/server/oxb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, He:Z

    iput-boolean p1, p0, Ie:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, startTime:J

    iput p2, p0, mUid:I

    iput-object p3, p0, mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic cno(Lcom/android/server/oxb$you;)Z
    .locals 0

    iget-boolean p0, p0, Ie:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/oxb$you;)Z
    .locals 0

    iget-boolean p0, p0, He:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/oxb$you;)J
    .locals 2

    iget-wide v0, p0, rxBytes:J

    return-wide v0
.end method

.method static synthetic ssp(Lcom/android/server/oxb$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/oxb$you;)J
    .locals 2

    iget-wide v0, p0, startTime:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/oxb$you;)J
    .locals 2

    iget-wide v0, p0, txBytes:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/oxb$you;)I
    .locals 0

    iget p0, p0, mUid:I

    return p0
.end method


# virtual methods
.method public K()Z
    .locals 15

    iget v0, p0, mUid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iget v2, p0, mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iget-wide v4, p0, txBytes:J

    sub-long v4, v0, v4

    iget-wide v6, p0, rxBytes:J

    sub-long v6, v2, v6

    iput-wide v0, p0, txBytes:J

    iput-wide v2, p0, rxBytes:J

    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    add-long v9, v4, v6

    invoke-static {v8, v9, v10}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;J)Z

    move-result v8

    iget-boolean v11, p0, Ie:Z

    const/4 v12, 0x0

    const/4 v13, 0x1

    if-eq v11, v8, :cond_4

    if-eqz v8, :cond_2

    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_0

    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v11}, Lcom/android/server/oxb;->tsu(Lcom/android/server/oxb;)I

    move-result v11

    if-eq v8, v11, :cond_1

    :cond_0
    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v14, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v14}, Lcom/android/server/oxb;->tsu(Lcom/android/server/oxb;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iput-boolean v13, p0, Ie:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v11, p0, mUid:I

    iget-object v14, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v14}, Lcom/android/server/am/AppRecordManagerService;->noteStartTrafficHigh(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v14, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v14}, Lcom/android/server/oxb;->tsu(Lcom/android/server/oxb;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v12, p0, Ie:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v11, p0, mUid:I

    iget-object v14, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v11, v14}, Lcom/android/server/am/AppRecordManagerService;->noteStopTrafficHigh(ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    sub-int/2addr v8, v13

    if-ltz v8, :cond_6

    iget-object v11, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v11}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v11

    iget v14, p0, mUid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v11, v14, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_6

    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_5

    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v11, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v11}, Lcom/android/server/oxb;->tsu(Lcom/android/server/oxb;)I

    move-result v11

    if-eq v8, v11, :cond_6

    :cond_5
    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8}, Lcom/android/server/oxb;->sis(Lcom/android/server/oxb;)Ljava/util/HashMap;

    move-result-object v8

    iget v11, p0, mUid:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-object v14, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v14}, Lcom/android/server/oxb;->tsu(Lcom/android/server/oxb;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v8, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    iget-object v8, p0, this$0:Lcom/android/server/oxb;

    invoke-static {v8, v9, v10}, Lcom/android/server/oxb;->tsu(Lcom/android/server/oxb;J)Z

    move-result v8

    if-eqz v8, :cond_8

    iget-boolean v8, p0, He:Z

    if-nez v8, :cond_7

    iput-boolean v13, p0, He:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v9, p0, mUid:I

    iget-object v10, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lcom/android/server/am/AppRecordManagerService;->noteStartTraffic(ILjava/lang/String;)V

    :cond_7
    invoke-static {}, Lcom/android/server/oxb;->access$1000()Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUidTrafficLocked "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": incTx("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), incRx("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), nowTx="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nowRx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    iget-boolean v0, p0, He:Z

    if-eqz v0, :cond_9

    iput-boolean v12, p0, He:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    iget v1, p0, mUid:I

    iget-object v2, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/AppRecordManagerService;->noteStopTraffic(ILjava/lang/String;)V

    :cond_9
    :goto_1
    iget-boolean v0, p0, He:Z

    if-nez v0, :cond_a

    iget-boolean p0, p0, Ie:Z

    if-eqz p0, :cond_b

    :cond_a
    move v12, v13

    :cond_b
    return v12
.end method

.method public reset()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, txBytes:J

    iput-wide v0, p0, rxBytes:J

    return-void
.end method
