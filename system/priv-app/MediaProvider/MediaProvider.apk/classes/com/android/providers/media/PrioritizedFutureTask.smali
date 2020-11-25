.class public Lcom/android/providers/media/PrioritizedFutureTask;
.super Ljava/util/concurrent/FutureTask;
.source "PrioritizedFutureTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/FutureTask<",
        "TT;>;",
        "Ljava/lang/Comparable<",
        "Lcom/android/providers/media/PrioritizedFutureTask<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final PRIORITY_CRITICAL:I = 0x0

.field static final PRIORITY_HIGH:I = 0x5

.field static final PRIORITY_LOW:I = 0x14

.field static final PRIORITY_NORMAL:I = 0xa


# instance fields
.field final priority:I

.field final requestTime:J


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Callable;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, requestTime:J

    iput p2, p0, priority:I

    return-void
.end method


# virtual methods
.method public final compareTo(Lcom/android/providers/media/PrioritizedFutureTask;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/PrioritizedFutureTask<",
            "TT;>;)I"
        }
    .end annotation

    iget v0, p0, priority:I

    iget v1, p1, priority:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget-wide v0, p0, requestTime:J

    iget-wide p0, p1, requestTime:J

    cmp-long v4, v0, p0

    if-eqz v4, :cond_3

    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/providers/media/PrioritizedFutureTask;

    invoke-virtual {p0, p1}, compareTo(Lcom/android/providers/media/PrioritizedFutureTask;)I

    move-result p0

    return p0
.end method
