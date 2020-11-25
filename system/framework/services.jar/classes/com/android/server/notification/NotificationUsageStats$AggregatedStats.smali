.class Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationUsageStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AggregatedStats"
.end annotation


# instance fields
.field public alertRate:Lcom/android/server/notification/AlertRateLimiter;

.field public enqueueRate:Lcom/android/server/notification/RateEstimator;

.field public finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public final key:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mCreated:J

.field public mLastAccessTime:J

.field private mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field public noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

.field public numAlertViolations:I

.field public numAutoCancel:I

.field public numBlocked:I

.field public numEnqueuedByApp:I

.field public numForegroundService:I

.field public numInterrupt:I

.field public numOngoing:I

.field public numPeopleCacheHit:I

.field public numPeopleCacheMiss:I

.field public numPostedByApp:I

.field public numPrivate:I

.field public numQuotaViolations:I

.field public numRateViolations:I

.field public numRemovedByApp:I

.field public numSecret:I

.field public numSuspendedByAdmin:I

.field public numUpdatedByApp:I

.field public numWithActions:I

.field public numWithBigPicture:I

.field public numWithBigText:I

.field public numWithInbox:I

.field public numWithInfoText:I

.field public numWithLargeIcon:I

.field public numWithMediaSession:I

.field public numWithStaredPeople:I

.field public numWithSubText:I

.field public numWithText:I

.field public numWithTitle:I

.field public numWithValidPeople:I

.field public quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, key:Ljava/lang/String;

    iput-object p1, p0, mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, mCreated:J

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_imp_noisy_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_imp_quiet_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    const-string/jumbo v1, "note_importance_"

    invoke-direct {v0, p1, v1}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    new-instance v0, Lcom/android/server/notification/RateEstimator;

    invoke-direct {v0}, Lcom/android/server/notification/RateEstimator;-><init>()V

    iput-object v0, p0, enqueueRate:Lcom/android/server/notification/RateEstimator;

    new-instance v0, Lcom/android/server/notification/AlertRateLimiter;

    invoke-direct {v0}, Lcom/android/server/notification/AlertRateLimiter;-><init>()V

    iput-object v0, p0, alertRate:Lcom/android/server/notification/AlertRateLimiter;

    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    float-to-double v0, p3

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    float-to-double v0, p3

    invoke-virtual {p1, p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-lez p3, :cond_0

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "AggregatedStats{\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "key=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\',\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "numEnqueuedByApp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, numEnqueuedByApp:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPostedByApp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numPostedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numUpdatedByApp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numUpdatedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numRemovedByApp="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numRemovedByApp:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPeopleCacheHit="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numPeopleCacheHit:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithStaredPeople="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithStaredPeople:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithValidPeople="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithValidPeople:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPeopleCacheMiss="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numPeopleCacheMiss:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numBlocked="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numBlocked:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numSuspendedByAdmin="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numSuspendedByAdmin:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithActions="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithActions:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numPrivate="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numPrivate:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numSecret="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numSecret:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numInterrupt="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numInterrupt:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithBigText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithBigText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "numWithBigPicture="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, numWithBigPicture:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numForegroundService="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numForegroundService:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numOngoing="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numOngoing:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numAutoCancel="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numAutoCancel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithLargeIcon="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithLargeIcon:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithInbox="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithInbox:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithMediaSession="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithMediaSession:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithTitle="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithTitle:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithSubText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithSubText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numWithInfoText="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numWithInfoText:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numRateViolations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numRateViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numAlertViolations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numAlertViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "numQuotaViolations="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, numQuotaViolations:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public countApiUse(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v1, :cond_0

    iget v1, p0, numWithActions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numWithActions:I

    :cond_0
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_1

    iget v1, p0, numForegroundService:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numForegroundService:I

    :cond_1
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget v1, p0, numOngoing:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numOngoing:I

    :cond_2
    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    iget v1, p0, numAutoCancel:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numAutoCancel:I

    :cond_3
    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_4

    iget v1, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/app/Notification;->vibrate:[J

    if-eqz v1, :cond_5

    :cond_4
    iget v1, p0, numInterrupt:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numInterrupt:I

    :cond_5
    iget v1, v0, Landroid/app/Notification;->visibility:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    if-eqz v1, :cond_6

    goto :goto_0

    :cond_6
    iget v1, p0, numPrivate:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numPrivate:I

    goto :goto_0

    :cond_7
    iget v1, p0, numSecret:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numSecret:I

    :goto_0
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget-boolean v1, v1, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->isNoisy:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    goto :goto_1

    :cond_8
    iget-object v1, p0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    iget v2, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->requestedImportance:I

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    :goto_1
    iget-object v1, p0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->increment(I)V

    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    const-string v2, "android.bigText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget v2, p0, numWithBigText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithBigText:I

    :cond_9
    const-string v2, "android.picture"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget v2, p0, numWithBigPicture:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithBigPicture:I

    :cond_a
    const-string v2, "android.largeIcon"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget v2, p0, numWithLargeIcon:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithLargeIcon:I

    :cond_b
    const-string v2, "android.textLines"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget v2, p0, numWithInbox:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithInbox:I

    :cond_c
    const-string v2, "android.mediaSession"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget v2, p0, numWithMediaSession:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithMediaSession:I

    :cond_d
    const-string v2, "android.title"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget v2, p0, numWithTitle:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithTitle:I

    :cond_e
    const-string v2, "android.text"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget v2, p0, numWithText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithText:I

    :cond_f
    const-string v2, "android.subText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    iget v2, p0, numWithSubText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithSubText:I

    :cond_10
    const-string v2, "android.infoText"

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_11

    iget v2, p0, numWithInfoText:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, numWithInfoText:I

    :cond_11
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public dumpJson()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    invoke-virtual {p0}, getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, key:Ljava/lang/String;

    const-string/jumbo v3, "key"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, mCreated:J

    sub-long/2addr v2, v4

    const-string v4, "duration"

    invoke-virtual {v1, v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget v2, p0, numEnqueuedByApp:I

    const-string/jumbo v3, "numEnqueuedByApp"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numPostedByApp:I

    const-string/jumbo v3, "numPostedByApp"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numUpdatedByApp:I

    const-string/jumbo v3, "numUpdatedByApp"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numRemovedByApp:I

    const-string/jumbo v3, "numRemovedByApp"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numPeopleCacheHit:I

    const-string/jumbo v3, "numPeopleCacheHit"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numPeopleCacheMiss:I

    const-string/jumbo v3, "numPeopleCacheMiss"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithStaredPeople:I

    const-string/jumbo v3, "numWithStaredPeople"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithValidPeople:I

    const-string/jumbo v3, "numWithValidPeople"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numBlocked:I

    const-string/jumbo v3, "numBlocked"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numSuspendedByAdmin:I

    const-string/jumbo v3, "numSuspendedByAdmin"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithActions:I

    const-string/jumbo v3, "numWithActions"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numPrivate:I

    const-string/jumbo v3, "numPrivate"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numSecret:I

    const-string/jumbo v3, "numSecret"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numInterrupt:I

    const-string/jumbo v3, "numInterrupt"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithBigText:I

    const-string/jumbo v3, "numWithBigText"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithBigPicture:I

    const-string/jumbo v3, "numWithBigPicture"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numForegroundService:I

    const-string/jumbo v3, "numForegroundService"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numOngoing:I

    const-string/jumbo v3, "numOngoing"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numAutoCancel:I

    const-string/jumbo v3, "numAutoCancel"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithLargeIcon:I

    const-string/jumbo v3, "numWithLargeIcon"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithInbox:I

    const-string/jumbo v3, "numWithInbox"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithMediaSession:I

    const-string/jumbo v3, "numWithMediaSession"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithTitle:I

    const-string/jumbo v3, "numWithTitle"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithText:I

    const-string/jumbo v3, "numWithText"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithSubText:I

    const-string/jumbo v3, "numWithSubText"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numWithInfoText:I

    const-string/jumbo v3, "numWithInfoText"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numRateViolations:I

    const-string/jumbo v3, "numRateViolations"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget v2, p0, numQuotaViolations:I

    const-string/jumbo v3, "numQuotaLViolations"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    invoke-virtual {p0}, getEnqueueRate()F

    move-result v2

    const-string/jumbo v3, "notificationEnqueueRate"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;F)V

    iget v2, p0, numAlertViolations:I

    const-string/jumbo v3, "numAlertViolations"

    invoke-direct {p0, v1, v3, v2}, maybePut(Lorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v2, p0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget-object v2, p0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget-object v2, p0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v3, v0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybePut(Lorg/json/JSONObject;Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    return-object v1
.end method

.method public emit()V
    .locals 3

    invoke-virtual {p0}, getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    move-result-object v0

    iget v1, p0, numEnqueuedByApp:I

    iget v2, v0, numEnqueuedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_enqueued"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numPostedByApp:I

    iget v2, v0, numPostedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_post"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numUpdatedByApp:I

    iget v2, v0, numUpdatedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_update"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numRemovedByApp:I

    iget v2, v0, numRemovedByApp:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_remove"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithValidPeople:I

    iget v2, v0, numWithValidPeople:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_people"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithStaredPeople:I

    iget v2, v0, numWithStaredPeople:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_stars"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numPeopleCacheHit:I

    iget v2, v0, numPeopleCacheHit:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "people_cache_hit"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numPeopleCacheMiss:I

    iget v2, v0, numPeopleCacheMiss:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "people_cache_miss"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numBlocked:I

    iget v2, v0, numBlocked:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_blocked"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numSuspendedByAdmin:I

    iget v2, v0, numSuspendedByAdmin:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_suspended"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithActions:I

    iget v2, v0, numWithActions:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_with_actions"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numPrivate:I

    iget v2, v0, numPrivate:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_private"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numSecret:I

    iget v2, v0, numSecret:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_secret"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numInterrupt:I

    iget v2, v0, numInterrupt:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_interupt"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithBigText:I

    iget v2, v0, numWithBigText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_big_text"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithBigPicture:I

    iget v2, v0, numWithBigPicture:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_big_pic"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numForegroundService:I

    iget v2, v0, numForegroundService:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_fg"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numOngoing:I

    iget v2, v0, numOngoing:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_ongoing"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numAutoCancel:I

    iget v2, v0, numAutoCancel:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_auto"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithLargeIcon:I

    iget v2, v0, numWithLargeIcon:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_large_icon"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithInbox:I

    iget v2, v0, numWithInbox:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_inbox"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithMediaSession:I

    iget v2, v0, numWithMediaSession:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_media"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithTitle:I

    iget v2, v0, numWithTitle:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_title"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithText:I

    iget v2, v0, numWithText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_text"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithSubText:I

    iget v2, v0, numWithSubText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_sub_text"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numWithInfoText:I

    iget v2, v0, numWithInfoText:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_info_text"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numRateViolations:I

    iget v2, v0, numRateViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_rate"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numAlertViolations:I

    iget v2, v0, numAlertViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_alert_rate"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget v1, p0, numQuotaViolations:I

    iget v2, v0, numQuotaViolations:I

    sub-int/2addr v1, v2

    const-string/jumbo v2, "note_over_quota"

    invoke-virtual {p0, v2, v1}, maybeCount(Ljava/lang/String;I)V

    iget-object v1, p0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget-object v1, p0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget-object v1, p0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->maybeCount(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget v1, p0, numEnqueuedByApp:I

    iput v1, v0, numEnqueuedByApp:I

    iget v1, p0, numPostedByApp:I

    iput v1, v0, numPostedByApp:I

    iget v1, p0, numUpdatedByApp:I

    iput v1, v0, numUpdatedByApp:I

    iget v1, p0, numRemovedByApp:I

    iput v1, v0, numRemovedByApp:I

    iget v1, p0, numPeopleCacheHit:I

    iput v1, v0, numPeopleCacheHit:I

    iget v1, p0, numPeopleCacheMiss:I

    iput v1, v0, numPeopleCacheMiss:I

    iget v1, p0, numWithStaredPeople:I

    iput v1, v0, numWithStaredPeople:I

    iget v1, p0, numWithValidPeople:I

    iput v1, v0, numWithValidPeople:I

    iget v1, p0, numBlocked:I

    iput v1, v0, numBlocked:I

    iget v1, p0, numSuspendedByAdmin:I

    iput v1, v0, numSuspendedByAdmin:I

    iget v1, p0, numWithActions:I

    iput v1, v0, numWithActions:I

    iget v1, p0, numPrivate:I

    iput v1, v0, numPrivate:I

    iget v1, p0, numSecret:I

    iput v1, v0, numSecret:I

    iget v1, p0, numInterrupt:I

    iput v1, v0, numInterrupt:I

    iget v1, p0, numWithBigText:I

    iput v1, v0, numWithBigText:I

    iget v1, p0, numWithBigPicture:I

    iput v1, v0, numWithBigPicture:I

    iget v1, p0, numForegroundService:I

    iput v1, v0, numForegroundService:I

    iget v1, p0, numOngoing:I

    iput v1, v0, numOngoing:I

    iget v1, p0, numAutoCancel:I

    iput v1, v0, numAutoCancel:I

    iget v1, p0, numWithLargeIcon:I

    iput v1, v0, numWithLargeIcon:I

    iget v1, p0, numWithInbox:I

    iput v1, v0, numWithInbox:I

    iget v1, p0, numWithMediaSession:I

    iput v1, v0, numWithMediaSession:I

    iget v1, p0, numWithTitle:I

    iput v1, v0, numWithTitle:I

    iget v1, p0, numWithText:I

    iput v1, v0, numWithText:I

    iget v1, p0, numWithSubText:I

    iput v1, v0, numWithSubText:I

    iget v1, p0, numWithInfoText:I

    iput v1, v0, numWithInfoText:I

    iget v1, p0, numRateViolations:I

    iput v1, v0, numRateViolations:I

    iget v1, p0, numAlertViolations:I

    iput v1, v0, numAlertViolations:I

    iget v1, p0, numQuotaViolations:I

    iput v1, v0, numQuotaViolations:I

    iget-object v1, p0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, noisyImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget-object v1, p0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, quietImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    iget-object v1, p0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    iget-object v2, v0, finalImportance:Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;

    invoke-virtual {v1, v2}, Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;->update(Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;)V

    return-void
.end method

.method public getEnqueueRate()F
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, getEnqueueRate(J)F

    move-result v0

    return v0
.end method

.method public getEnqueueRate(J)F
    .locals 1

    iget-object v0, p0, enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->getRate(J)F

    move-result v0

    return v0
.end method

.method public getPrevious()Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3

    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, key:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, <init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    :cond_0
    iget-object v0, p0, mPrevious:Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    return-object v0
.end method

.method public isAlertRateLimited()Z
    .locals 3

    iget-object v0, p0, alertRate:Lcom/android/server/notification/AlertRateLimiter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/AlertRateLimiter;->shouldRateLimitAlert(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, numAlertViolations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, numAlertViolations:I

    :cond_0
    return v0
.end method

.method maybeCount(Ljava/lang/String;I)V
    .locals 1

    if-lez p2, :cond_0

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, toStringWithIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateInterarrivalEstimate(J)V
    .locals 1

    iget-object v0, p0, enqueueRate:Lcom/android/server/notification/RateEstimator;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/RateEstimator;->update(J)F

    return-void
.end method
