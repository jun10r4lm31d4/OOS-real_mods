.class public Lcom/oneplus/lib/util/calendar/OneplusLunarCalendar;
.super Ljava/lang/Object;
.source "OneplusLunarCalendar.java"


# instance fields
.field private leapMonthFlag:Z

.field private lunarDay:I

.field private lunarMonth:I

.field private lunarYear:I


# direct methods
.method public constructor <init>(IIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, lunarYear:I

    iput p2, p0, lunarMonth:I

    iput p3, p0, lunarDay:I

    iput-boolean p4, p0, leapMonthFlag:Z

    return-void
.end method


# virtual methods
.method public getLunarDay()I
    .locals 1

    iget v0, p0, lunarDay:I

    return v0
.end method

.method public getLunarMonth()I
    .locals 1

    iget v0, p0, lunarMonth:I

    return v0
.end method

.method public getLunarYear()I
    .locals 1

    iget v0, p0, lunarYear:I

    return v0
.end method

.method public getYYMMDD()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, lunarYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u5e74"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, leapMonthFlag:Z

    if-eqz v1, :cond_0

    const-string v1, "\u95f0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, lunarMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u6708"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, lunarDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\u65e5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isLeapMonth()Z
    .locals 1

    iget-boolean v0, p0, leapMonthFlag:Z

    return v0
.end method

.method public setLeapMonth(Z)V
    .locals 0

    iput-boolean p1, p0, leapMonthFlag:Z

    return-void
.end method

.method public setLunarDay(I)V
    .locals 0

    iput p1, p0, lunarDay:I

    return-void
.end method

.method public setLunarYear(I)V
    .locals 0

    iput p1, p0, lunarYear:I

    return-void
.end method
