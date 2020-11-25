.class Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "Camera2Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

.field final synthetic val$cameraId:Ljava/lang/String;

.field final synthetic val$manager:Landroid/hardware/camera2/CameraManager;

.field final synthetic val$openCameraRetryCountRef:Lcom/oneplus/faceunlock/utils/SimpleRef;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;Lcom/oneplus/faceunlock/utils/SimpleRef;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iput-object p2, p0, val$openCameraRetryCountRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    iput-object p3, p0, val$manager:Landroid/hardware/camera2/CameraManager;

    iput-object p4, p0, val$cameraId:Ljava/lang/String;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method final synthetic lambda$onError$0$Camera2Device$5$1(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v1, v1, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1, p1, p2, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1500(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Fail to open camera"

    invoke-static {v1, v2, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDisconnected() - Disconnected"

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->isStop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v1, v1, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraCaptureSession;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$000(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V

    :cond_0
    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

    invoke-interface {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;->onCameraDisconnected()V

    :cond_1
    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$2;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object v0, p0, val$openCameraRetryCountRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    iget-object v1, p0, val$openCameraRetryCountRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    iget-object v0, p0, val$openCameraRetryCountRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() - Retry : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, val$openCameraRetryCountRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1400(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$$Lambda$0;

    iget-object v2, p0, val$manager:Landroid/hardware/camera2/CameraManager;

    iget-object v3, p0, val$cameraId:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() - Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    invoke-interface {v0, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;->onCameraError(I)V

    :cond_2
    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$3;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$3;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2
    .param p1    # Landroid/hardware/camera2/CameraDevice;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onOpened() - Camera is opened successfully"

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1202(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callbackHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$5;->val$callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$1;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$1;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
