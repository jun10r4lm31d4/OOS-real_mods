.class Lcom/android/server/am/D$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field ZB:Ljava/lang/String;

.field _B:J

.field final synthetic this$0:Lcom/android/server/am/D;

.field uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/D;)V
    .locals 2

    iput-object p1, p0, this$0:Lcom/android/server/am/D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, uid:I

    const-string p1, ""

    iput-object p1, p0, ZB:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, _B:J

    return-void
.end method

.method private So()V
    .locals 4

    iget-wide v0, p0, _B:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, uid:I

    const-string v0, ""

    iput-object v0, p0, ZB:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, _B:J

    :cond_0
    return-void
.end method

.method private isEmpty()Z
    .locals 4

    iget v0, p0, uid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-wide v0, p0, _B:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private sis(Lcom/android/server/am/D$you;)V
    .locals 2

    iget v0, p1, uid:I

    iput v0, p0, uid:I

    iget-object v0, p1, ZB:Ljava/lang/String;

    iput-object v0, p0, ZB:Ljava/lang/String;

    iget-wide v0, p1, _B:J

    iput-wide v0, p0, _B:J

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/D$you;)Z
    .locals 0

    invoke-direct {p0}, isEmpty()Z

    move-result p0

    return p0
.end method

.method private zta(ILjava/lang/String;J)V
    .locals 0

    iput p1, p0, uid:I

    iput-object p2, p0, ZB:Ljava/lang/String;

    iput-wide p3, p0, _B:J

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/D$you;)V
    .locals 0

    invoke-direct {p0}, So()V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/D$you;ILjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, zta(ILjava/lang/String;J)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/D$you;Lcom/android/server/am/D$you;)V
    .locals 0

    invoke-direct {p0, p1}, sis(Lcom/android/server/am/D$you;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NextTrigger uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " jobTag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, ZB:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " triggerTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, _B:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
