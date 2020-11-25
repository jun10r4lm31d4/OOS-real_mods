.class public final Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;
.super Lcom/oneplus/faceunlock/camera/CameraDevice;
.source "LegacyCameraDevice.java"


# static fields
.field private static final CAMERA_RESOURCE_ACQUIRING_TIMEOUT:J = 0xbb8L

.field private static final CAMERA_RESOURCE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static m_PreviousCameraResource:Ljava/util/concurrent/Semaphore;

.field private static m_SensorOrientation:Ljava/lang/Integer;


# instance fields
.field private final HAL_AUTO_MODE:Z

.field private final STOP_PREVIEW_LOCK:Ljava/lang/Object;

.field private m_Camera:Landroid/hardware/Camera;

.field private m_CameraHandler:Landroid/os/Handler;

.field private m_CameraParameters:Landroid/hardware/Camera$Parameters;

.field private m_CameraResource:Ljava/util/concurrent/Semaphore;

.field private m_CameraStateCallback:Ljava/lang/Object;

.field private m_CameraStateCallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private m_DummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private m_FaceKeyPoints:[F

.field private m_FilledPreviewDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field private m_PreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private m_PreviewCallbackBufferSize:I

.field private m_PreviewSize:Landroid/util/Size;

.field private m_SensorFacing:Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

.field private m_SupportedPreviewSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private m_ThreadMonitoHandle:Lcom/oneplus/faceunlock/utils/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, CAMERA_RESOURCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/camera/CameraDevice;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, STOP_PREVIEW_LOCK:Ljava/lang/Object;

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useHALAutoMode()Z

    move-result v0

    iput-boolean v0, p0, HAL_AUTO_MODE:Z

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v0, p0, m_CameraResource:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FilledPreviewDatas:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_SupportedPreviewSizes:Ljava/util/List;

    new-instance v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$1;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$1;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)V

    iput-object v0, p0, m_PreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;
    .locals 1

    iget-object v0, p0, m_Camera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0

    iput-object p1, p0, m_Camera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_CameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Z
    .locals 1

    invoke-direct {p0}, setupCameraStateCallback()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/util/Size;
    .locals 1

    iget-object v0, p0, m_PreviewSize:Landroid/util/Size;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    iput-object p1, p0, m_PreviewSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Z
    .locals 1

    iget-boolean v0, p0, HAL_AUTO_MODE:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/graphics/SurfaceTexture;
    .locals 1

    iget-object v0, p0, m_DummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;
    .locals 0

    iput-object p1, p0, m_DummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;II)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, calculateDisplayOrientation(Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;II)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)I
    .locals 1

    iget v0, p0, m_PreviewCallbackBufferSize:I

    return v0
.end method

.method static synthetic access$1602(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;I)I
    .locals 0

    iput p1, p0, m_PreviewCallbackBufferSize:I

    return p1
.end method

.method static synthetic access$1700(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1

    iget-object v0, p0, m_PreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, STOP_PREVIEW_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;[B)V
    .locals 0

    invoke-direct {p0, p1}, onCameraStateChanged([B)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/Object;
    .locals 1

    sget-object v0, CAMERA_RESOURCE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, m_PreviousCameraResource:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$302(Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0

    sput-object p0, m_PreviousCameraResource:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, m_CameraResource:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/utils/Handle;
    .locals 1

    iget-object v0, p0, m_ThreadMonitoHandle:Lcom/oneplus/faceunlock/utils/Handle;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;
    .locals 0

    iput-object p1, p0, m_ThreadMonitoHandle:Lcom/oneplus/faceunlock/utils/Handle;

    return-object p1
.end method

.method static synthetic access$600()Ljava/lang/Integer;
    .locals 1

    sget-object v0, m_SensorOrientation:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic access$602(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, m_SensorOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;
    .locals 1

    iget-object v0, p0, m_SensorFacing:Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;)Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;
    .locals 0

    iput-object p1, p0, m_SensorFacing:Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera$Parameters;
    .locals 1

    iget-object v0, p0, m_CameraParameters:Landroid/hardware/Camera$Parameters;

    return-object v0
.end method

.method static synthetic access$802(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 0

    iput-object p1, p0, m_CameraParameters:Landroid/hardware/Camera$Parameters;

    return-object p1
.end method

.method static synthetic access$900(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, m_SupportedPreviewSizes:Ljava/util/List;

    return-object v0
.end method

.method private calculateDisplayOrientation(Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;II)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$10;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$LensFacing:[I

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    sub-int v1, p2, p3

    add-int/lit16 v1, v1, 0x168

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0

    :pswitch_1
    add-int v1, p2, p3

    rem-int/lit16 v0, v1, 0x168

    rsub-int v1, v0, 0x168

    rem-int/lit16 v0, v1, 0x168

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static findSensorOrientation()I
    .locals 5

    sget-object v3, m_SensorOrientation:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    sget-object v3, m_SensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_0
    return v3

    :cond_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    invoke-static {v2, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    :cond_1
    if-nez v0, :cond_3

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "findSensorOrientation() - Cannot find front camera"

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sput-object v3, m_SensorOrientation:Ljava/lang/Integer;

    sget-object v3, m_SensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0
.end method

.method private onCameraStateChanged([B)V
    .locals 11

    invoke-virtual {p0}, isRelease()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_2

    array-length v8, p1

    const/4 v9, 0x4

    if-ge v8, v9, :cond_4

    :cond_2
    sget-object v9, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onCameraStateChanged() - Incorrect data size : "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz p1, :cond_3

    array-length v8, p1

    :goto_1
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/4 v8, 0x0

    goto :goto_1

    :cond_4
    invoke-static {p1}, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->parseFaceDetectionData([B)Lcom/oneplus/faceunlock/camera/FaceDetectionData;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v8, TAG:Ljava/lang/String;

    const-string v9, "onCameraStateChanged() - Update face detection data"

    invoke-static {v8, v9}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    iget v8, v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->numOfFaces:I

    if-lez v8, :cond_7

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_2
    iget v8, v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->numOfFaces:I

    if-ge v4, v8, :cond_6

    iget-object v8, v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->cameraRect:Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    iget v3, v8, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;->width:I

    iget-object v8, v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    aget-object v8, v8, v4

    iget-object v8, v8, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->cameraRect:Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    iget v1, v8, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;->height:I

    if-le v3, v7, :cond_5

    if-le v1, v5, :cond_5

    move v6, v4

    move v7, v3

    move v5, v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    iget-object v8, v0, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    aget-object v8, v8, v6

    iget-object v2, v8, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->faceKeyPoints:[F

    :cond_7
    iget-object v8, p0, m_FaceKeyPoints:[F

    if-eq v8, v2, :cond_0

    iput-object v2, p0, m_FaceKeyPoints:[F

    invoke-virtual {p0, v2}, updateFaceKeyPoints([F)V

    goto :goto_0
.end method

.method private setupCameraStateCallback()Z
    .locals 10

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v6, p0, m_CameraStateCallback:Ljava/lang/Object;

    if-nez v6, :cond_1

    :try_start_0
    iget-object v6, p0, m_CameraStateCallbackClass:Ljava/lang/Class;

    if-nez v6, :cond_0

    const-string v6, "android.hardware.Camera$CameraStateCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    iput-object v6, p0, m_CameraStateCallbackClass:Ljava/lang/Class;

    :cond_0
    iget-object v6, p0, m_CameraStateCallbackClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    iget-object v9, p0, m_CameraStateCallbackClass:Ljava/lang/Class;

    aput-object v9, v7, v8

    new-instance v8, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$9;

    invoke-direct {v8, p0}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$9;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)V

    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, m_CameraStateCallback:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :try_start_1
    const-string v6, "android.hardware.Camera$CameraStateCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iget-object v6, p0, m_Camera:Landroid/hardware/Camera;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "setCameraStateCallback"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    aput-object v0, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget-object v6, p0, m_Camera:Landroid/hardware/Camera;

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, m_CameraStateCallback:Ljava/lang/Object;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move v4, v5

    :goto_0
    return v4

    :catch_0
    move-exception v2

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "setupCameraStateCallback() - Camera state call-back is unsupported, fail to create call-back instance"

    invoke-static {v5, v6}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "setupCameraStateCallback() - Camera state call-back is unsupported, fail to set call-back"

    invoke-static {v5, v6}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public dequeueCameraFrameBuffer()[B
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, isRelease()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, m_FilledPreviewDatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, m_FilledPreviewDatas:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_0
.end method

.method public enqueueCameraFrameBuffer([B)V
    .locals 2

    invoke-virtual {p0}, isRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget v0, p0, m_PreviewCallbackBufferSize:I

    if-lez v0, :cond_0

    array-length v0, p1

    iget v1, p0, m_PreviewCallbackBufferSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$2;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$2;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;[B)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getSensorOrientation()I
    .locals 1

    sget-object v0, m_SensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method protected onInitialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;",
            "Landroid/os/Handler;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    iget-object v2, p0, m_CameraHandler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "Camera Thread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, m_CameraHandler:Landroid/os/Handler;

    :cond_0
    iget-object v2, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1
.end method

.method protected onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V
    .locals 1

    invoke-virtual {p0}, isRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_FilledPreviewDatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V

    goto :goto_0
.end method

.method protected onRelease(ZLandroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/os/Handler;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    monitor-enter v3

    :try_start_0
    iget-object v6, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;ZLjava/lang/Object;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    :try_start_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onRelease() - Wait, [Start]"

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x1388

    invoke-virtual {v3, v0, v1}, Ljava/lang/Object;->wait(J)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onRelease() - Wait, [End]"

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    :try_start_2
    new-instance v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$5;

    invoke-direct {v0, p0, p3}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$5;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v3

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;",
            "Landroid/os/Handler;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    iget-object v6, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$6;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onStop(Lcom/oneplus/faceunlock/utils/Token;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "Landroid/os/Handler;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    new-instance v1, Lcom/oneplus/faceunlock/utils/SimpleRef;

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-direct {v1, v2}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$7;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$7;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :try_start_0
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop() - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Wait for preview stopped [Start]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, STOP_PREVIEW_LOCK:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, STOP_PREVIEW_LOCK:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v4, v5}, Ljava/lang/Object;->wait(J)V

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop() - ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] Wait for preview stopped [End]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v2, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$8;

    invoke-direct {v2, p0, p3, p1, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$8;-><init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {p2, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v2, 0x1

    return v2

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStop() - Error to wait"

    invoke-static {v2, v3, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
