.class public final Lcom/oneplus/faceunlock/camera/Camera2Device;
.super Lcom/oneplus/faceunlock/camera/CameraDevice;
.source "Camera2Device.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_RESOURCE_ACQUIRING_TIMEOUT:J = 0xbb8L

.field private static final CAMERA_RESOURCE_LOCK:Ljava/lang/Object;

.field private static final DUMP_PREVIEW_LOG:Z = false

.field private static KEY_OEM_FD_RESULTS:Landroid/hardware/camera2/CaptureResult$Key; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureResult$Key",
            "<[B>;"
        }
    .end annotation
.end field

.field private static final PREVIEW_BUFFER_COUNTS:I = 0x3

.field private static final SKIP_FRAME_COUNTS:I

.field private static final TAG:Ljava/lang/String;

.field private static m_PreviousCameraResource:Ljava/util/concurrent/Semaphore;

.field private static m_SensorOrientation:Ljava/lang/Integer;


# instance fields
.field private m_Camera:Landroid/hardware/camera2/CameraDevice;

.field private m_CameraHandler:Landroid/os/Handler;

.field private m_CameraResource:Ljava/util/concurrent/Semaphore;

.field private m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

.field private m_CaptureSessionStateCallback:Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

.field private m_CurrentSkipFrames:I

.field private m_FilledPreviewData:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private m_FreePreviewData:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<[B>;"
        }
    .end annotation
.end field

.field private m_IsFaceKeyPointCallbackEnabled:Z

.field private m_PreviewBufferSize:I

.field private m_PreviewCallbackReader:Landroid/media/ImageReader;

.field private m_PreviewFrameQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewMetadataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private m_PreviewSurface:Landroid/view/Surface;

.field private m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

.field private m_StartCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

.field private m_StopCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private m_StopCaptureSessionResultCallbackHandler:Landroid/os/Handler;

.field private m_StopCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

.field private m_ThreadMonitorHandle:Lcom/oneplus/faceunlock/utils/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, CAMERA_RESOURCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V
    .locals 6

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/oneplus/faceunlock/camera/CameraDevice;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V

    new-instance v2, Ljava/util/concurrent/Semaphore;

    invoke-direct {v2, v3, v3}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    iput-object v2, p0, m_CameraResource:Ljava/util/concurrent/Semaphore;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, m_FilledPreviewData:Ljava/util/Queue;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, m_FreePreviewData:Ljava/util/Queue;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    :try_start_0
    const-class v2, Landroid/hardware/camera2/CaptureResult$Key;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "org.quic.camera2.oemfdresults.OEMFDResults"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, [B

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureResult$Key;

    sput-object v2, KEY_OEM_FD_RESULTS:Landroid/hardware/camera2/CaptureResult$Key;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Failed to create key for capture result"

    invoke-static {v2, v3, v1}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/concurrent/Semaphore;
    .locals 1

    iget-object v0, p0, m_CameraResource:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$1102(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    sput-object p0, m_SensorOrientation:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraDevice;
    .locals 1

    iget-object v0, p0, m_Camera:Landroid/hardware/camera2/CameraDevice;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .locals 0

    iput-object p1, p0, m_Camera:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CameraCaptureSession;
    .locals 1

    iget-object v0, p0, m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_CameraHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, openCamera(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oneplus/faceunlock/camera/Camera2Device;)Lcom/oneplus/faceunlock/utils/Handle;
    .locals 1

    iget-object v0, p0, m_ThreadMonitorHandle:Lcom/oneplus/faceunlock/utils/Handle;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/ResultCallback;
    .locals 0

    iput-object p1, p0, m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    return-object p1
.end method

.method static synthetic access$1802(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/Token;)Lcom/oneplus/faceunlock/utils/Token;
    .locals 0

    iput-object p1, p0, m_StartCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 0

    invoke-direct {p0, p1}, onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/faceunlock/camera/Camera2Device;)I
    .locals 1

    iget v0, p0, m_PreviewBufferSize:I

    return v0
.end method

.method static synthetic access$2002(Lcom/oneplus/faceunlock/camera/Camera2Device;I)I
    .locals 0

    iput p1, p0, m_PreviewBufferSize:I

    return p1
.end method

.method static synthetic access$2100(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, m_FreePreviewData:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, m_PreviewSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, m_PreviewSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/media/ImageReader;
    .locals 1

    iget-object v0, p0, m_PreviewCallbackReader:Landroid/media/ImageReader;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/media/ImageReader;)Landroid/media/ImageReader;
    .locals 0

    iput-object p1, p0, m_PreviewCallbackReader:Landroid/media/ImageReader;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/oneplus/faceunlock/camera/Camera2Device;)I
    .locals 1

    iget v0, p0, m_CurrentSkipFrames:I

    return v0
.end method

.method static synthetic access$2408(Lcom/oneplus/faceunlock/camera/Camera2Device;)I
    .locals 2

    iget v0, p0, m_CurrentSkipFrames:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, m_CurrentSkipFrames:I

    return v0
.end method

.method static synthetic access$2500(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, m_FilledPreviewData:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 1

    iget-object v0, p0, m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .locals 0

    iput-object p1, p0, m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic access$2800(Lcom/oneplus/faceunlock/camera/Camera2Device;)Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;
    .locals 1

    iget-object v0, p0, m_CaptureSessionStateCallback:Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;)Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;
    .locals 0

    iput-object p1, p0, m_CaptureSessionStateCallback:Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/camera/Camera2Device;)Z
    .locals 1

    iget-boolean v0, p0, m_IsFaceKeyPointCallbackEnabled:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/ResultCallback;
    .locals 0

    iput-object p1, p0, m_StopCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    return-object p1
.end method

.method static synthetic access$302(Lcom/oneplus/faceunlock/camera/Camera2Device;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsFaceKeyPointCallbackEnabled:Z

    return p1
.end method

.method static synthetic access$3102(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    iput-object p1, p0, m_StopCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/Token;)Lcom/oneplus/faceunlock/utils/Token;
    .locals 0

    iput-object p1, p0, m_StopCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 1

    invoke-direct {p0, p1}, updateFaceKeyPointsResult(Landroid/hardware/camera2/TotalCaptureResult;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/camera/Camera2Device;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/faceunlock/camera/Camera2Device;)V
    .locals 0

    invoke-direct {p0}, pairingPreviewFrameWithMetadata()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()Ljava/lang/Object;
    .locals 1

    sget-object v0, CAMERA_RESOURCE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900()Ljava/util/concurrent/Semaphore;
    .locals 1

    sget-object v0, m_PreviousCameraResource:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method static synthetic access$902(Ljava/util/concurrent/Semaphore;)Ljava/util/concurrent/Semaphore;
    .locals 0

    sput-object p0, m_PreviousCameraResource:Ljava/util/concurrent/Semaphore;

    return-object p0
.end method

.method public static findSensorOrientation()I
    .locals 9

    sget-object v6, m_SensorOrientation:Ljava/lang/Integer;

    if-eqz v6, :cond_0

    sget-object v6, m_SensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_0
    return v6

    :cond_0
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v6

    const-string v7, "camera"

    invoke-virtual {v6, v7}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/camera2/CameraManager;

    :try_start_0
    invoke-virtual {v5}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "findSensorOrientation() - Camera id list : "

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    array-length v7, v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_3

    aget-object v0, v1, v6

    invoke-virtual {v5, v0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v2

    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v8}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "findSensorOrientation() - Front camera found : "

    invoke-static {v6, v7, v0}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v2, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    sput-object v6, m_SensorOrientation:Ljava/lang/Integer;

    sget-object v6, m_SensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    :catch_0
    move-exception v3

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "findSensorOrientation() - Fail to access camera"

    invoke-static {v6, v7, v3}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v6, -0x1

    goto :goto_0
.end method

.method private onCaptureSessionClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 5
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v4, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onCaptureSessionClosed() - Capture session is closed"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, m_PreviewCallbackReader:Landroid/media/ImageReader;

    if-eqz v2, :cond_1

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onCaptureSessionClosed() - Close preview callback reader"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, m_PreviewCallbackReader:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->close()V

    :cond_1
    iget-object v2, p0, m_CaptureSessionStateCallback:Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    iget-object v3, v2, Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;->syncObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, m_CaptureSessionStateCallback:Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;

    iget-object v2, v2, Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;->syncObj:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, m_StopCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    iget-object v2, p0, m_StopCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v2, :cond_2

    iget-object v0, p0, m_StopCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, m_StopCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v2, p0, m_StopCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/faceunlock/camera/Camera2Device$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$1;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object v2, p0, m_PreviewSurface:Landroid/view/Surface;

    if-eqz v2, :cond_3

    iget-object v2, p0, m_PreviewSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    iput-object v4, p0, m_PreviewSurface:Landroid/view/Surface;

    :cond_3
    iget-object v2, p0, m_FilledPreviewData:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    iget-object v2, p0, m_FreePreviewData:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    iget-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    iget-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->clear()V

    iput-object v4, p0, m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object v4, p0, m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iput-object v4, p0, m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    iput-object v4, p0, m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_StartCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    iput-object v4, p0, m_StopCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    iput-object v4, p0, m_StopCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_StopCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    const/4 v2, 0x0

    iput v2, p0, m_CurrentSkipFrames:I

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private onCaptureSessionConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 4
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onCaptureSessionConfigureFailed() - Fail to configure capture session"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    if-eqz v2, :cond_0

    iget-object v2, p0, m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v2, :cond_0

    iget-object v0, p0, m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, m_StartCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v2, p0, m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/faceunlock/camera/Camera2Device$4;

    invoke-direct {v3, p0, v0, v1}, Lcom/oneplus/faceunlock/camera/Camera2Device$4;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private onCaptureSessionConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 7
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    :try_start_0
    iget-object v3, p0, m_CaptureSession:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v4, p0, m_PreviewRequestBuilder:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v4}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v4

    new-instance v5, Lcom/oneplus/faceunlock/camera/Camera2Device$2;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$2;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;)V

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onCaptureSessionConfigured() - Repeating preview request started"

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    if-eqz v3, :cond_0

    iget-object v3, p0, m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v3, :cond_0

    iget-object v1, p0, m_StartCaptureSessionResultCallback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v2, p0, m_StartCaptureSessionToken:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v3, p0, m_StartCaptureSessionResultCallbackHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/faceunlock/camera/Camera2Device$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/oneplus/faceunlock/camera/Camera2Device$3;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v0

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onCaptureSessionConfigured() - Cannot set repeating preview request"

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private openCamera(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-virtual {p0}, isStop()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, isRelease()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "openCamera() - Start"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, m_CameraHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, p3, v1}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "openCamera() - End"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->getReason()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    throw v0
.end method

.method private pairingPreviewFrameWithMetadata()V
    .locals 6

    iget-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;

    iget-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;

    :cond_2
    iget-wide v2, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;->timestamp:J

    iget-wide v4, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;->timestamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    :goto_1
    if-eqz v1, :cond_3

    iget-wide v2, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;->timestamp:J

    iget-wide v4, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;->timestamp:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    iget-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_0

    :goto_2
    if-eqz v0, :cond_4

    iget-wide v2, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;->timestamp:J

    iget-wide v4, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;->timestamp:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;

    goto :goto_2

    :cond_4
    if-nez v0, :cond_2

    goto :goto_0

    :cond_5
    iget-object v2, p0, m_PreviewFrameQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v2, p0, m_PreviewMetadataQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    iget-object v2, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;->data:[B

    invoke-virtual {p0, v2, v0}, onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V

    goto :goto_0
.end method

.method private updateFaceKeyPointsResult(Landroid/hardware/camera2/TotalCaptureResult;)Z
    .locals 13

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    sget-object v11, KEY_OEM_FD_RESULTS:Landroid/hardware/camera2/CaptureResult$Key;

    if-nez v11, :cond_2

    :cond_0
    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "updateFaceKeyPointsResult() - Result is empty or KEY is empty"

    invoke-static {v11, v12}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v10

    :cond_2
    const/4 v5, 0x0

    :try_start_0
    sget-object v11, KEY_OEM_FD_RESULTS:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v11}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_3

    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "updateFaceKeyPointsResult() - Face detection result is empty"

    invoke-static {v11, v12}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "updateFaceKeyPointsResult() - Error when get result"

    invoke-static {v11, v12, v0}, Lcom/oneplus/faceunlock/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    invoke-static {v5}, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->parseFaceDetectionDataForCamera2([B)Lcom/oneplus/faceunlock/camera/FaceDetectionData;

    move-result-object v1

    if-nez v1, :cond_4

    sget-object v11, TAG:Ljava/lang/String;

    const-string v12, "updateFaceKeyPointsResult() - Parsed face detection data is empty"

    invoke-static {v11, v12}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    iget v11, v1, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->numOfFaces:I

    if-lez v11, :cond_7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    :goto_1
    iget v11, v1, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->numOfFaces:I

    if-ge v6, v11, :cond_6

    iget-object v11, v1, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    aget-object v11, v11, v6

    iget-object v11, v11, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->cameraRect:Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    iget v4, v11, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;->width:I

    iget-object v11, v1, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    aget-object v11, v11, v6

    iget-object v11, v11, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->cameraRect:Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    iget v2, v11, Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;->height:I

    if-le v4, v9, :cond_5

    if-le v2, v7, :cond_5

    move v8, v6

    move v9, v4

    move v7, v2

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_6
    iget-object v11, v1, Lcom/oneplus/faceunlock/camera/FaceDetectionData;->faces:[Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;

    aget-object v11, v11, v8

    iget-object v3, v11, Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;->faceKeyPoints:[F

    :cond_7
    invoke-virtual {p0, v3}, updateFaceKeyPoints([F)V

    if-eqz v3, :cond_1

    const/4 v10, 0x1

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
    iget-object v1, p0, m_FilledPreviewData:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, m_FilledPreviewData:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

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

    array-length v0, p1

    iget v1, p0, m_PreviewBufferSize:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, m_FreePreviewData:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSensorOrientation()I
    .locals 1

    sget-object v0, m_SensorOrientation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method final synthetic lambda$onInitialize$0$Camera2Device()V
    .locals 1

    invoke-static {}, Lcom/oneplus/faceunlock/utils/ThreadMonitor;->prepare()V

    invoke-static {}, Lcom/oneplus/faceunlock/utils/ThreadMonitor;->startMonitorCurrentThread()Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v0

    iput-object v0, p0, m_ThreadMonitorHandle:Lcom/oneplus/faceunlock/utils/Handle;

    return-void
.end method

.method protected onInitialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 3
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

    iget-object v1, p0, m_CameraHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Camera Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, m_CameraHandler:Landroid/os/Handler;

    iget-object v1, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/camera/Camera2Device$$Lambda$0;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/camera/Camera2Device$5;

    invoke-direct {v2, p0, p2, p3, p1}, Lcom/oneplus/faceunlock/camera/Camera2Device$5;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    return v1
.end method

.method protected onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V

    return-void
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

    new-instance v0, Lcom/oneplus/faceunlock/camera/Camera2Device$6;

    move-object v1, p0

    move v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/faceunlock/camera/Camera2Device$6;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;ZLjava/lang/Object;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    monitor-exit v3

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
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

    new-instance v0, Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/faceunlock/camera/Camera2Device$7;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method

.method protected onStop(Lcom/oneplus/faceunlock/utils/Token;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 2
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

    iget-object v0, p0, m_CameraHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/Camera2Device$8;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/oneplus/faceunlock/camera/Camera2Device$8;-><init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    return v0
.end method
