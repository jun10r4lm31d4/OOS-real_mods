.class Lcom/oneplus/faceunlock/FaceUnlockService$7;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->onCameraFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/faceunlock/utils/ResultCallback",
        "<",
        "Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

.field final synthetic val$image:[B


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;[B)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    iput-object p2, p0, val$image:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;)V
    .locals 11

    const/4 v1, 0x1

    const/4 v10, 0x2

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1500(Lcom/oneplus/faceunlock/FaceUnlockService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1800(Lcom/oneplus/faceunlock/FaceUnlockService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    iget-object v2, p0, val$image:[B

    invoke-virtual {v1, v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCameraFrameReceived() - Token : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v5}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1600(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/utils/Token;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", compared result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->resultCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", score : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->score:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1708(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1800(Lcom/oneplus/faceunlock/FaceUnlockService;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1900(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/text/SimpleDateFormat;

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "yyyy-MM-dd_HH-mm-ss-SSS"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1902(Lcom/oneplus/faceunlock/FaceUnlockService;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;

    :cond_2
    const-string v3, "frame_%s_%s_%03d_%d_%d_%d"

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v8}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1900(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/text/SimpleDateFormat;

    move-result-object v8

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x1

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v8}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1600(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/utils/Token;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x2

    iget-object v8, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v8}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1700(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x3

    iget v8, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->resultCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x4

    iget v8, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->score:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x5

    iget-boolean v8, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->success:Z

    if-eqz v8, :cond_5

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2100(Lcom/oneplus/faceunlock/FaceUnlockService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/oneplus/faceunlock/FaceUnlockService$7$1;

    invoke-direct {v2, p0, v7}, Lcom/oneplus/faceunlock/FaceUnlockService$7$1;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService$7;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    iget-object v2, p0, val$image:[B

    invoke-virtual {v1, v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    :cond_3
    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1300(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    move-result v2

    iget v3, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->resultCode:I

    iget-wide v4, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->spentTimeMillis:J

    long-to-int v4, v4

    iget v5, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->score:I

    invoke-interface/range {v0 .. v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onCompared(IIIII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_3
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCameraFrameReceived() - Error to notify callback"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1800(Lcom/oneplus/faceunlock/FaceUnlockService;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v2

    iget-object v3, p0, val$image:[B

    invoke-virtual {v2, v3}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    :cond_4
    throw v1

    :cond_5
    move v1, v2

    goto/16 :goto_1

    :cond_6
    :try_start_4
    iget-boolean v1, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->success:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v2, 0x0

    :try_start_5
    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1300(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v0, v2, v3, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v6

    :try_start_6
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCameraFrameReceived() - Error to notify callback"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2200(Lcom/oneplus/faceunlock/FaceUnlockService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v1, v2, v4

    if-lez v1, :cond_9

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCameraFrameReceived() - Timeout or face not found : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->resultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", end recognize"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget v2, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->resultCode:I

    if-ne v2, v10, :cond_8

    const/4 v2, 0x0

    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1300(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v0, v2, v3, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    :catch_2
    move-exception v6

    :try_start_8
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "onCameraFrameReceived() - Error to notify callback"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :try_start_9
    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v3}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1300(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    move-result v3

    const/4 v4, -0x1

    invoke-interface {v0, v2, v3, v4}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_4

    :cond_9
    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1800(Lcom/oneplus/faceunlock/FaceUnlockService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    iget-object v2, p0, val$image:[B

    invoke-virtual {v1, v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    goto/16 :goto_0
.end method

.method public bridge synthetic onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    invoke-virtual {p0, p1, p2}, onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;)V

    return-void
.end method
