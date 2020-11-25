.class Lcom/android/server/wm/you/kth;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/you/bio;


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/bio;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v1}, Lcom/android/server/wm/you/bio;->you(Lcom/android/server/wm/you/bio;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-object v1, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v1}, Lcom/android/server/wm/you/bio;->sis(Lcom/android/server/wm/you/bio;)Ljava/util/ArrayDeque;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/you/bio$rtg;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/you/bio$rtg;->onDequeuedLocked()V

    :cond_1
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/wm/you/bio$rtg;->write()V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    :cond_2
    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v0}, Lcom/android/server/wm/you/bio;->sis(Lcom/android/server/wm/you/bio;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v2, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v2}, Lcom/android/server/wm/you/bio;->you(Lcom/android/server/wm/you/bio;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v2, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v2, v0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;Z)Z

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;Z)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to wait for mWriteQueue. e =:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->sa(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method
