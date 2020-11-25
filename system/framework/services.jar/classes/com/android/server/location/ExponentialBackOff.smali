.class Lcom/android/server/location/ExponentialBackOff;
.super Ljava/lang/Object;
.source "ExponentialBackOff.java"


# static fields
.field private static final MULTIPLIER:I = 0x2


# instance fields
.field private mCurrentIntervalMillis:J

.field private final mInitIntervalMillis:J

.field private final mMaxIntervalMillis:J


# direct methods
.method constructor <init>(JJ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, mInitIntervalMillis:J

    iput-wide p3, p0, mMaxIntervalMillis:J

    iget-wide v0, p0, mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, mCurrentIntervalMillis:J

    return-void
.end method


# virtual methods
.method nextBackoffMillis()J
    .locals 5

    iget-wide v0, p0, mCurrentIntervalMillis:J

    iget-wide v2, p0, mMaxIntervalMillis:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return-wide v2

    :cond_0
    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    iput-wide v0, p0, mCurrentIntervalMillis:J

    iget-wide v0, p0, mCurrentIntervalMillis:J

    return-wide v0
.end method

.method reset()V
    .locals 4

    iget-wide v0, p0, mInitIntervalMillis:J

    const-wide/16 v2, 0x2

    div-long/2addr v0, v2

    iput-wide v0, p0, mCurrentIntervalMillis:J

    return-void
.end method
