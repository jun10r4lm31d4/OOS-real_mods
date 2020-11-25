.class public final Lcom/oneplus/faceunlock/utils/ThreadMonitor;
.super Ljava/lang/Object;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;,
        Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreadMonitor"

.field private static final THREAD_CHECK_INTERVAL:J = 0xbb8L

.field private static final m_AllThreadInfos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final m_CurrentThreadInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile m_IsDisabled:Z

.field private static volatile m_IsPrepared:Z

.field private static volatile m_MonitorThread:Ljava/lang/Thread;

.field private static final m_ResponseCallback:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, m_AllThreadInfos:Ljava/util/LinkedList;

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$1;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/utils/ThreadMonitor$1;-><init>()V

    sput-object v0, m_ResponseCallback:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/ThreadLocal;
    .locals 1

    sget-object v0, m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;)V
    .locals 0

    invoke-static {p0}, stopMonitorCurrentThread(Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;)V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    invoke-static {}, threadMonitorProc()V

    return-void
.end method

.method public static declared-synchronized disable()V
    .locals 2

    const-class v0, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, m_IsDisabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized enable()V
    .locals 2

    const-class v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, m_IsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, m_IsDisabled:Z

    const-class v0, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized prepare()V
    .locals 3

    const-class v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "ThreadMonitor"

    const-string v2, "prepare()"

    invoke-static {v0, v2}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$2;

    invoke-direct {v2}, Lcom/oneplus/faceunlock/utils/ThreadMonitor$2;-><init>()V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    sput-object v0, m_MonitorThread:Ljava/lang/Thread;

    sget-object v0, m_MonitorThread:Ljava/lang/Thread;

    const-string v2, "Thread monitor"

    invoke-virtual {v0, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    sget-object v0, m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, m_IsPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static printThreadBlockedLogs(Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;)V
    .locals 12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->lastResponseTime:J

    sub-long v0, v4, v6

    const-string v4, "ThreadMonitor"

    const-string v5, "Thread \'%s\' (%d) is not responding, last response time is %.2f seconds ago. Stack trace :"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    long-to-double v8, v0

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    const/4 v2, 0x0

    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    const-string v4, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v2

    invoke-static {v6}, Lcom/oneplus/faceunlock/utils/Log;->formatStackTraceElement(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static declared-synchronized release()V
    .locals 3

    const-class v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    const-string v0, "ThreadMonitor"

    const-string v2, "release()"

    invoke-static {v0, v2}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, m_MonitorThread:Ljava/lang/Thread;

    if-eqz v0, :cond_1

    sget-object v0, m_MonitorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    const/4 v0, 0x0

    sput-object v0, m_MonitorThread:Ljava/lang/Thread;

    :cond_1
    sget-object v0, m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    sput-boolean v0, m_IsPrepared:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized startMonitorCurrentThread()Lcom/oneplus/faceunlock/utils/Handle;
    .locals 7

    const-class v4, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    const/4 v1, 0x0

    :goto_0
    monitor-exit v4

    return-object v1

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/utils/Device;->isSavingLog()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, disable()V

    :cond_1
    new-instance v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;

    invoke-direct {v1}, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v3, m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->activeHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_3
    const-string v3, "ThreadMonitor"

    const-string v5, "startMonitorCurrentThread() - e:"

    invoke-static {v3, v5, v0}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    new-instance v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;

    invoke-direct {v2}, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;-><init>()V

    iget-object v3, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->activeHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    sget-object v3, m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    const-string v3, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Start monitor \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private static declared-synchronized stopMonitorCurrentThread(Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;)V
    .locals 7

    const-class v4, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v4

    :try_start_0
    sget-boolean v3, m_IsPrepared:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit v4

    return-void

    :cond_1
    const/4 v2, 0x0

    :try_start_1
    sget-object v3, m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    iget-object v3, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->activeHandles:Ljava/util/LinkedList;

    invoke-virtual {v3, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    iget-object v3, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->activeHandles:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    sget-object v3, m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    sget-object v3, m_CurrentThreadInfo:Ljava/lang/ThreadLocal;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const-string v3, "ThreadMonitor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Stop monitor \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->thread:Ljava/lang/Thread;

    invoke-virtual {v6}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->threadId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    :catch_0
    move-exception v1

    :try_start_3
    const-string v3, "ThreadMonitor"

    const-string v5, "Error to get current thread info"

    invoke-static {v3, v5, v1}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private static threadMonitorProc()V
    .locals 5

    const-string v2, "ThreadMonitor"

    const-string v3, "***** Monitor thread start *****"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    const-class v3, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-boolean v2, m_IsDisabled:Z

    if-eqz v2, :cond_0

    const-string v2, "ThreadMonitor"

    const-string v4, "xxxxx Monitor thread is disabled xxxxx"

    invoke-static {v2, v4}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-class v2, Lcom/oneplus/faceunlock/utils/ThreadMonitor;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    const-string v2, "ThreadMonitor"

    const-string v4, "+++++ Monitor thread is enabled +++++"

    invoke-static {v2, v4}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v2, m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_2

    sget-object v2, m_AllThreadInfos:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;

    monitor-enter v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget v2, v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    if-lez v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->notResponding:Z

    invoke-static {v1}, printThreadBlockedLogs(Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;)V

    monitor-exit v1

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v2, v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->handler:Landroid/os/Handler;

    sget-object v4, m_ResponseCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget v2, v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadInfo;->pendingResponseCount:I

    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v2

    const-string v2, "ThreadMonitor"

    const-string v3, "***** Monitor thread stop *****"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-wide/16 v2, 0xbb8

    :try_start_6
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v2

    const-string v3, "ThreadMonitor"

    const-string v4, "***** Monitor thread stop *****"

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    throw v2
.end method
