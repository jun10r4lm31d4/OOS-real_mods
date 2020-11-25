.class Lcom/android/server/wm/OpPowerConsumpStats$tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "tsu"
.end annotation


# instance fields
.field AZ:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/OpPowerConsumpStats$rtg;",
            ">;"
        }
    .end annotation
.end field

.field BZ:I

.field CZ:J

.field DZ:D

.field EZ:I

.field FZ:J

.field mPkgName:Ljava/lang/String;

.field mVersionCode:I

.field final synthetic this$0:Lcom/android/server/wm/OpPowerConsumpStats;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Lcom/android/server/wm/OpPowerConsumpStats$tsu;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, AZ:Landroid/util/SparseArray;

    iget-object p1, p2, mPkgName:Ljava/lang/String;

    iput-object p1, p0, mPkgName:Ljava/lang/String;

    iget p1, p2, mVersionCode:I

    iput p1, p0, mVersionCode:I

    iget p1, p2, EZ:I

    iput p1, p0, EZ:I

    iget-wide p1, p2, FZ:J

    iput-wide p1, p0, FZ:J

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, AZ:Landroid/util/SparseArray;

    iput-object p2, p0, mPkgName:Ljava/lang/String;

    iput p3, p0, mVersionCode:I

    return-void
.end method

.method private Jr()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-static {}, Lcom/android/server/wm/OpPowerConsumpStats;->Le()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, AZ:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private cno(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V
    .locals 8

    if-eqz p1, :cond_1

    iget-object v0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, p0, AZ:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)J

    move-result-wide v5

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    iget-object v1, p0, AZ:Landroid/util/SparseArray;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->ssp(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    :goto_0
    iget v0, p0, BZ:I

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, BZ:I

    iget-wide v0, p0, CZ:J

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, CZ:J

    :cond_1
    return-void
.end method

.method private yc(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"package_name\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, mPkgName:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "unknow"

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"int\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, EZ:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p0, p0, FZ:J

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$tsu;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, yc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private zc(I)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"pn\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, mPkgName:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "unknow"

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"pc\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, mVersionCode:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"drop\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, BZ:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"run\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, CZ:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    sget-object v2, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->Hza:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-gt v1, v2, :cond_5

    move v2, p1

    :goto_1
    const/4 v3, 0x5

    if-ge v2, v3, :cond_4

    iget-object v3, p0, AZ:Landroid/util/SparseArray;

    mul-int/lit8 v4, v1, 0x5

    add-int/2addr v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    if-eqz v3, :cond_3

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v3

    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_3

    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->WIFI:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v1, v6, :cond_1

    const-string v6, "W_"

    goto :goto_2

    :cond_1
    sget-object v6, Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;->CELLULAR:Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-ne v1, v6, :cond_2

    const-string v6, "M_"

    goto :goto_2

    :cond_2
    const-string v6, "N_"

    :goto_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\",\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "R"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "\":\""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "C"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, zc(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$tsu;Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V
    .locals 0

    invoke-direct {p0, p1}, cno(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V

    return-void
.end method


# virtual methods
.method lqr(J)V
    .locals 2

    iget v0, p0, EZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, EZ:I

    iget-wide v0, p0, FZ:J

    add-long/2addr v0, p1

    iput-wide v0, p0, FZ:J

    return-void
.end method

.method sis(IJ)V
    .locals 2

    iget v0, p0, EZ:I

    add-int/2addr v0, p1

    iput v0, p0, EZ:I

    iget-wide v0, p0, FZ:J

    add-long/2addr v0, p2

    iput-wide v0, p0, FZ:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# CapConsumption ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, BZ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-wide v3, p0, CZ:J

    invoke-static {v2, v3, v4}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] GapTouch ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, EZ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-wide v2, p0, FZ:J

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Jr()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method zta(ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V
    .locals 8

    iget-object v0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, p0, AZ:Landroid/util/SparseArray;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    move-object v1, v0

    move v3, p1

    move-object v4, p2

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    :cond_0
    iget v1, p0, BZ:I

    add-int/2addr v1, p5

    iput v1, p0, BZ:I

    iget-wide v1, p0, CZ:J

    add-long/2addr v1, p3

    iput-wide v1, p0, CZ:J

    iget-object p3, p0, AZ:Landroid/util/SparseArray;

    iget-object p0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    invoke-virtual {p3, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method zta(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)V
    .locals 8

    iget-object v0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    iget-object v1, p0, AZ:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;Landroid/util/SparseArray;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/OpPowerConsumpStats$rtg;

    iget-object v2, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v3

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object v4

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)J

    move-result-wide v5

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v7

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;-><init>(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;JI)V

    :cond_0
    iget v1, p0, BZ:I

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->rtg(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, BZ:I

    iget-wide v1, p0, CZ:J

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->tsu(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p0, CZ:J

    iget-object v1, p0, AZ:Landroid/util/SparseArray;

    iget-object p0, p0, this$0:Lcom/android/server/wm/OpPowerConsumpStats;

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->you(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)I

    move-result v2

    invoke-static {p1}, Lcom/android/server/wm/OpPowerConsumpStats$rtg;->sis(Lcom/android/server/wm/OpPowerConsumpStats$rtg;)Lcom/android/server/wm/OpPowerConsumpStats$NetworkType;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/android/server/wm/OpPowerConsumpStats;->zta(Lcom/android/server/wm/OpPowerConsumpStats;ILcom/android/server/wm/OpPowerConsumpStats$NetworkType;)I

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
