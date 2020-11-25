.class final Lcom/oneplus/faceunlock/utils/ThreadMonitor$1;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/utils/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/utils/ThreadMonitor;->access$000()Ljava/lang/ThreadLocal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v3, :cond_0

    :goto_1
    return-void

    :catch_0
    move-exception v2

    const-string v4, "ThreadMonitor"

    const-string v5, "Error to get current thread info"

    invoke-static {v4, v5, v2}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    monitor-enter v3

    :try_start_1
    iget v4, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    add-int/lit8 v4, v4, -0x1

    iput v4, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->lastResponseTime:J

    iget-boolean v4, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->notResponding:Z

    if-eqz v4, :cond_1

    iget v4, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    if-gtz v4, :cond_1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->notResponding:Z

    const-string v4, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Get response from thread \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method
