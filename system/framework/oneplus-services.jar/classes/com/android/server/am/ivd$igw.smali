.class Lcom/android/server/am/ivd$igw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "igw"
.end annotation


# static fields
.field private static final ms:I = 0x1

.field private static final os:I = 0x2

.field private static final ps:I = 0x3

.field private static final qs:I = 0x4

.field private static final rs:I = 0x4


# instance fields
.field Ar:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Br:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Cr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Dr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Er:I

.field Fr:I

.field Gr:I

.field Hr:I

.field Ir:I

.field Jr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Kr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Lr:Lcom/android/server/am/ivd$sis;

.field Mr:Lcom/android/server/am/ivd$you;

.field Nr:Ljava/lang/String;

.field Or:Ljava/lang/String;

.field Pr:[Ljava/lang/String;

.field Qr:Z

.field Rr:Z

.field Sr:Z

.field Tr:J

.field Ur:J

.field Vr:J

.field Wr:Z

.field Xr:Z

.field Yr:Z

.field Zr:Z

.field _r:Z

.field as:Z

.field bs:Z

.field cs:Z

.field ds:Z

.field es:Z

.field foreground:Z

.field fs:Z

.field gs:Z

.field hs:Z

.field index:I

.field is:Z

.field isolated:Z

.field js:Z

.field ks:Z

.field ls:Z

.field packageName:Ljava/lang/String;

.field processState:I

.field providers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field sensor:Z

.field final synthetic this$0:Lcom/android/server/am/ivd;

.field tr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field uid:I

.field uidActive:Z

.field ur:Z

.field vr:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field wr:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field xr:Z

.field yr:I

.field zr:Z


# direct methods
.method private constructor <init>(Lcom/android/server/am/ivd;I)V
    .locals 5

    iput-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, uid:I

    const-string v1, ""

    iput-object v1, p0, packageName:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, ur:Z

    iput-boolean v1, p0, isolated:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, vr:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, wr:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, providers:Ljava/util/HashMap;

    iput-boolean v1, p0, xr:Z

    iput v0, p0, yr:I

    iput-boolean v1, p0, zr:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Ar:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, tr:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Br:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Cr:Ljava/util/HashSet;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Dr:Ljava/util/HashSet;

    iput v0, p0, Er:I

    const/16 v2, 0x14

    iput v2, p0, processState:I

    iput v0, p0, Fr:I

    iput v0, p0, Gr:I

    const/4 v0, 0x4

    iput v0, p0, Hr:I

    iput v0, p0, Ir:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Jr:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Kr:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput-object v0, p0, Lr:Lcom/android/server/am/ivd$sis;

    iput-object v0, p0, Mr:Lcom/android/server/am/ivd$you;

    const-string v2, ""

    iput-object v2, p0, Nr:Ljava/lang/String;

    const-string v2, ""

    iput-object v2, p0, Or:Ljava/lang/String;

    iput-object v0, p0, Pr:[Ljava/lang/String;

    iput v1, p0, index:I

    iput-boolean v1, p0, Qr:Z

    iput-boolean v1, p0, Rr:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Sr:Z

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Tr:J

    iput-wide v3, p0, Ur:J

    iput-wide v3, p0, Vr:J

    iput-boolean v1, p0, Wr:Z

    iput-boolean v1, p0, Xr:Z

    iput-boolean v1, p0, Yr:Z

    iput-boolean v1, p0, Zr:Z

    iput-boolean v1, p0, _r:Z

    iput-boolean v1, p0, sensor:Z

    iput-boolean v1, p0, foreground:Z

    iput-boolean v1, p0, as:Z

    iput-boolean v1, p0, bs:Z

    iput-boolean v1, p0, cs:Z

    iput-boolean v1, p0, ds:Z

    iput-boolean v1, p0, es:Z

    iput-boolean v1, p0, fs:Z

    iput-boolean v1, p0, gs:Z

    iput-boolean v1, p0, hs:Z

    iput-boolean v1, p0, is:Z

    iput-boolean v1, p0, js:Z

    iput-boolean v1, p0, ks:Z

    iput-boolean v1, p0, ls:Z

    iput-boolean v1, p0, uidActive:Z

    monitor-enter p0

    :try_start_0
    iput p2, p0, uid:I

    invoke-static {p1}, Lcom/android/server/am/ivd;->dma(Lcom/android/server/am/ivd;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Nr:Ljava/lang/String;

    iget v1, p0, uid:I

    invoke-static {p1, v1}, Lcom/android/server/am/ivd;->kth(Lcom/android/server/am/ivd;I)Z

    move-result v1

    invoke-direct {p0, v1}, na(Z)V

    invoke-static {}, Lcom/android/server/am/ivd;->Wb()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x17

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Pr:[Ljava/lang/String;

    :cond_0
    invoke-static {}, Lcom/android/server/am/ivd;->Xb()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/server/am/ivd$sis;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/am/ivd$sis;-><init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$igw;Lcom/android/server/am/les;)V

    iput-object v1, p0, Lr:Lcom/android/server/am/ivd$sis;

    :cond_1
    invoke-static {}, Lcom/android/server/am/ivd;->access$4600()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/am/ivd$you;

    invoke-direct {v1, p1, p0, v0}, Lcom/android/server/am/ivd$you;-><init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$igw;Lcom/android/server/am/les;)V

    iput-object v1, p0, Mr:Lcom/android/server/am/ivd$you;

    :cond_2
    invoke-static {p1, p2}, Lcom/android/server/am/ivd;->bio(Lcom/android/server/am/ivd;I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-direct {p0, v2}, setImportant(Z)V

    :cond_3
    invoke-static {p2}, Lcom/android/server/am/ivd;->j(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0, v2}, ma(Z)V

    :cond_4
    invoke-static {p2}, Lcom/android/server/am/ivd;->k(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-direct {p0, v2}, oa(Z)V

    :cond_5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Jn()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ivd;ILcom/android/server/am/les;)V
    .locals 0

    invoke-direct {p0, p1, p2}, <init>(Lcom/android/server/am/ivd;I)V

    return-void
.end method

.method private An()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, ur:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iget-boolean v0, p0, Sr:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    invoke-direct {p0}, un()Z

    move-result v0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :cond_2
    iget-wide v2, p0, Tr:J

    invoke-static {}, Lcom/android/server/am/ivd;->Yb()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-direct {p0}, vn()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UidStateCache isUidChangeToImperceptible, uid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " setImperceptible true"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    const-string v0, "check match mask"

    invoke-direct {p0, v2, v0}, you(ZLjava/lang/String;)V

    move v1, v2

    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Bn()Z
    .locals 4

    iget-object v0, p0, wr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v1, Lcom/android/server/am/ProcessRecord;->permRequestCount:I

    if-lez v2, :cond_0

    const/4 v0, 0x4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUidRequestingPermission, uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, uid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " |pid:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is requesting permission, return true"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private Cn()Z
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Er:I

    iget-object v0, p0, Cr:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v2, v1}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-direct {v2}, un()Z

    move-result v2

    if-nez v2, :cond_0

    iput v1, p0, Er:I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private Dn()I
    .locals 8

    const/4 v0, -0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x3

    :try_start_0
    iput v0, p0, Gr:I

    iget v4, p0, Fr:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eq v4, v2, :cond_3

    if-eq v4, v5, :cond_2

    if-eq v4, v3, :cond_1

    if-eq v4, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "pre-thirdbind"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0}, Cn()Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_4

    return v3

    :cond_1
    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "pre-providing"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0, v6}, tsu(Ljava/util/HashSet;)Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_4

    return v3

    :cond_2
    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "pre-serving"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0, v6}, rtg(Ljava/util/HashSet;)Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_4

    return v3

    :cond_3
    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "pre-permRequest"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0}, Bn()Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_4

    return v3

    :cond_4
    :goto_0
    iget v4, p0, Fr:I

    if-eq v4, v2, :cond_5

    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "permRequest"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0}, Bn()Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_5

    iput v2, p0, Fr:I

    return v3

    :cond_5
    iget v4, p0, Fr:I

    if-eq v4, v1, :cond_6

    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "thirdbind"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0}, Cn()Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_6

    iput v1, p0, Fr:I

    return v3

    :cond_6
    iget v4, p0, Fr:I

    if-eq v4, v5, :cond_7

    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v7, "serving"

    invoke-static {v4, v7}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0, v6}, rtg(Ljava/util/HashSet;)Z

    move-result v4

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v7}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_7

    iput v5, p0, Fr:I

    return v3

    :cond_7
    iget v4, p0, Fr:I

    if-eq v4, v3, :cond_8

    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    const-string v5, "providing"

    invoke-static {v4, v5}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    invoke-direct {p0, v6}, tsu(Ljava/util/HashSet;)Z

    move-result v4

    iget-object v5, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v5}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    if-eqz v4, :cond_8

    iput v3, p0, Fr:I

    return v3

    :cond_8
    iput v0, p0, Fr:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    iget v4, p0, Hr:I

    sub-int/2addr v4, v2

    iput v4, p0, Hr:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "makeDeepJudgment uid:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, uid:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " catch Exception return DO_NOTHING , rest of the attempt times:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Hr:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Exception:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "OPBF"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget p0, p0, Hr:I

    if-lez p0, :cond_9

    return v1

    :cond_9
    return v3
.end method

.method private En()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, gs:Z

    iget-wide v1, p0, Tr:J

    const-wide/16 v3, -0x81

    and-long/2addr v1, v3

    iput-wide v1, p0, Tr:J

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "remove foreground switch protection"

    invoke-direct {p0, v1}, check(Ljava/lang/String;)V

    const-string v1, "FOREGROUND_SWITCH_PROTECT"

    invoke-direct {p0, v1, v0}, tsu(Ljava/lang/String;Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private Fn()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Ir:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Gn()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x4

    :try_start_0
    iput v0, p0, Hr:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Hn()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Sr:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Sr:Z

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

.method private In()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ivd;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/ivd;->Qb()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/ivd;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ur:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Vr:J

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    invoke-direct {p0}, isIsolated()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, un()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, processState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private Jn()V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1}, Lcom/android/server/am/ivd;->ywr(Lcom/android/server/am/ivd;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v2}, Lcom/android/server/am/ivd;->ywr(Lcom/android/server/am/ivd;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v2, v1}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v3, p0, uid:I

    invoke-direct {v2, v3}, xb(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, ub(I)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private Ob(Ljava/lang/String;)I
    .locals 13

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ivd;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ur:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Vr:J

    :goto_0
    invoke-direct {p0}, un()Z

    move-result v2

    invoke-direct {p0}, isIsolated()Z

    move-result v3

    iget-boolean v4, p0, ur:Z

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eqz v4, :cond_2

    iget-boolean v4, p0, isolated:Z

    if-nez v4, :cond_2

    const/4 p1, 0x4

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is system application process, do resume"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    monitor-exit p0

    return v6

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is system application process, do nothing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    monitor-exit p0

    return v5

    :cond_2
    iget-wide v7, p0, Tr:J

    const-wide/16 v9, 0x0

    cmp-long v4, v7, v9

    const/4 v7, 0x1

    if-nez v4, :cond_3

    cmp-long v4, v0, v9

    if-nez v4, :cond_3

    if-nez v2, :cond_3

    move v4, v7

    goto :goto_1

    :cond_3
    iget-wide v11, p0, Tr:J

    cmp-long v4, v11, v9

    if-gtz v4, :cond_4

    cmp-long v4, v0, v9

    if-lez v4, :cond_5

    :cond_4
    if-eqz v2, :cond_5

    move v4, v6

    goto :goto_1

    :cond_5
    move v4, v5

    :goto_1
    if-eqz v3, :cond_7

    iget-boolean v3, p0, zr:Z

    if-nez v3, :cond_6

    if-ne v4, v7, :cond_6

    move v4, v5

    goto :goto_2

    :cond_6
    iget-boolean v3, p0, zr:Z

    if-nez v3, :cond_7

    if-eqz v2, :cond_7

    move v4, v6

    :cond_7
    :goto_2
    const-string v3, ""

    if-eq v4, v7, :cond_a

    if-eq v4, v6, :cond_9

    if-eq v4, v5, :cond_8

    goto :goto_3

    :cond_8
    const-string v3, "do nothing"

    goto :goto_3

    :cond_9
    const-string v3, "resume"

    goto :goto_3

    :cond_a
    const-string v3, "freeze"

    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UidStateCache makeQuickJudgment, uid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for totalStateMap1:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, p0, Tr:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |needToMeetMap:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |freezeState:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " |reason:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->access$4600()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v2}, Lcom/android/server/am/ivd;->dma(Lcom/android/server/am/ivd;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " m1:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Tr:J

    invoke-static {v5, v6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mT:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " reason:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Mr:Lcom/android/server/am/ivd$you;

    invoke-static {v0, p1}, Lcom/android/server/am/ivd$you;->zta(Lcom/android/server/am/ivd$you;Ljava/lang/String;)V

    :cond_b
    monitor-exit p0

    return v4

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Pb(Ljava/lang/String;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resumeRelateProcess uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " |thread:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-boolean v2, p0, Qr:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iput-boolean v0, p0, Qr:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, this$0:Lcom/android/server/am/ivd;

    iget v4, p0, uid:I

    invoke-static {v3, v4, v1, p1}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    iget v3, p0, uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, wr:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/ivd;->bc()Landroid/util/SparseArray;

    move-result-object v5

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ivd;->bc()Landroid/util/SparseArray;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/display/IDisplayManagerCallback;

    if-eqz v6, :cond_4

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    const/16 v9, 0x2422

    invoke-static {v9, v7, v8}, Lcom/android/server/am/ivd;->checkTimeoutBegin(III)V

    invoke-static {}, Lcom/android/server/am/ivd;->cc()I

    move-result v7

    invoke-static {}, Lcom/android/server/am/ivd;->dc()I

    move-result v8

    invoke-interface {v6, v7, v8}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V

    invoke-static {v9}, Lcom/android/server/am/ivd;->checkTimeoutEnd(I)V

    :cond_4
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-lez v5, :cond_7

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->connections:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ConnectionRecord;

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v7, :cond_5

    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_5

    iget v7, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v7, v8, :cond_5

    iget-object v7, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v7, v7, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    iget-object v8, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, p0, this$0:Lcom/android/server/am/ivd;

    const-string v10, "resumeRelateProcess binding service"

    iget v11, p0, uid:I

    invoke-static {v9, p1, v10, v11}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v1, v9}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v6, v6, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    if-eqz v5, :cond_a

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderConnection;

    if-nez v6, :cond_9

    goto :goto_2

    :cond_9
    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v7, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v7, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v7, v8, :cond_8

    iget-object v7, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v7, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    iget-object v8, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v8, v8, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v9, p0, this$0:Lcom/android/server/am/ivd;

    const-string v10, "resumeRelateProcess connecting provider"

    iget v11, p0, uid:I

    invoke-static {v9, p1, v10, v11}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v1, v9}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    iget-object v6, v6, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_a
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->adjSource:Ljava/lang/Object;

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v4, :cond_1

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, this$0:Lcom/android/server/am/ivd;

    iget v6, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, this$0:Lcom/android/server/am/ivd;

    const-string v8, "resumeRelateProcess adjustApp"

    iget v9, p0, uid:I

    invoke-static {v7, p1, v8, v9}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v1, v7}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :cond_b
    invoke-direct {p0}, Fn()V

    iput-boolean v1, p0, Qr:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resumeRelateProcess uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPBF"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v1, p0, Qr:Z

    iget v2, p0, Ir:I

    sub-int/2addr v2, v0

    iput v2, p0, Ir:I

    iget v0, p0, Ir:I

    if-lez v0, :cond_c

    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object v0

    iget v2, p0, uid:I

    const/16 v3, 0xa

    invoke-static {v2, v3}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " retry times:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ir:I

    rsub-int/lit8 p0, p0, 0x4

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, v1, v1, p0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_c
    :goto_3
    return-void
.end method

.method private Qb(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0}, Lcom/android/server/am/ivd;->dma(Lcom/android/server/am/ivd;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " Reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Or:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/am/ivd;->Wb()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Reason:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " freeze:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, xr:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Pr:[Ljava/lang/String;

    iget v1, p0, index:I

    aput-object p1, v0, v1

    iget p1, p0, index:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, index:I

    iget p1, p0, index:I

    rem-int/lit8 p1, p1, 0x17

    iput p1, p0, index:I

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Rb(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, rtg(Ljava/lang/String;Z)V

    return-void
.end method

.method private addIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Ar:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ar:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic bio(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, pa(Z)V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/am/ivd$igw;)Z
    .locals 0

    invoke-direct {p0}, zn()Z

    move-result p0

    return p0
.end method

.method static synthetic bvj(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ma(Z)V

    return-void
.end method

.method private check(Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/server/am/ivd;->Zb()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "check uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " |sEnable:false , return"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/am/ivd;->access$4600()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Mr:Lcom/android/server/am/ivd$you;

    invoke-static {v0}, Lcom/android/server/am/ivd$you;->zta(Lcom/android/server/am/ivd$you;)V

    :cond_1
    invoke-direct {p0, p1}, Qb(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object v0

    iget v2, p0, uid:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "check "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ob(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, wb(I)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;ILjava/lang/String;)V

    :goto_0
    invoke-direct {p0}, An()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget p0, p0, uid:I

    invoke-static {v0, p0, v2, p1}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/ivd$igw;)I
    .locals 0

    invoke-direct {p0}, tn()I

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, yb(I)V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, setUidActive(Z)V

    return-void
.end method

.method static synthetic dma(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, qa(Z)V

    return-void
.end method

.method private dma(Ljava/lang/String;I)V
    .locals 4

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, tr:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    iget-object v2, p0, tr:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :cond_0
    iget-object v2, p0, tr:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, tr:Ljava/util/HashSet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {v0}, un()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    iget v2, p0, uid:I

    const-string v3, "notifyStateChange NOTIFY_ALL"

    invoke-static {v1, p1, v3, v2}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, check(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0, p2}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-direct {p2}, un()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget p0, p0, uid:I

    const-string v1, "notifyStateChange"

    invoke-static {v0, p1, v1, p0}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, check(Ljava/lang/String;)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic gck(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ra(Z)V

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ha(Z)V

    return-void
.end method

.method private gwm(ILjava/lang/String;)Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, vr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, wr:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Jr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Jr:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, es:Z

    iget-wide v2, p0, Tr:J

    const-wide/16 v4, -0x21

    and-long/2addr v2, v4

    iput-wide v2, p0, Tr:J

    :cond_0
    iget-object v0, p0, Kr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Kr:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-boolean v1, p0, fs:Z

    iget-wide v2, p0, Tr:J

    const-wide/16 v4, -0x41

    and-long/2addr v2, v4

    iput-wide v2, p0, Tr:J

    :cond_1
    iget-object p1, p0, wr:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-nez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    invoke-direct {p0, p2}, check(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/server/am/ivd;->Xb()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lr:Lcom/android/server/am/ivd$sis;

    if-eqz p1, :cond_4

    iget p2, p1, Lcom/android/server/am/ivd$sis;->qr:I

    if-nez p2, :cond_4

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcom/android/server/am/ivd$sis;->zta(Lcom/android/server/am/ivd$sis;I)V

    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->ugm(Lcom/android/server/am/ivd;)Lcom/android/server/am/ivd$bio;

    move-result-object p1

    new-instance p2, Lcom/android/server/am/ivd$sis;

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget-object v2, p0, Lr:Lcom/android/server/am/ivd$sis;

    const/4 v3, 0x0

    invoke-direct {p2, v0, v2, v3}, Lcom/android/server/am/ivd$sis;-><init>(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$sis;Lcom/android/server/am/les;)V

    invoke-static {p1, p2}, Lcom/android/server/am/ivd$bio;->zta(Lcom/android/server/am/ivd$bio;Lcom/android/server/am/ivd$sis;)V

    :cond_4
    invoke-static {}, Lcom/android/server/am/ivd;->access$4600()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Mr:Lcom/android/server/am/ivd$you;

    if-eqz p1, :cond_5

    invoke-static {p1}, Lcom/android/server/am/ivd$you;->you(Lcom/android/server/am/ivd$you;)V

    iget-object p0, p0, Mr:Lcom/android/server/am/ivd$you;

    invoke-static {p0}, Lcom/android/server/am/ivd$you;->sis(Lcom/android/server/am/ivd$you;)V

    :cond_5
    :goto_0
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ha(Z)V
    .locals 1

    const-string v0, "dumpCache"

    invoke-direct {p0, p1, v0}, zta(ZLjava/lang/String;)V

    return-void
.end method

.method private ia(Z)V
    .locals 5

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, Ar:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Ar:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v2, v1}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {v1, p1}, ka(Z)V

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyIsolatedUids boundUid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string v4, "freeze"

    goto :goto_1

    :cond_1
    const-string v4, "thawed"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, uid:I

    invoke-static {v2, v3, v4}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, check(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic ibl(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, oa(Z)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, va(Z)V

    return-void
.end method

.method static synthetic igw(Lcom/android/server/am/ivd$igw;)Z
    .locals 0

    invoke-direct {p0}, un()Z

    move-result p0

    return p0
.end method

.method private varargs igw([J)Z
    .locals 8

    invoke-static {}, Lcom/android/server/am/ivd;->Zb()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-wide/16 v2, 0x0

    if-eqz p1, :cond_1

    move v0, v1

    move-wide v4, v2

    :goto_0
    array-length v6, p1

    if-ge v0, v6, :cond_2

    aget-wide v6, p1, v0

    or-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-wide v4, v2

    :cond_2
    monitor-enter p0

    :try_start_0
    iget-wide v6, p0, Tr:J

    not-long v4, v4

    and-long/2addr v4, v6

    cmp-long p1, v4, v2

    if-gtz p1, :cond_4

    iget-wide v4, p0, Ur:J

    cmp-long p1, v4, v2

    if-gtz p1, :cond_4

    iget-wide v4, p0, Vr:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    goto :goto_1

    :cond_3
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private isIsolated()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, isolated:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private ja(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Wr:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x2000

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x2001

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-direct {p0}, vn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "audio event tHold: true"

    invoke-direct {p0, v0, v1}, you(ZLjava/lang/String;)V

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    iget v2, p0, uid:I

    const-string v3, "audio event tHold: true"

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->ywr(Lcom/android/server/am/ivd;I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audio event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ka(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, zr:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic kth(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, removeIsolatedUid(I)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ja(Z)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/am/ivd$igw;)Z
    .locals 0

    invoke-direct {p0}, vn()Z

    move-result p0

    return p0
.end method

.method private la(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, is:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x200

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x201

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid content notify resume tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ma(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, cs:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x9

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceIdle whitelist uid change tWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private na(Z)V
    .locals 0

    iput-boolean p1, p0, xr:Z

    iget p0, p0, uid:I

    invoke-static {p0, p1}, Lcom/android/server/am/OpAppRecordInjector;->noteFreezeStateChange(IZ)V

    return-void
.end method

.method private oa(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, ds:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x11

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "freezeWhiteList whitelist uid change tWhitelist:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic oif(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, setImportant(Z)V

    return-void
.end method

.method private pa(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Xr:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x4000

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x4001

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gps event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private qa(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, js:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x400

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x401

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid mediaProjection tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic qbh(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, na(Z)V

    return-void
.end method

.method private ra(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, sensor:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/32 v2, 0x8000

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/32 v2, -0x8001

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sensor event tHold:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private removeIsolatedUid(I)V
    .locals 1

    iget-object v0, p0, Ar:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Ar:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic rtg(Lcom/android/server/am/ivd$igw;)V
    .locals 0

    invoke-direct {p0}, Gn()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, addIsolatedUid(I)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/ivd$igw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, setForeground(Z)V

    return-void
.end method

.method private rtg(Ljava/lang/String;Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ivd;->Zb()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    invoke-direct {p0}, un()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/ivd;->access$2600()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;ILjava/lang/String;)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_2

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private rtg(Ljava/util/HashSet;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget v0, p0, uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " return false"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses contain uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, wr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    if-eqz v6, :cond_5

    iget-object v6, v6, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ConnectionRecord;

    if-eqz v8, :cond_7

    iget-object v8, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v8, :cond_7

    iget v9, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v9, v8, :cond_7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v9, v8}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v9

    const-string v10, " |serverUid:"

    if-eqz v9, :cond_9

    iget v11, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v9, v11}, sb(I)V

    invoke-direct {v9}, yn()Z

    move-result v11

    const/4 v12, 0x1

    const-string v13, " return true"

    if-eqz v11, :cond_8

    invoke-direct {v9, p1}, rtg(Ljava/util/HashSet;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return v12

    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses there is a client process that cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    iput v8, p0, Gr:I

    return v12

    :cond_9
    invoke-static {v8}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses there is a system process as a client clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidServingOtherUnableFreezeProcesses uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can freeze return false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private sa(Z)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0}, Lcom/android/server/am/ivd;->vdb(Lcom/android/server/am/ivd;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, packageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1}, Lcom/android/server/am/ivd;->vdb(Lcom/android/server/am/ivd;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, ur:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iput-boolean p1, p0, ur:Z

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p1
.end method

.method private sb(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, tr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setForeground(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, foreground:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    const/4 v0, 0x1

    iput-boolean v0, p0, gs:Z

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->wtn(Lcom/android/server/am/ivd;I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->gck(Lcom/android/server/am/ivd;I)V

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    invoke-direct {p0}, vn()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "uid setForeground"

    invoke-direct {p0, v0, v1}, you(ZLjava/lang/String;)V

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    iget v2, p0, uid:I

    const-string v3, "uid setForeground"

    invoke-static {v1, v2, v0, v3}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    :cond_1
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->dma(Lcom/android/server/am/ivd;I)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "foreground package change tFront:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setImportant(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, bs:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x5

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "important uid change tImportant:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setIsolated(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, isolated:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setPackageName(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, packageName:Ljava/lang/String;

    iget-object v0, p0, Lr:Lcom/android/server/am/ivd$sis;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lr:Lcom/android/server/am/ivd$sis;

    invoke-static {v0, p1}, Lcom/android/server/am/ivd$sis;->zta(Lcom/android/server/am/ivd$sis;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Mr:Lcom/android/server/am/ivd$you;

    if-eqz v0, :cond_1

    iget-object v0, p0, Mr:Lcom/android/server/am/ivd$you;

    invoke-static {v0, p1}, Lcom/android/server/am/ivd$you;->you(Lcom/android/server/am/ivd$you;Ljava/lang/String;)V

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

.method private setProcessState(I)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget v0, p0, processState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, p1, :cond_3

    iput p1, p0, processState:I

    iget v0, p0, processState:I

    invoke-static {}, Lcom/android/server/am/ivd;->ec()I

    move-result v3

    if-gt v0, v3, :cond_0

    iget-boolean v0, p0, hs:Z

    if-nez v0, :cond_1

    iput-boolean v2, p0, hs:Z

    iget-wide v3, p0, Tr:J

    const-wide/16 v5, 0x100

    or-long/2addr v3, v5

    iput-wide v3, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, hs:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, hs:Z

    iget-wide v3, p0, Tr:J

    const-wide/16 v5, -0x101

    and-long/2addr v3, v5

    iput-wide v3, p0, Tr:J

    :goto_0
    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iget v3, p0, processState:I

    const/4 v4, 0x5

    if-gt v3, v4, :cond_2

    iget-boolean v3, p0, Yr:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, _r:Z

    if-nez v3, :cond_4

    iget-wide v3, p0, Tr:J

    const-wide/32 v5, 0x10000

    or-long/2addr v3, v5

    iput-wide v3, p0, Tr:J

    iput-boolean v2, p0, _r:Z

    goto :goto_2

    :cond_2
    iget-boolean v3, p0, Yr:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, _r:Z

    if-eqz v3, :cond_4

    iget-wide v3, p0, Tr:J

    const-wide/32 v5, -0x10001

    and-long/2addr v3, v5

    iput-wide v3, p0, Tr:J

    iput-boolean v1, p0, _r:Z

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :cond_4
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "process state change tProcessState:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, check(Ljava/lang/String;)V

    :cond_5
    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process state change tProcessState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " traffic:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Yr:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " download:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, _r:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setUidActive(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, uidActive:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Vr:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Vr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Vr:J

    const-wide/16 v2, -0x2

    and-long/2addr v0, v2

    iput-wide v0, p0, Vr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid active tActive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic sis(Lcom/android/server/am/ivd$igw;)I
    .locals 0

    invoke-direct {p0}, Dn()I

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, tb(I)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/ivd$igw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Pb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ka(Z)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/ivd$igw;)Ljava/util/HashSet;
    .locals 0

    invoke-direct {p0}, xn()Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, setProcessState(I)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ta(Z)V

    return-void
.end method

.method private ssp(Lcom/android/server/am/ivd$sis;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lr:Lcom/android/server/am/ivd$sis;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ta(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, as:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/16 v2, -0x3

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "touchWindow change tAdd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private tb(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, vr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private tn()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, yr:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic tsu(Lcom/android/server/am/ivd$igw;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Ob(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/am/ivd$igw;)V
    .locals 0

    invoke-direct {p0}, Hn()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, zb(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, la(Z)V

    return-void
.end method

.method private tsu(Ljava/lang/String;Z)V
    .locals 9

    invoke-static {}, Lcom/android/server/am/ivd;->_b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, ur:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1}, Lcom/android/server/am/ivd;->bvj(Lcom/android/server/am/ivd;)Z

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    iget-object v3, p0, packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;Ljava/lang/String;)Z

    move-result v2

    monitor-enter p0

    :try_start_1
    iget-wide v3, p0, Tr:J

    const-wide/16 v5, 0x80

    and-long/2addr v3, v5

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v0, v4

    :cond_2
    iget-wide v5, p0, Tr:J

    const-wide/16 v7, 0x2000

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    move v0, v4

    :cond_3
    iget-wide v5, p0, Tr:J

    const-wide/32 v7, 0x10000

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_4

    move v0, v4

    :cond_4
    iget-wide v5, p0, Tr:J

    const-wide/32 v7, 0x20000

    and-long/2addr v5, v7

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    move v0, v4

    :cond_5
    invoke-static {}, Lcom/android/server/am/ivd;->ac()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    invoke-direct {p0}, vn()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-direct {p0}, un()Z

    move-result v1

    if-nez v1, :cond_6

    move v0, v4

    :cond_6
    invoke-static {}, Lcom/android/server/am/ivd;->ac()Z

    move-result v1

    if-nez v1, :cond_7

    if-nez v2, :cond_7

    invoke-direct {p0}, vn()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-direct {p0}, un()Z

    move-result v1

    if-nez v1, :cond_7

    move v0, v4

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    iget v2, p0, uid:I

    invoke-static {v1, v2}, Lcom/android/server/am/ivd;->igw(Lcom/android/server/am/ivd;I)Z

    move-result v1

    if-eq v0, v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " change to:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, this$0:Lcom/android/server/am/ivd;

    iget p0, p0, uid:I

    invoke-static {p2, p0, v0, p1}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method private tsu(Ljava/util/HashSet;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iget v0, p0, uid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " return false"

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses contain uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, wr:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    :goto_3
    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    iget-object v6, v4, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ContentProviderRecord;

    iget-object v6, v6, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ContentProviderConnection;

    if-eqz v7, :cond_5

    iget v8, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v7, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v8, v7, :cond_5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v8, v7}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v8

    const-string v9, " |serverUid:"

    if-eqz v8, :cond_7

    iget v10, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-direct {v8, v10}, sb(I)V

    invoke-direct {v8}, yn()Z

    move-result v10

    const-string v11, " return true"

    const/4 v12, 0x1

    if-eqz v10, :cond_6

    invoke-direct {v8, p1}, tsu(Ljava/util/HashSet;)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return v12

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses there is a client process that cannot be frozen clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    iput v7, p0, Gr:I

    return v12

    :cond_7
    invoke-static {v7}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v8

    if-eqz v8, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses there is a system process as a client clientUid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isUidProvidingOtherUnableFreezeProcesses uid:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, uid:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " can freeze return false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private ua(Z)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Zr:Z

    if-eqz p1, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/32 v2, 0x20000

    or-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Tr:J

    const-wide/32 v2, -0x20001

    and-long/2addr v0, v2

    iput-wide v0, p0, Tr:J

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ivd;->rtg(Lcom/android/server/am/ivd;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "trafficHigh event tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private ub(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Dr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private un()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, xr:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private va(Z)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Yr:Z

    iget v0, p0, processState:I

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-gt v0, v1, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, _r:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Tr:J

    const-wide/32 v4, 0x10000

    or-long/2addr v0, v4

    iput-wide v0, p0, Tr:J

    iput-boolean v3, p0, _r:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, _r:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Tr:J

    const-wide/32 v4, -0x10001

    and-long/2addr v0, v4

    iput-wide v0, p0, Tr:J

    iput-boolean v2, p0, _r:Z

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p0, uid:I

    invoke-static {v0, v1, p1}, Lcom/android/server/am/ivd;->tsu(Lcom/android/server/am/ivd;IZ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "traffic event tStart:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " download:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, _r:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private vb(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Cr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private vn()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Rr:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private wb(I)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/android/server/am/ivd;->access$2600()Z

    move-result v0

    if-eqz v0, :cond_0

    return p0

    :cond_0
    if-ne p1, p0, :cond_1

    invoke-static {}, Lcom/android/server/am/ivd;->access$2700()Z

    move-result p1

    if-eqz p1, :cond_1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private wn()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Dr:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic wtn(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ua(Z)V

    return-void
.end method

.method private xb(I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Cr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private xn()Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Cr:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private yb(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Dr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private yn()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ivd;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Ur:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Vr:J

    :goto_0
    iget-wide v2, p0, Tr:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private you(IZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Jr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Jr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Jr:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, es:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, es:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, 0x20

    or-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, es:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, es:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, -0x21

    and-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic you(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, ub(I)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/ivd$igw;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, zta(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/ivd$igw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Rb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/ivd$igw;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, rtg(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, setIsolated(Z)V

    return-void
.end method

.method private you(ZILjava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, providers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, providers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, providers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    sub-int/2addr v0, v2

    if-lez v0, :cond_2

    iget-object p1, p0, providers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget-object p1, p0, providers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    iget-object p1, p0, providers:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, ls:Z

    if-nez p1, :cond_5

    iput-boolean v2, p0, ls:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, 0x1000

    or-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    goto :goto_3

    :cond_4
    iget-boolean p1, p0, ls:Z

    if-eqz p1, :cond_5

    iput-boolean v1, p0, ls:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, -0x1001

    and-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    :cond_5
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private you(ZLjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setImperceptible uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " from:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {v0, p2}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Rr:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic you(Lcom/android/server/am/ivd$igw;)Z
    .locals 0

    invoke-direct {p0}, In()Z

    move-result p0

    return p0
.end method

.method static synthetic ywr(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, ia(Z)V

    return-void
.end method

.method private zb(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, yr:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zn()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, foreground:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private zta(ILcom/android/server/am/ProcessRecord;)V
    .locals 1

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object v0, p0, wr:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zta(IZLjava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Kr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Kr:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Kr:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, fs:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, fs:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, 0x40

    or-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, fs:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, fs:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, -0x41

    and-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private zta(JJJ)V
    .locals 9

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Tr:J

    iput-wide p3, p0, Ur:J

    iput-wide p5, p0, Vr:J

    iget-wide v0, p0, Vr:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, uidActive:Z

    goto :goto_0

    :cond_0
    iput-boolean v4, p0, uidActive:Z

    :goto_0
    iget-wide v5, p0, Tr:J

    const-wide/16 v7, 0x2000

    and-long/2addr v5, v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_1

    iput-boolean v1, p0, Wr:Z

    goto :goto_1

    :cond_1
    iput-boolean v4, p0, Wr:Z

    :goto_1
    iget-wide v5, p0, Tr:J

    const-wide/16 v7, 0x4000

    and-long/2addr v5, v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_2

    iput-boolean v1, p0, Xr:Z

    goto :goto_2

    :cond_2
    iput-boolean v4, p0, Xr:Z

    :goto_2
    iget-wide v5, p0, Tr:J

    const-wide/32 v7, 0x10000

    and-long/2addr v5, v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_3

    iput-boolean v1, p0, _r:Z

    goto :goto_3

    :cond_3
    iput-boolean v4, p0, _r:Z

    :goto_3
    iget-wide v5, p0, Tr:J

    const-wide/32 v7, 0x20000

    and-long/2addr v5, v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    iput-boolean v1, p0, Zr:Z

    goto :goto_4

    :cond_4
    iput-boolean v4, p0, Zr:Z

    :goto_4
    iget-wide v5, p0, Tr:J

    const-wide/32 v7, 0x8000

    and-long/2addr v5, v7

    cmp-long v0, v5, v7

    if-nez v0, :cond_5

    iput-boolean v1, p0, sensor:Z

    goto :goto_5

    :cond_5
    iput-boolean v4, p0, sensor:Z

    :goto_5
    iget-wide v5, p0, Tr:J

    and-long/2addr v5, v2

    cmp-long v0, v5, v2

    if-nez v0, :cond_6

    iput-boolean v1, p0, foreground:Z

    goto :goto_6

    :cond_6
    iput-boolean v4, p0, foreground:Z

    :goto_6
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x2

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_7

    iput-boolean v1, p0, as:Z

    goto :goto_7

    :cond_7
    iput-boolean v4, p0, as:Z

    :goto_7
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x4

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_8

    iput-boolean v1, p0, bs:Z

    goto :goto_8

    :cond_8
    iput-boolean v4, p0, bs:Z

    :goto_8
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x8

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_9

    iput-boolean v1, p0, cs:Z

    goto :goto_9

    :cond_9
    iput-boolean v4, p0, cs:Z

    :goto_9
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x10

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_a

    iput-boolean v1, p0, ds:Z

    goto :goto_a

    :cond_a
    iput-boolean v4, p0, ds:Z

    :goto_a
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x20

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_b

    iput-boolean v1, p0, es:Z

    goto :goto_b

    :cond_b
    iput-boolean v4, p0, es:Z

    :goto_b
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x40

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_c

    iput-boolean v1, p0, fs:Z

    goto :goto_c

    :cond_c
    iput-boolean v4, p0, fs:Z

    :goto_c
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x80

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_d

    iput-boolean v1, p0, gs:Z

    goto :goto_d

    :cond_d
    iput-boolean v4, p0, gs:Z

    :goto_d
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x100

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_e

    iput-boolean v1, p0, hs:Z

    goto :goto_e

    :cond_e
    iput-boolean v4, p0, hs:Z

    :goto_e
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x200

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_f

    iput-boolean v1, p0, is:Z

    goto :goto_f

    :cond_f
    iput-boolean v4, p0, is:Z

    :goto_f
    iget-wide v2, p0, Tr:J

    const-wide/16 v5, 0x400

    and-long/2addr v2, v5

    cmp-long v0, v2, v5

    if-nez v0, :cond_10

    iput-boolean v1, p0, js:Z

    goto :goto_10

    :cond_10
    iput-boolean v4, p0, js:Z

    :goto_10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setFlag tFlag1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tFlag2:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " tFlag3:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, p6}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;)V
    .locals 0

    invoke-direct {p0}, En()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;I)V
    .locals 0

    invoke-direct {p0, p1}, vb(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;ILcom/android/server/am/ProcessRecord;)V
    .locals 0

    invoke-direct {p0, p1, p2}, zta(ILcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, you(IZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;JJJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, zta(JJJ)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;Lcom/android/server/am/ivd$sis;)V
    .locals 0

    invoke-direct {p0, p1}, ssp(Lcom/android/server/am/ivd$sis;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, zta(Ljava/lang/Boolean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, dma(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, tsu(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;Z)V
    .locals 0

    invoke-direct {p0, p1}, sa(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;ZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, you(ZILjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, zta(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, zta(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private zta(Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, wn()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v2, v1}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "notifyBindClientsStateChange"

    if-eqz v2, :cond_1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    iget v4, p0, uid:I

    invoke-static {v2, p2, v3, v4}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, check(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    iget v4, p0, uid:I

    invoke-static {v2, p2, v3, v4}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Rb(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private zta(ZLjava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " dump begin--------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # systemFlag = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, ur:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # isolated = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, isolated:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    iget-boolean v0, p0, isolated:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # boundUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, yr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v2, p0, yr:I

    invoke-static {v0, v2}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "# "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " # boundUid isFreeze = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v0}, un()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # freeze = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, xr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # imperceptible = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Rr:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # totalStateMap1 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Tr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->access$5200()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # totalStateMap2 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Ur:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # totalStateMap3 = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Vr:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # deepBlockPoint = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Fr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # blockClientUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Gr:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # blockBindedUid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Er:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # birthTime = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Nr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # lastReason = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Or:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # processState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, processState:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # uidActive = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, uidActive:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # foreground = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, foreground:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # uidStateImportant = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, hs:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # foregroundSwitchProtect = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, gs:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # contentNotifyResume = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, is:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # audio = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Wr:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # gps = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Xr:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # download = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, _r:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " traffic = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Yr:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # trafficHigh = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Zr:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # sensor = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, sensor:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # touchWindow = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, as:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # mediaProjection = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, js:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # important = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, bs:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # pids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, vr:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # prs = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, wr:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # bumpService = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, fs:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # bumpServicePids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Kr:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # performReceiveBroadcast = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, es:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # performingBroadcastPids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Jr:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # deviceIdleWhiteList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, cs:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # freezeWhiteList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, ds:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isContainInWhiteList = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0}, Lcom/android/server/am/ivd;->zgw(Lcom/android/server/am/ivd;)Ljava/util/HashSet;

    move-result-object v0

    iget-object v2, p0, packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # isOptApp = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0}, Lcom/android/server/am/ivd;->obl(Lcom/android/server/am/ivd;)Ljava/util/HashSet;

    move-result-object v0

    iget v2, p0, uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # uidsNeedNotify = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, tr:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # isolatedUids = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ar:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # holdVirtualDevice = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, ks:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # virtualDevices = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Br:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # holdImportantProvider = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, ls:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # providers = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, providers:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # thirdBindedClients = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Dr:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # thirdBindedServers = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Cr:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " # firstFrozen = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Sr:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " # uid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, uid:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " dump end----------------------"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private zta(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Br:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Br:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object p1, p0, Br:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, ks:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    iput-boolean p1, p0, ks:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, 0x800

    or-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    goto :goto_1

    :cond_1
    iget-boolean p1, p0, ks:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, ks:Z

    iget-wide p1, p0, Tr:J

    const-wide/16 v0, -0x801

    and-long/2addr p1, v0

    iput-wide p1, p0, Tr:J

    :cond_2
    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p3}, check(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;ILjava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, gwm(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/ivd$igw;[J)Z
    .locals 0

    invoke-direct {p0, p1}, igw([J)Z

    move-result p0

    return p0
.end method
