.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->onStart(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iput-object p2, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iput-object p3, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p5, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    new-instance v3, Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {v3}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Start"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    if-eqz v6, :cond_0

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1100(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Z

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Setup camera state callback"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    if-eqz v6, :cond_2

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iget-object v7, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v7, v7, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    iget-object v9, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v9}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$900(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/List;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/oneplus/faceunlock/utils/Utils;->selectProperContentSize(IILjava/util/List;)Landroid/util/Size;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1202(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/util/Size;)Landroid/util/Size;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;

    move-result-object v6

    if-nez v6, :cond_1

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    new-instance v7, Landroid/util/Size;

    const/16 v8, 0x280

    const/16 v9, 0x1e0

    invoke-direct {v7, v8, v9}, Landroid/util/Size;-><init>(II)V

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1202(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/util/Size;)Landroid/util/Size;

    :cond_1
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera$Parameters;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStart() - Container size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", use preview size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v6, :cond_3

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v7, v7, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Use surface texture"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$700(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

    move-result-object v7

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$600()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget v9, v9, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->displayRotationDegrees:I

    invoke-static {v6, v7, v8, v9}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;II)I

    move-result v2

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    iget-object v6, p0, val$startParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->cameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    if-eqz v6, :cond_8

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;

    move-result-object v7

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;

    move-result-object v8

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    mul-int/2addr v7, v8

    int-to-float v7, v7

    const/high16 v8, 0x3fc00000    # 1.5f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1602(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;I)I

    const/4 v1, 0x0

    :goto_1
    const/4 v6, 0x2

    if-ge v1, v6, :cond_7

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1600(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)I

    move-result v7

    new-array v7, v7, [B

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1300(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    new-instance v7, Landroid/graphics/SurfaceTexture;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1402(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    const/16 v7, 0xa

    const/16 v8, 0xa

    invoke-virtual {v6, v7, v8}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/graphics/SurfaceTexture;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Use dummy surface texture"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Error to start camera"

    invoke-static {v6, v7, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v6, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v3, v6}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6$1;

    invoke-direct {v7, p0, v3}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_2
    return-void

    :cond_5
    :try_start_2
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Set surface texture in auto mode"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v7, :cond_6

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_6

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v8, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6$1;

    invoke-direct {v8, p0, v3}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    throw v6

    :cond_7
    :try_start_3
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1700(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera$PreviewCallback;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Use preview callback"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1300(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    :goto_3
    iget-object v6, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    sget-object v6, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v3, v6}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onStart() - End, spent : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v6, :cond_4

    iget-object v6, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6$1;

    invoke-direct {v7, p0, v3}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_2

    :cond_9
    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onStart() - Set parameters in auto mode"

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method
