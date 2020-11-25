.class Lcom/oneplus/faceunlock/FaceUnlockService$7$1;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService$7;->onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

.field final synthetic val$frameName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService$7;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iput-object p2, p0, val$frameName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/io/File;

    const-string v3, "/sdcard/FaceUnlockDebug"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, val$frameName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    :try_start_1
    iget-object v3, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v3, v3, Lcom/oneplus/faceunlock/FaceUnlockService$7;->val$image:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v2, :cond_1

    if-eqz v5, :cond_3

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    iget-object v3, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v3, v3, Lcom/oneplus/faceunlock/FaceUnlockService$7;->this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v3, v3, Lcom/oneplus/faceunlock/FaceUnlockService$7;->this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v4, v4, Lcom/oneplus/faceunlock/FaceUnlockService$7;->val$image:[B

    invoke-virtual {v3, v4}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCameraFrameReceived() - Error to save frame"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v3, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v3, v3, Lcom/oneplus/faceunlock/FaceUnlockService$7;->this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v3, v3, Lcom/oneplus/faceunlock/FaceUnlockService$7;->this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v3

    iget-object v4, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v4, v4, Lcom/oneplus/faceunlock/FaceUnlockService$7;->val$image:[B

    invoke-virtual {v3, v4}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    goto :goto_1

    :cond_3
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    iget-object v4, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v4, v4, Lcom/oneplus/faceunlock/FaceUnlockService$7;->this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v4}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v4, v4, Lcom/oneplus/faceunlock/FaceUnlockService$7;->this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v4}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v4

    iget-object v5, p0, this$1:Lcom/oneplus/faceunlock/FaceUnlockService$7;

    iget-object v5, v5, Lcom/oneplus/faceunlock/FaceUnlockService$7;->val$image:[B

    invoke-virtual {v4, v5}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    :cond_4
    throw v3

    :catch_2
    move-exception v3

    :try_start_6
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v4

    move-object v5, v3

    :goto_2
    if-eqz v2, :cond_5

    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_3
    :try_start_8
    throw v4

    :catch_3
    move-exception v3

    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v3

    move-object v4, v3

    goto :goto_2
.end method
