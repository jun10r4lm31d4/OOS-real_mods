.class Lcom/oneplus/faceunlock/camera/Camera2Device$7$2;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device$7;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImageAvailable(Landroid/media/ImageReader;)V
    .locals 12

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2100(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2400(Lcom/oneplus/faceunlock/camera/Camera2Device;)I

    move-result v6

    if-gez v6, :cond_2

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onImageAvailable() - Skip frame : "

    iget-object v8, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2400(Lcom/oneplus/faceunlock/camera/Camera2Device;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2408(Lcom/oneplus/faceunlock/camera/Camera2Device;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_2
    :try_start_1
    invoke-virtual {v3}, Landroid/media/Image;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/media/Image;->getHeight()I

    move-result v2

    mul-int v6, v5, v2

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v4, v6, 0x2

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2000(Lcom/oneplus/faceunlock/camera/Camera2Device;)I

    move-result v6

    if-eq v4, v6, :cond_3

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImageAvailable() - Buffer size is different, image : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", buffer : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v8}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2000(Lcom/oneplus/faceunlock/camera/Camera2Device;)I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto :goto_0

    :cond_3
    :try_start_2
    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2100(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2500(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-static {v3, v0}, Lcom/oneplus/faceunlock/utils/YuvUtils;->multiPlaneYuvToNV21(Landroid/media/Image;[B)V

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2600(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->size()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2600(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    :cond_4
    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$2600(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;

    move-result-object v6

    new-instance v7, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;

    iget-object v8, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v10

    invoke-direct {v7, v8, v0, v10, v11}, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;[BJ)V

    invoke-interface {v6, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v6}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$600(Lcom/oneplus/faceunlock/camera/Camera2Device;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    :cond_5
    :try_start_3
    iget-object v6, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/oneplus/faceunlock/camera/Camera2Device;->onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v6

    const-string v7, "onImageAvailable() - Error to process image planes"

    invoke-static {v6, v7, v1}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v6

    invoke-virtual {v3}, Landroid/media/Image;->close()V

    throw v6
.end method
