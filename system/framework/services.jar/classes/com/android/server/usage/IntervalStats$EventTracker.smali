.class public final Lcom/android/server/usage/IntervalStats$EventTracker;
.super Ljava/lang/Object;
.source "IntervalStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/IntervalStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTracker"
.end annotation


# instance fields
.field public count:I

.field public curStartTime:J

.field public duration:J

.field public lastEventTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addToEventStats(Ljava/util/List;IJJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;IJJ)V"
        }
    .end annotation

    iget v0, p0, count:I

    if-nez v0, :cond_0

    iget-wide v0, p0, duration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Landroid/app/usage/EventStats;

    invoke-direct {v0}, Landroid/app/usage/EventStats;-><init>()V

    iput p2, v0, Landroid/app/usage/EventStats;->mEventType:I

    iget v1, p0, count:I

    iput v1, v0, Landroid/app/usage/EventStats;->mCount:I

    iget-wide v1, p0, duration:J

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mTotalTime:J

    iget-wide v1, p0, lastEventTime:J

    iput-wide v1, v0, Landroid/app/usage/EventStats;->mLastEventTime:J

    iput-wide p3, v0, Landroid/app/usage/EventStats;->mBeginTimeStamp:J

    iput-wide p5, v0, Landroid/app/usage/EventStats;->mEndTimeStamp:J

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public commitTime(J)V
    .locals 6

    iget-wide v0, p0, curStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-wide v4, p0, duration:J

    sub-long v0, p1, v0

    add-long/2addr v4, v0

    iput-wide v4, p0, duration:J

    iput-wide v2, p0, curStartTime:J

    :cond_0
    return-void
.end method

.method public update(J)V
    .locals 4

    iget-wide v0, p0, curStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, count:I

    :cond_0
    invoke-virtual {p0, p1, p2}, commitTime(J)V

    iput-wide p1, p0, curStartTime:J

    iput-wide p1, p0, lastEventTime:J

    return-void
.end method
