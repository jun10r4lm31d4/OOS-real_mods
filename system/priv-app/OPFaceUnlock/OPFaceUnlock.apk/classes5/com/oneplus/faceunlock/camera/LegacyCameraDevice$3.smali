.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->onInitialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iput-object p2, p0, val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iput-object p3, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "onInitialize() - Acquire camera resource"

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$200()Ljava/lang/Object;

    move-result-object v10

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$300()Ljava/util/concurrent/Semaphore;

    move-result-object v7

    const-wide/16 v12, 0xbb8

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v7, v12, v13, v11}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$302(Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "onInitialize() - Camera resource acquired"

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/faceunlock/utils/ThreadMonitor;->prepare()V

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {}, Lcom/oneplus/faceunlock/utils/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$502(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    new-instance v4, Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {v4}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>()V

    :try_start_3
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "onInitialize() - Start"

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v10, 0x1

    if-ne v7, v10, :cond_3

    :cond_1
    if-nez v0, :cond_4

    new-instance v7, Ljava/lang/RuntimeException;

    const-string v10, "Cannot find front camera"

    invoke-direct {v7, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception v2

    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "onInitialize() - Error to initialize camera"

    invoke-static {v7, v10, v2}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v7, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v4, v7}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_2

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v10, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;

    invoke-direct {v10, p0, v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v7

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v2

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "onInitialize() - Error to acquire camera resource"

    invoke-static {v7, v10, v2}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :try_start_7
    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$602(Ljava/lang/Integer;)Ljava/lang/Integer;

    iget v7, v0, Landroid/hardware/Camera$CameraInfo;->facing:I
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    packed-switch v7, :pswitch_data_0

    :goto_2
    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x3

    if-ge v5, v7, :cond_5

    :try_start_8
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iget v10, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    invoke-static {v10}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$002(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_5
    :try_start_9
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v7

    if-nez v7, :cond_7

    sget-object v7, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v4, v7}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_2

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v10, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;

    invoke-direct {v10, p0, v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_0
    :try_start_a
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    sget-object v10, Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;->BACK:Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$702(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;)Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v7

    iget-object v10, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v10, :cond_6

    iget-object v10, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v10, :cond_6

    iget-object v10, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v11, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;

    invoke-direct {v11, p0, v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    throw v7

    :pswitch_1
    :try_start_b
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    sget-object v10, Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;->FRONT:Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$702(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;)Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v10, "onInitialize() - Error to open camera"

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_3

    :cond_7
    iget-object v7, p0, val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    if-eqz v7, :cond_8

    iget-object v7, p0, val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v7, v7, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    if-eqz v7, :cond_8

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v7

    new-instance v10, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$1;

    invoke-direct {v10, p0}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;)V

    invoke-virtual {v7, v10}, Landroid/hardware/Camera;->setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V

    :cond_8
    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iget-object v10, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$802(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;

    iget-object v7, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v7}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera$Parameters;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget-object v10, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v10}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$900(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/List;

    move-result-object v10

    new-instance v11, Landroid/util/Size;

    iget v12, v6, Landroid/hardware/Camera$Size;->width:I

    iget v13, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v11, v12, v13}, Landroid/util/Size;-><init>(II)V

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_9
    sget-object v7, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v4, v7}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onInitialize() - End, spent : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ms"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    if-eqz v7, :cond_2

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_2

    iget-object v7, p0, val$callbackHandler:Landroid/os/Handler;

    new-instance v10, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;

    invoke-direct {v10, p0, v4}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$2;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
