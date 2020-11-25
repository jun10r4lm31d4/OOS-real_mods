.class Lcom/oneplus/faceunlock/camera/Camera2Device$6;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device;->onRelease(ZLandroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$isSynced:Z

.field final synthetic val$syncLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;ZLjava/lang/Object;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iput-boolean p2, p0, val$isSynced:Z

    iput-object p3, p0, val$syncLock:Ljava/lang/Object;

    iput-object p4, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p5, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRelease() - Release camera [Start]"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRelease() - Release camera [End]"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1600(Lcom/oneplus/faceunlock/camera/Camera2Device;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Handle;->close(Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->release()V

    iget-boolean v1, p0, val$isSynced:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, val$syncLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, val$syncLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onRelease() - Fail to release camera"

    invoke-static {v1, v2, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    iget-object v1, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/camera/Camera2Device$6$1;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$6$1;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$6;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
