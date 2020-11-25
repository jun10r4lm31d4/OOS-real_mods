.class Lcom/oneplus/faceunlock/camera/Camera2Device$8;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device;->onStop(Lcom/oneplus/faceunlock/utils/Token;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/Token;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iput-object p2, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p3, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p4, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v2, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$3002(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v2, p0, val$callbackHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$3102(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v2, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$3202(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/Token;)Lcom/oneplus/faceunlock/utils/Token;

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStop() - Close session"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Utils;->dropImages(Landroid/media/ImageReader;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onStop() - Fail to close capture session"

    invoke-static {v1, v2, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v2}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$000(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V

    goto :goto_0
.end method
