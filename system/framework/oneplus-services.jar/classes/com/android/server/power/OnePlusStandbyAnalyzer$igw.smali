.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$igw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "igw"
.end annotation


# instance fields
.field public NN:J

.field public PN:Z

.field public mCount:I

.field public mEnd:I

.field public mStart:I

.field public mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;


# direct methods
.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mCount:I

    iput v0, p0, mStart:I

    iput v0, p0, mEnd:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, NN:J

    iput-boolean v0, p0, PN:Z

    iput-object p1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    iput p2, p0, mStart:I

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->dza:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->eza:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, PN:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mCount:I

    iput v0, p0, mStart:I

    iput v0, p0, mEnd:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, NN:J

    iput-boolean v0, p0, PN:Z

    iput-object p1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    iput p2, p0, mCount:I

    iput p3, p0, mStart:I

    iput p4, p0, mEnd:I

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->dza:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->eza:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, PN:Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mCount:I

    iput v0, p0, mStart:I

    iput v0, p0, mEnd:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, NN:J

    iput-boolean v0, p0, PN:Z

    iput-object p1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, mStart:I

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    iput-wide p2, p0, NN:J

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->dza:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-eq p1, p2, :cond_0

    sget-object p2, Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->eza:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, PN:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public Cd()Z
    .locals 4

    sget-object v0, Lcom/android/server/power/kth;->pN:[I

    iget-object v1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, NN:J

    invoke-static {}, Lcom/android/server/power/OnePlusStandbyAnalyzer;->Id()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public Dd()Z
    .locals 3

    sget-object v0, Lcom/android/server/power/kth;->pN:[I

    iget-object v1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, mCount:I

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public Ed()Z
    .locals 0

    iget-boolean p0, p0, PN:Z

    return p0
.end method

.method public Fd()Z
    .locals 2

    sget-object v0, Lcom/android/server/power/kth;->pN:[I

    iget-object v1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, mCount:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public igw(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, mEnd:I

    iget p1, p0, mEnd:I

    iget v0, p0, mStart:I

    sub-int/2addr p1, v0

    iput p1, p0, mCount:I

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, NN:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# RPMInfo ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mType:Lcom/android/server/power/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, NN:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, mStart:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, mCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
