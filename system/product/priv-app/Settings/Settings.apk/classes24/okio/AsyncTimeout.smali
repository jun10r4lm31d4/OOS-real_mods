.class public Lokio/AsyncTimeout;
.super Lokio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private inQueue:Z

.field private next:Lokio/AsyncTimeout;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, IDLE_TIMEOUT_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-wide v1, IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lokio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lokio/AsyncTimeout;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    sget-object v0, head:Lokio/AsyncTimeout;

    iget-object v0, v0, next:Lokio/AsyncTimeout;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    const-class v4, Lokio/AsyncTimeout;

    sget-wide v5, IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/Object;->wait(J)V

    sget-object v4, head:Lokio/AsyncTimeout;

    iget-object v4, v4, next:Lokio/AsyncTimeout;

    if-nez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sget-wide v6, IDLE_TIMEOUT_NANOS:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    sget-object v1, head:Lokio/AsyncTimeout;

    goto :goto_0

    :cond_0
    nop

    :goto_0
    return-object v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, remainingNanos(J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_2

    const-wide/32 v4, 0xf4240

    div-long v6, v2, v4

    mul-long/2addr v4, v6

    sub-long/2addr v2, v4

    const-class v4, Lokio/AsyncTimeout;

    long-to-int v5, v2

    invoke-virtual {v4, v6, v7, v5}, Ljava/lang/Object;->wait(JI)V

    return-object v1

    :cond_2
    sget-object v4, head:Lokio/AsyncTimeout;

    iget-object v5, v0, next:Lokio/AsyncTimeout;

    iput-object v5, v4, next:Lokio/AsyncTimeout;

    iput-object v1, v0, next:Lokio/AsyncTimeout;

    return-object v0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lokio/AsyncTimeout;)Z
    .locals 3

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    :try_start_0
    sget-object v1, head:Lokio/AsyncTimeout;

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, v1, next:Lokio/AsyncTimeout;

    if-ne v2, p0, :cond_0

    iget-object v2, p0, next:Lokio/AsyncTimeout;

    iput-object v2, v1, next:Lokio/AsyncTimeout;

    const/4 v2, 0x0

    iput-object v2, p0, next:Lokio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private remainingNanos(J)J
    .locals 2

    iget-wide v0, p0, timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lokio/AsyncTimeout;JZ)V
    .locals 8

    const-class v0, Lokio/AsyncTimeout;

    monitor-enter v0

    :try_start_0
    sget-object v1, head:Lokio/AsyncTimeout;

    if-nez v1, :cond_0

    new-instance v1, Lokio/AsyncTimeout;

    invoke-direct {v1}, <init>()V

    sput-object v1, head:Lokio/AsyncTimeout;

    new-instance v1, Lokio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lokio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lokio/AsyncTimeout$Watchdog;->start()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p0}, deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, timeoutAt:J

    goto :goto_0

    :cond_1
    cmp-long v3, p1, v3

    if-eqz v3, :cond_2

    add-long v3, v1, p1

    iput-wide v3, p0, timeoutAt:J

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_6

    invoke-virtual {p0}, deadlineNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, timeoutAt:J

    :goto_0
    invoke-direct {p0, v1, v2}, remainingNanos(J)J

    move-result-wide v3

    sget-object v5, head:Lokio/AsyncTimeout;

    :goto_1
    iget-object v6, v5, next:Lokio/AsyncTimeout;

    if-eqz v6, :cond_4

    iget-object v6, v5, next:Lokio/AsyncTimeout;

    invoke-direct {v6, v1, v2}, remainingNanos(J)J

    move-result-wide v6

    cmp-long v6, v3, v6

    if-gez v6, :cond_3

    goto :goto_2

    :cond_3
    iget-object v6, v5, next:Lokio/AsyncTimeout;

    move-object v5, v6

    goto :goto_1

    :cond_4
    :goto_2
    iget-object v6, v5, next:Lokio/AsyncTimeout;

    iput-object v6, p0, next:Lokio/AsyncTimeout;

    iput-object p0, v5, next:Lokio/AsyncTimeout;

    sget-object v6, head:Lokio/AsyncTimeout;

    if-ne v5, v6, :cond_5

    const-class v6, Lokio/AsyncTimeout;

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v0

    return-void

    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final enter()V
    .locals 5

    iget-boolean v0, p0, inQueue:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, timeoutNanos()J

    move-result-wide v0

    invoke-virtual {p0}, hasDeadline()Z

    move-result v2

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, inQueue:Z

    invoke-static {p0, v0, v1, v2}, scheduleTimeout(Lokio/AsyncTimeout;JZ)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method final exit(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, exit()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    iget-boolean v0, p0, inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-boolean v1, p0, inQueue:Z

    invoke-static {p0}, cancelScheduledTimeout(Lokio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_0
    return-object v0
.end method

.method public final sink(Lokio/Sink;)Lokio/Sink;
    .locals 1

    new-instance v0, Lokio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$1;-><init>(Lokio/AsyncTimeout;Lokio/Sink;)V

    return-object v0
.end method

.method public final source(Lokio/Source;)Lokio/Source;
    .locals 1

    new-instance v0, Lokio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lokio/AsyncTimeout$2;-><init>(Lokio/AsyncTimeout;Lokio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    return-void
.end method
