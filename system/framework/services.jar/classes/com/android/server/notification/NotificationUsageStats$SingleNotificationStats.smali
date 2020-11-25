.class public Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SingleNotificationStats"
.end annotation


# instance fields
.field public airtimeCount:J

.field public airtimeExpandedMs:J

.field public airtimeMs:J

.field public currentAirtimeExpandedStartElapsedMs:J

.field public currentAirtimeStartElapsedMs:J

.field private isExpanded:Z

.field public isNoisy:Z

.field private isVisible:Z

.field public naturalImportance:I

.field public posttimeElapsedMs:J

.field public posttimeToDismissMs:J

.field public posttimeToFirstAirtimeMs:J

.field public posttimeToFirstClickMs:J

.field public posttimeToFirstVisibleExpansionMs:J

.field public requestedImportance:I

.field public userExpansionCount:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, isVisible:Z

    iput-boolean v0, p0, isExpanded:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, posttimeElapsedMs:J

    iput-wide v0, p0, posttimeToFirstClickMs:J

    iput-wide v0, p0, posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, airtimeCount:J

    iput-wide v0, p0, posttimeToFirstAirtimeMs:J

    iput-wide v0, p0, currentAirtimeStartElapsedMs:J

    iput-wide v2, p0, airtimeMs:J

    iput-wide v0, p0, posttimeToFirstVisibleExpansionMs:J

    iput-wide v0, p0, currentAirtimeExpandedStartElapsedMs:J

    iput-wide v2, p0, airtimeExpandedMs:J

    iput-wide v2, p0, userExpansionCount:J

    return-void
.end method

.method private updateVisiblyExpandedStats()V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, isExpanded:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, isVisible:Z

    if-eqz v2, :cond_1

    iget-wide v5, p0, currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_0

    iput-wide v0, p0, currentAirtimeExpandedStartElapsedMs:J

    :cond_0
    iget-wide v5, p0, posttimeToFirstVisibleExpansionMs:J

    cmp-long v2, v5, v3

    if-gez v2, :cond_2

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long v2, v0, v2

    iput-wide v2, p0, posttimeToFirstVisibleExpansionMs:J

    goto :goto_0

    :cond_1
    iget-wide v5, p0, currentAirtimeExpandedStartElapsedMs:J

    cmp-long v2, v5, v3

    if-ltz v2, :cond_2

    iget-wide v2, p0, airtimeExpandedMs:J

    sub-long v4, v0, v5

    add-long/2addr v2, v4

    iput-wide v2, p0, airtimeExpandedMs:J

    const-wide/16 v2, -0x1

    iput-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onVisibilityChanged(Z)V

    return-void
.end method

.method public getCurrentAirtimeExpandedMs()J
    .locals 6

    iget-wide v0, p0, airtimeExpandedMs:J

    iget-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, currentAirtimeExpandedStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getCurrentAirtimeMs()J
    .locals 6

    iget-wide v0, p0, airtimeMs:J

    iget-wide v2, p0, currentAirtimeStartElapsedMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, currentAirtimeStartElapsedMs:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public getCurrentPosttimeMs()J
    .locals 4

    iget-wide v0, p0, posttimeElapsedMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    return-wide v2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public hasBeenVisiblyExpanded()Z
    .locals 4

    iget-wide v0, p0, posttimeToFirstVisibleExpansionMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCancel()V
    .locals 0

    invoke-virtual {p0}, finish()V

    return-void
.end method

.method public onClick()V
    .locals 4

    iget-wide v0, p0, posttimeToFirstClickMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, posttimeToFirstClickMs:J

    :cond_0
    return-void
.end method

.method public onDismiss()V
    .locals 4

    iget-wide v0, p0, posttimeToDismissMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, posttimeElapsedMs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, posttimeToDismissMs:J

    :cond_0
    invoke-virtual {p0}, finish()V

    return-void
.end method

.method public onExpansionChanged(ZZ)V
    .locals 4

    iput-boolean p2, p0, isExpanded:Z

    iget-boolean v0, p0, isExpanded:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-wide v0, p0, userExpansionCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, userExpansionCount:J

    :cond_0
    invoke-direct {p0}, updateVisiblyExpandedStats()V

    return-void
.end method

.method public onRemoved()V
    .locals 0

    invoke-virtual {p0}, finish()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, isVisible:Z

    iput-boolean p1, p0, isVisible:Z

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_1

    iget-wide v5, p0, currentAirtimeStartElapsedMs:J

    cmp-long v5, v5, v3

    if-gez v5, :cond_0

    iget-wide v5, p0, airtimeCount:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, airtimeCount:J

    iput-wide v0, p0, currentAirtimeStartElapsedMs:J

    :cond_0
    iget-wide v5, p0, posttimeToFirstAirtimeMs:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_2

    iget-wide v3, p0, posttimeElapsedMs:J

    sub-long v3, v0, v3

    iput-wide v3, p0, posttimeToFirstAirtimeMs:J

    goto :goto_0

    :cond_1
    iget-wide v5, p0, currentAirtimeStartElapsedMs:J

    cmp-long v3, v5, v3

    if-ltz v3, :cond_2

    iget-wide v3, p0, airtimeMs:J

    sub-long v5, v0, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, airtimeMs:J

    const-wide/16 v3, -0x1

    iput-wide v3, p0, currentAirtimeStartElapsedMs:J

    :cond_2
    :goto_0
    iget-boolean v3, p0, isVisible:Z

    if-eq v2, v3, :cond_3

    invoke-direct {p0}, updateVisiblyExpandedStats()V

    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SingleNotificationStats{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "posttimeElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, posttimeElapsedMs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "posttimeToFirstClickMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, posttimeToFirstClickMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "posttimeToDismissMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, posttimeToDismissMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "airtimeCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, airtimeCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "airtimeMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, airtimeMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currentAirtimeStartElapsedMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, currentAirtimeStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "airtimeExpandedMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, airtimeExpandedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "posttimeToFirstVisibleExpansionMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, posttimeToFirstVisibleExpansionMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "currentAirtimeExpandedStartElapsedMs="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, currentAirtimeExpandedStartElapsedMs:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "requestedImportance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, requestedImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "naturalImportance="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, naturalImportance:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNoisy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, isNoisy:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V
    .locals 2

    iget-wide v0, p1, posttimeElapsedMs:J

    iput-wide v0, p0, posttimeElapsedMs:J

    iget-wide v0, p1, posttimeToFirstClickMs:J

    iput-wide v0, p0, posttimeToFirstClickMs:J

    iget-wide v0, p1, airtimeCount:J

    iput-wide v0, p0, airtimeCount:J

    iget-wide v0, p1, posttimeToFirstAirtimeMs:J

    iput-wide v0, p0, posttimeToFirstAirtimeMs:J

    iget-wide v0, p1, currentAirtimeStartElapsedMs:J

    iput-wide v0, p0, currentAirtimeStartElapsedMs:J

    iget-wide v0, p1, airtimeMs:J

    iput-wide v0, p0, airtimeMs:J

    iget-wide v0, p1, posttimeToFirstVisibleExpansionMs:J

    iput-wide v0, p0, posttimeToFirstVisibleExpansionMs:J

    iget-wide v0, p1, currentAirtimeExpandedStartElapsedMs:J

    iput-wide v0, p0, currentAirtimeExpandedStartElapsedMs:J

    iget-wide v0, p1, airtimeExpandedMs:J

    iput-wide v0, p0, airtimeExpandedMs:J

    iget-wide v0, p1, userExpansionCount:J

    iput-wide v0, p0, userExpansionCount:J

    return-void
.end method
