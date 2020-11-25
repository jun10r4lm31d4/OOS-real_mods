.class Lcom/oneplus/faceunlock/camera/Camera2Device$5;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device;->onInitialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$callbackHandler:Landroid/os/Handler;

.field final synthetic val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    iput-object p2, p0, val$callbackHandler:Landroid/os/Handler;

    iput-object p3, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p4, p0, val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Acquire camera resource"

    invoke-static/range {v16 .. v17}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$800()Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v16

    if-eqz v16, :cond_0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$900()Ljava/util/concurrent/Semaphore;

    move-result-object v16

    const-wide/16 v18, 0xbb8

    sget-object v20, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$902(Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;

    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Camera resource acquired"

    invoke-static/range {v16 .. v17}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Lcom/oneplus/faceunlock/utils/SimpleRef;

    sget-object v16, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v16

    invoke-direct {v12, v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v16

    const-string v17, "camera"

    invoke-virtual/range {v16 .. v17}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/hardware/camera2/CameraManager;

    :try_start_3
    invoke-virtual {v9}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Camera id list : "

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    array-length v0, v5

    move/from16 v17, v0

    const/16 v16, 0x0

    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    aget-object v4, v5, v16

    invoke-virtual {v9, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v6

    sget-object v18, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v18

    if-eqz v18, :cond_3

    :cond_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    :catchall_0
    move-exception v16

    :try_start_4
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v16
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v7

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Error to acquire camera resource"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    :try_start_6
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Front camera found : "

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v16, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/camera2/params/StreamConfigurationMap;

    if-nez v10, :cond_4

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Stream configuration map is empty"

    invoke-static/range {v16 .. v17}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    const/16 v16, 0x23

    :try_start_7
    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v15

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Supported YUV output sizes : "

    invoke-static {v15}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v16, 0x22

    move/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v14

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Supported private output sizes : "

    invoke-static {v14}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v16

    const-string v17, "android.permission.CAMERA"

    invoke-virtual/range {v16 .. v17}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->checkSelfPermission(Ljava/lang/String;)I

    move-result v16

    if-eqz v16, :cond_5

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Camera permission is not granted"

    invoke-static/range {v16 .. v17}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :cond_5
    :try_start_8
    sget-object v16, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1102(Ljava/lang/Integer;)Ljava/lang/Integer;

    new-instance v11, Lcom/oneplus/faceunlock/utils/SimpleRef;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    new-instance v13, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v11, v9, v4}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;Lcom/oneplus/faceunlock/utils/SimpleRef;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v0, v9, v4, v13}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1500(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    sget-object v16, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_6
    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :catch_1
    move-exception v7

    :try_start_9
    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$700()Ljava/lang/String;

    move-result-object v16

    const-string v17, "onInitialize() - Fail to initialize"

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v7}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v16

    sget-object v17, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/Semaphore;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v16, v0

    new-instance v17, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;)V

    invoke-virtual/range {v16 .. v17}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    :catchall_1
    move-exception v16

    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v17

    sget-object v18, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/Semaphore;->release()V

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, val$callbackHandler:Landroid/os/Handler;

    move-object/from16 v17, v0

    new-instance v18, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5;)V

    invoke-virtual/range {v17 .. v18}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    throw v16
.end method
