.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->onRelease(ZLandroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$isSynced:Z

.field final synthetic val$syncObj:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;ZLjava/lang/Object;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iput-boolean p2, p0, val$isSynced:Z

    iput-object p3, p0, val$syncObj:Ljava/lang/Object;

    iput-object p4, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p5, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    new-instance v1, Lcom/oneplus/faceunlock/utils/SimpleRef;

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-direct {v1, v4}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onRelease() - Start"

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onRelease() - Camera is empty"

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/faceunlock/utils/Handle;->close(Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-boolean v4, p0, val$isSynced:Z

    if-eqz v4, :cond_1

    iget-object v5, p0, val$syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_1
    iget-object v4, p0, val$syncObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_1
    iget-object v4, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;

    invoke-direct {v5, p0, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->stopPreview()V

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Camera;->release()V

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$002(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/hardware/Camera;)Landroid/hardware/Camera;

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$802(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRelease() - End, spent : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/faceunlock/utils/Handle;->close(Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-boolean v4, p0, val$isSynced:Z

    if-eqz v4, :cond_3

    iget-object v5, p0, val$syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, val$syncObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v4

    :cond_3
    iget-object v4, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;

    invoke-direct {v5, p0, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onRelease() - Error to release camera"

    invoke-static {v4, v5, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v1, v4}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/faceunlock/utils/Handle;->close(Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    iget-boolean v4, p0, val$isSynced:Z

    if-eqz v4, :cond_4

    iget-object v5, p0, val$syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_5
    iget-object v4, p0, val$syncObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5

    goto/16 :goto_0

    :catchall_2
    move-exception v4

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4

    :cond_4
    iget-object v4, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v4, :cond_0

    iget-object v4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v4, :cond_0

    iget-object v4, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;

    invoke-direct {v5, p0, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :catchall_3
    move-exception v4

    iget-object v5, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/faceunlock/utils/Handle;->close(Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    iget-object v5, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/Semaphore;->release()V

    iget-boolean v5, p0, val$isSynced:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, val$syncObj:Ljava/lang/Object;

    monitor-enter v5

    :try_start_6
    iget-object v6, p0, val$syncObj:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_5
    :goto_1
    throw v4

    :catchall_4
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v4

    :cond_6
    iget-object v5, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v5, :cond_5

    iget-object v5, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v5, :cond_5

    iget-object v5, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v6, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;

    invoke-direct {v6, p0, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
