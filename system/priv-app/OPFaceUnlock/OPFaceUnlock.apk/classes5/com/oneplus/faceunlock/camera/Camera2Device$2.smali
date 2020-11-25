.class Lcom/oneplus/faceunlock/camera/Camera2Device$2;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "Camera2Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device;->onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 8
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/hardware/camera2/CaptureRequest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/hardware/camera2/TotalCaptureResult;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1, p3}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$400(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v0

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$500(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$500(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$500(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v2

    new-instance v3, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v3, v4, v0, v6, v7}, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;ZJ)V

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$600(Lcom/oneplus/faceunlock/camera/Camera2Device;)V

    goto :goto_0
.end method
