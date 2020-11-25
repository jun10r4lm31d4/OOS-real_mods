.class Lcom/oneplus/faceunlock/camera/Camera2Device$7;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device;->onStart(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iput-object p2, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p3, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p4, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    iput-object p5, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v6, :cond_0

    iget-object v6, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v6, :cond_0

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/faceunlock/camera/Camera2Device$7$1;

    invoke-direct {v7, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$7$1;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$7;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1702(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1802(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;)Landroid/os/Handler;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v7, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1902(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/Token;)Lcom/oneplus/faceunlock/utils/Token;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    if-eqz v6, :cond_3

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Use preview image reader"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v2

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    mul-int v7, v5, v2

    mul-int/lit8 v7, v7, 0x3

    div-int/lit8 v7, v7, 0x2

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2002(Lcom/oneplus/faceunlock/camera/Camera2Device;I)I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v10, :cond_1

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2000(Lcom/oneplus/faceunlock/camera/Camera2Device;)I

    move-result v6

    new-array v0, v6, [B

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2100(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Use surface texture"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    new-instance v7, Landroid/view/Surface;

    iget-object v8, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v7, v8}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2202(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/view/Surface;)Landroid/view/Surface;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    const/16 v7, 0x23

    const/16 v8, 0xa

    invoke-static {v5, v2, v7, v8}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2302(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/media/ImageReader;)Landroid/media/ImageReader;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/media/ImageReader;

    move-result-object v6

    new-instance v7, Lcom/oneplus/faceunlock/camera/Camera2Device$7$2;

    invoke-direct {v7, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$7$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$7;)V

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1400(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/media/ImageReader;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2702(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2700(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v7

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/Surface;

    invoke-virtual {v7, v6}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cannot create capture request"

    invoke-static {v6, v7, v1}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/faceunlock/camera/Camera2Device$7$3;

    invoke-direct {v7, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$7$3;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$7;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    if-eqz v6, :cond_6

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6, v9}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$302(Lcom/oneplus/faceunlock/camera/Camera2Device;Z)Z

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2700(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v6

    sget-object v7, Landroid/hardware/camera2/CaptureRequest;->STATISTICS_FACE_DETECT_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    :goto_3
    :try_start_1
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    new-instance v7, Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/camera/Camera2Device$1;)V

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2802(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;)Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2800(Lcom/oneplus/faceunlock/camera/Camera2Device;)Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1400(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v6, v4, v7, v8}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Cannot create capture session"

    invoke-static {v6, v7, v1}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/faceunlock/camera/Camera2Device$7$4;

    invoke-direct {v7, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$7$4;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$7;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_6
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    const/4 v7, 0x0

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$302(Lcom/oneplus/faceunlock/camera/Camera2Device;Z)Z

    goto :goto_3
.end method
