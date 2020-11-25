.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$7;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->onStop(Lcom/oneplus/faceunlock/utils/Token;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

.field final synthetic val$resultRef:Lcom/oneplus/faceunlock/utils/SimpleRef;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/utils/SimpleRef;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iput-object p2, p0, val$resultRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onStop() - Start"

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/graphics/SurfaceTexture;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v4

    if-eqz v4, :cond_0

    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onStop() - Release dummy SurfaceTexture"

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/SurfaceTexture;->release()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1402(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    :cond_0
    iget-object v4, p0, val$resultRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    sget-object v5, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v4, v5}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStop() - End, spent : "

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
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_3
    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onStop() - Error while releasing dummy SurfaceTexture"

    invoke-static {v4, v5, v1}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string v5, "onStop() - Error to stop"

    invoke-static {v4, v5, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_6
    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v4

    :catchall_1
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v4

    :catchall_2
    move-exception v4

    iget-object v5, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_8
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->notify()V

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v4

    :catchall_3
    move-exception v4

    :try_start_9
    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v4
.end method
