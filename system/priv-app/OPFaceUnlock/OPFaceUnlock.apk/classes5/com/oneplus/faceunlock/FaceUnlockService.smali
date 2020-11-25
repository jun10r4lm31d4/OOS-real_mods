.class public Lcom/oneplus/faceunlock/FaceUnlockService;
.super Landroid/app/Service;
.source "FaceUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/FaceUnlockService$State;
    }
.end annotation


# static fields
.field private static final CAMERA_FRAME_TIMEOUT:I = 0x1388

.field private static final COMPARE_TIMEOUT:I = 0x1388

.field private static final DEBUG_FRAME_FILE_TEMPLATE:Ljava/lang/String; = "frame_%s_%s_%03d_%d_%d_%d"

.field private static final DEBUG_ROOT_PATH:Ljava/lang/String; = "/sdcard/FaceUnlockDebug"

.field public static final EXTRA_FACE_ENGINE_TYPE:Ljava/lang/String; = "FaceEngineType"

.field public static final FACE_ENGINE_FACEPP:I = 0x0

.field public static final FACE_ENGINE_ST:I = 0x1

.field private static final MSG_ON_CAMERA_FRAME_TIMEOUT:I = 0x2711

.field public static final NOTIFY_INVALIDATE_FACE_DATA:I = 0x2711

.field private static final PREPARE_LOCK:Ljava/lang/Object;

.field private static final REGISTER_CALLBACK_LOCK:Ljava/lang/Object;

.field private static final RELEASE_LOCK:Ljava/lang/Object;

.field private static final START_LOCK:Ljava/lang/Object;

.field private static final STOP_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static final UNREGISTER_CALLBACK_LOCK:Ljava/lang/Object;


# instance fields
.field private final m_Binder:Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;

.field private m_Callbacks:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;",
            ">;"
        }
    .end annotation
.end field

.field private m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

.field private m_CameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

.field private m_CameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

.field private m_CameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

.field private m_CameraFrameTimeMillis:J

.field private m_CompareFrameCount:I

.field private m_CompareStartTimeMillis:J

.field private m_CompareToken:Lcom/oneplus/faceunlock/utils/Token;

.field private m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field private m_FaceFeature:[B

.field private m_FaceSettingReceiver:Landroid/content/BroadcastReceiver;

.field private m_FaceToken:Ljava/lang/String;

.field private m_FileHandler:Landroid/os/Handler;

.field private m_Handler:Landroid/os/Handler;

.field private m_IsUnlockDumpEnabled:Z

.field private m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

.field private m_UserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, PREPARE_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, RELEASE_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, REGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, UNREGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, START_LOCK:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, STOP_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, m_Callbacks:Ljava/util/Map;

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$State;->NEW:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$1;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iput-object v0, p0, m_Binder:Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$0;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iput-object v0, p0, m_CameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockService$2;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$2;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iput-object v0, p0, m_CameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$3;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iput-object v0, p0, m_CameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    new-instance v0, Lcom/oneplus/faceunlock/FaceUnlockService$4;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$4;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iput-object v0, p0, m_FaceSettingReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    invoke-direct {p0}, prepare()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, registerCallback(ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/faceunlock/FaceUnlockService;Z)V
    .locals 0

    invoke-direct {p0, p1}, onFaceSettingBroadcastReceived(Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/faceunlock/FaceUnlockService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, m_Callbacks:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/faceunlock/FaceUnlockService;)I
    .locals 1

    iget v0, p0, m_UserId:I

    return v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/oneplus/faceunlock/FaceUnlockService;)Z
    .locals 1

    invoke-direct {p0}, isRecognize()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/utils/Token;
    .locals 1

    iget-object v0, p0, m_CompareToken:Lcom/oneplus/faceunlock/utils/Token;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/faceunlock/FaceUnlockService;)I
    .locals 1

    iget v0, p0, m_CompareFrameCount:I

    return v0
.end method

.method static synthetic access$1708(Lcom/oneplus/faceunlock/FaceUnlockService;)I
    .locals 2

    iget v0, p0, m_CompareFrameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, m_CompareFrameCount:I

    return v0
.end method

.method static synthetic access$1800(Lcom/oneplus/faceunlock/FaceUnlockService;)Z
    .locals 1

    iget-boolean v0, p0, m_IsUnlockDumpEnabled:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/oneplus/faceunlock/FaceUnlockService;Ljava/text/SimpleDateFormat;)Ljava/text/SimpleDateFormat;
    .locals 0

    iput-object p1, p0, m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    invoke-direct {p0}, release()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/faceunlock/FaceUnlockService;)Lcom/oneplus/faceunlock/camera/CameraDevice;
    .locals 1

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/faceunlock/FaceUnlockService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_FileHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/faceunlock/FaceUnlockService;)J
    .locals 2

    iget-wide v0, p0, m_CompareStartTimeMillis:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/oneplus/faceunlock/FaceUnlockService;J)J
    .locals 1

    iput-wide p1, p0, m_CompareStartTimeMillis:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/oneplus/faceunlock/FaceUnlockService;Z)V
    .locals 0

    invoke-direct {p0, p1}, onPrepared(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    invoke-direct {p0}, onReleased()V

    return-void
.end method

.method static synthetic access$2500(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    invoke-direct {p0}, resetCameraFrameTimeoutTimer()V

    return-void
.end method

.method static synthetic access$2600()Ljava/lang/Object;
    .locals 1

    sget-object v0, START_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/Object;
    .locals 1

    sget-object v0, STOP_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/FaceUnlockService;I)V
    .locals 0

    invoke-direct {p0, p1}, startFaceUnlock(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/FaceUnlockService;I)V
    .locals 0

    invoke-direct {p0, p1}, stopFaceUnlock(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, unregisterCallback(ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/faceunlock/FaceUnlockService;I)V
    .locals 0

    invoke-direct {p0, p1}, notify(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/faceunlock/FaceUnlockService;)Z
    .locals 1

    invoke-direct {p0}, isReleaseComplete()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/FaceUnlockService;I)V
    .locals 0

    invoke-direct {p0, p1}, onCameraErrorReceived(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/faceunlock/FaceUnlockService;Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, onCameraFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z

    move-result v0

    return v0
.end method

.method private checkSelfPermissions()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p0, v1}, checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "checkSelfPermissions() - Permissions are not granted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-boolean v1, p0, m_IsUnlockDumpEnabled:Z

    if-eqz v1, :cond_2

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p0, v1}, checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "checkSelfPermissions() - Read/write external permissions are not granted"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, onCameraFrameTimeout()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method private invalidateFaceData()V
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RECOGNIZING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "invalidateFaceData()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$1;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$1;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-direct {p0, v0, v1}, releaseFaceEngine(ZLcom/oneplus/faceunlock/utils/ResultCallback;)V

    goto :goto_0
.end method

.method private isMainThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReady()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockService$State;->READY:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isRecognize()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RECOGNIZING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isReleaseComplete()Z
    .locals 6

    const/4 v2, 0x1

    invoke-direct {p0}, isMainThread()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReleaseComplete() - Current state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RELEASED:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockService$State;->NEW:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {v1}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, m_Handler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$2;

    invoke-direct {v4, p0, v1, v0}, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$2;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;Lcom/oneplus/faceunlock/utils/SimpleRef;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "isReleaseComplete() - [Start]"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0xbb8

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isReleaseComplete() - Result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", [End]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private notify(I)V
    .locals 0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0}, invalidateFaceData()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraDisconnected()V
    .locals 2

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$3;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$3;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCameraErrorReceived(I)V
    .locals 3

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraErrorReceived() - Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockService$6;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$6;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCameraFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
    .locals 11

    const/4 v0, 0x0

    invoke-direct {p0}, isRecognize()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "onCameraFrameReceived() - Face engine is not ready"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-direct {p0}, resetCameraFrameTimeoutTimer()V

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->dequeueCameraFrameBuffer()[B

    move-result-object v2

    if-eqz p3, :cond_3

    iget-boolean v0, p3, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;->isFaceDetected:Z

    if-eqz v0, :cond_2

    sget-object v8, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->IS_DETECTED:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    :goto_1
    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v4

    const/16 v5, 0x5a

    iget-object v6, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v6}, Lcom/oneplus/faceunlock/camera/CameraDevice;->getSensorOrientation()I

    move-result v7

    iget-object v9, p0, m_FaceFeature:[B

    new-instance v10, Lcom/oneplus/faceunlock/FaceUnlockService$7;

    invoke-direct {v10, p0, v2}, Lcom/oneplus/faceunlock/FaceUnlockService$7;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;[B)V

    move v6, p2

    invoke-virtual/range {v0 .. v10}, Lcom/oneplus/faceunlock/engine/FaceEngine;->extractFeatureAndCompare(Lcom/oneplus/faceunlock/utils/Token;[BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    sget-object v8, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->IS_NOT_DETECTED:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    goto :goto_1

    :cond_3
    sget-object v8, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->UNKNOWN:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    goto :goto_1
.end method

.method private onCameraFrameTimeout()V
    .locals 6

    iget-object v2, p0, m_Callbacks:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, m_Callbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onCameraFrameTimeout()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, m_Callbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, m_UserId:I

    const/4 v5, -0x1

    invoke-interface {v0, v3, v4, v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onCameraFrameTimeout() - Error to notify callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private onFaceSettingBroadcastReceived(Z)V
    .locals 2

    if-eqz p1, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onFaceSettingBroadcastReceived() - Pre-initialize face engine"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->preInitialize(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onFaceSettingBroadcastReceived() - Deep release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->deepRelease()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, releaseFaceEngine(ZLcom/oneplus/faceunlock/utils/ResultCallback;)V

    goto :goto_0
.end method

.method private onPrepared(Z)V
    .locals 6

    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RECOGNIZING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v2, v3, :cond_1

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onPrepared() - Recognize start"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    sget-object v2, PREPARE_LOCK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_1
    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockService$State;->PREPARING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v2, v3, :cond_0

    if-eqz p1, :cond_3

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onPrepared()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockService$State;->READY:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    :cond_2
    sget-object v3, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    sget-object v2, PREPARE_LOCK:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    :cond_3
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onPrepared() - Fail, reset"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/oneplus/faceunlock/FaceUnlockService$State;->NEW:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iget-object v2, p0, m_Callbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_2
    invoke-interface {v0, v3, v4, v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "startFaceUnlock() - Error to notify error callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private onReleased()V
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RELEASED:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RELEASED:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    :cond_1
    sget-object v1, RELEASE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, RELEASE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private prepare()V
    .locals 10

    const/4 v7, 0x0

    invoke-direct {p0}, isMainThread()Z

    move-result v5

    if-eqz v5, :cond_4

    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockService$18;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockService$State:[I

    iget-object v6, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v6}, Lcom/oneplus/faceunlock/FaceUnlockService$State;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    invoke-static {}, Lcom/oneplus/faceunlock/Config;->isUnlockDumpEnabled()Z

    move-result v5

    iput-boolean v5, p0, m_IsUnlockDumpEnabled:Z

    invoke-direct {p0}, checkSelfPermissions()Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "prepare() - Request permission"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, m_Callbacks:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    :try_start_0
    invoke-interface {v0, v6, v7, v8}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "prepare() - Error to notify permission insufficient callback"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :pswitch_1
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "prepare() - State is preparing, skip"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :pswitch_2
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "prepare() - Invalid state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_1
    sget-object v5, PREPARE_LOCK:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-class v5, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v3, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v5, "FaceUnlockActivity.StartMode"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v5, 0x50800000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v3}, startActivity(Landroid/content/Intent;)V

    sget-object v6, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_2
    sget-object v5, PREPARE_LOCK:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto :goto_1

    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v5

    :cond_1
    const-string v5, "IsFaceFeatureSaved"

    invoke-static {v5}, Lcom/oneplus/faceunlock/utils/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "prepare() - Saved face is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_3
    sget-object v5, PREPARE_LOCK:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto :goto_1

    :catchall_2
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    :cond_2
    const-string v5, "FaceToken"

    invoke-static {v5}, Lcom/oneplus/faceunlock/utils/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "prepare() - Face token is empty"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_4
    sget-object v5, PREPARE_LOCK:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v6

    goto/16 :goto_1

    :catchall_3
    move-exception v5

    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v5

    :cond_3
    sget-object v5, TAG:Ljava/lang/String;

    const-string v6, "prepare()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/oneplus/faceunlock/FaceUnlockService$State;->PREPARING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v5, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    new-instance v5, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$4;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$4;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;Ljava/lang/String;)V

    invoke-static {v7, v5}, Lcom/oneplus/faceunlock/database/FaceDatabase;->loadFaceFeature(ILcom/oneplus/faceunlock/utils/ResultCallback;)Z

    new-instance v4, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    invoke-direct {v4}, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;-><init>()V

    iget-object v5, p0, m_CameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    iput-object v5, v4, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    iget-object v5, p0, m_CameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

    iput-object v5, v4, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraDisconnectedCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;

    invoke-static {v4}, Lcom/oneplus/faceunlock/camera/CameraDevice;->create(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v5

    iput-object v5, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    goto/16 :goto_1

    :cond_4
    sget-object v6, PREPARE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    :try_start_5
    iget-object v5, p0, m_Handler:Landroid/os/Handler;

    new-instance v7, Lcom/oneplus/faceunlock/FaceUnlockService$8;

    invoke-direct {v7, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$8;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "prepare() - [Start]"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, PREPARE_LOCK:Ljava/lang/Object;

    const-wide/16 v8, 0x1388

    invoke-virtual {v5, v8, v9}, Ljava/lang/Object;->wait(J)V

    sget-object v5, TAG:Ljava/lang/String;

    const-string v7, "prepare() - [End]"

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :goto_2
    :try_start_7
    monitor-exit v6

    goto/16 :goto_1

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw v5

    :catch_1
    move-exception v5

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private prepareFaceEngine()V
    .locals 10

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    iget-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-eqz v3, :cond_1

    iget-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isReady()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isPreparing()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, TAG:Ljava/lang/String;

    const-string v5, "prepareFaceEngine()"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030027

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

    const/16 v3, 0x5a

    const/4 v7, 0x0

    move v5, v4

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;-><init>(IIIFFZZZZ)V

    invoke-static {}, Lcom/oneplus/faceunlock/engine/FaceEngine;->createDefaultFaceEngine()Lcom/oneplus/faceunlock/engine/FaceEngine;

    move-result-object v3

    iput-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iget-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/faceunlock/FaceUnlockService$9;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$9;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v3, v4, p0, v0, v5}, Lcom/oneplus/faceunlock/engine/FaceEngine;->prepare(Lcom/oneplus/faceunlock/utils/Token;Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0
.end method

.method private registerCallback(ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 4

    invoke-direct {p0}, isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback() - Calling pid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_Callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, REGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, REGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    sget-object v1, REGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/FaceUnlockService$10;

    invoke-direct {v2, p0, p1, p2}, Lcom/oneplus/faceunlock/FaceUnlockService$10;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "registerCallback() - [Start]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, REGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "registerCallback() - [End]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private release()V
    .locals 4

    invoke-direct {p0}, isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$18;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockService$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockService$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RELEASING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    const/4 v0, 0x0

    iput v0, p0, m_UserId:I

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockService$11;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$11;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    invoke-direct {p0}, stopFaceEngine()V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "release() - State is releasing, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RELEASED:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    :pswitch_2
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "release() - State is released, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, RELEASE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, RELEASE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    sget-object v1, RELEASE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/FaceUnlockService$12;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$12;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "release() - [Start]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, RELEASE_LOCK:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "release() - [End]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private releaseFaceEngine(ZLcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-nez v1, :cond_1

    if-eqz p2, :cond_0

    sget-object v1, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p2, v3, v1}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "releaseFaceEngine()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, stopFaceEngine()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v1, v3, v0, p2}, Lcom/oneplus/faceunlock/engine/FaceEngine;->release(Lcom/oneplus/faceunlock/utils/Token;ILcom/oneplus/faceunlock/utils/ResultCallback;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeCameraFrameTimeoutTimer()V
    .locals 2

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method private reset()V
    .locals 1

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$State;->NEW:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    return-void
.end method

.method private resetCameraFrameTimeoutTimer()V
    .locals 4

    const/16 v1, 0x2711

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startFaceEngine()V
    .locals 2

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "startFaceEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->start()V

    goto :goto_0
.end method

.method private startFaceUnlock(I)V
    .locals 8

    invoke-direct {p0}, isMainThread()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockService$18;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockService$State:[I

    iget-object v4, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v4}, Lcom/oneplus/faceunlock/FaceUnlockService$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFaceUnlock() - Invalid state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, START_LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    sget-object v3, START_LOCK:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v4

    :goto_0
    return-void

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :pswitch_0
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startFaceUnlock() - User : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/faceunlock/FaceUnlockService$State;->RECOGNIZING:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v3, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput p1, p0, m_UserId:I

    new-instance v3, Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {v3}, Lcom/oneplus/faceunlock/utils/Token;-><init>()V

    iput-object v3, p0, m_CompareToken:Lcom/oneplus/faceunlock/utils/Token;

    const/4 v3, 0x0

    iput v3, p0, m_CompareFrameCount:I

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;-><init>()V

    const/16 v3, 0x5a

    iput v3, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->displayRotationDegrees:I

    iget-object v3, p0, m_CameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    iput-object v3, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->cameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v1}, Landroid/util/Size;-><init>(II)V

    iput-object v3, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    iget-object v3, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    new-instance v4, Lcom/oneplus/faceunlock/FaceUnlockService$13;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService$13;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    invoke-virtual {v3, v0, v4}, Lcom/oneplus/faceunlock/camera/CameraDevice;->start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :cond_0
    sget-object v4, START_LOCK:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, m_Handler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/FaceUnlockService$14;

    invoke-direct {v5, p0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService$14;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    invoke-virtual {v3, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startFaceUnlock() - User : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", [Start]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, START_LOCK:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Ljava/lang/Object;->wait(J)V

    sget-object v3, TAG:Ljava/lang/String;

    const-string v5, "startFaceUnlock() - [End]"

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v4

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :catch_0
    move-exception v3

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method private stopFaceEngine()V
    .locals 2

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "stopFaceEngine()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->stop()V

    goto :goto_0
.end method

.method private stopFaceUnlock(I)V
    .locals 4

    invoke-direct {p0}, isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$18;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockService$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockService$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "stopFaceUnlock() - State is not ready, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, STOP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, STOP_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopFaceUnlock() - User : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/faceunlock/FaceUnlockService$State;->READY:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceUnlockService$State;

    invoke-direct {p0}, removeCameraFrameTimeoutTimer()V

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockService$15;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$15;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :cond_0
    sget-object v1, STOP_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/FaceUnlockService$16;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService$16;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopFaceUnlock() - User : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", [Start]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, STOP_LOCK:Ljava/lang/Object;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "stopFaceUnlock() - [End]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private unregisterCallback(ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 6

    invoke-direct {p0}, isMainThread()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, m_Callbacks:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregisterCallback() - Calling pid : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", success : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, UNREGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, UNREGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v2

    :goto_1
    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    sget-object v2, UNREGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/faceunlock/FaceUnlockService$17;

    invoke-direct {v3, p0, p1, p2}, Lcom/oneplus/faceunlock/FaceUnlockService$17;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "unregisterCallback() - [Start]"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, UNREGISTER_CALLBACK_LOCK:Ljava/lang/Object;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "unregisterCallback() - [End]"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    :try_start_3
    monitor-exit v2

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :catch_0
    move-exception v1

    goto :goto_2
.end method


# virtual methods
.method final synthetic lambda$invalidateFaceData$1$FaceUnlockService(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    invoke-direct {p0}, prepareFaceEngine()V

    return-void
.end method

.method final synthetic lambda$isReleaseComplete$2$FaceUnlockService(Lcom/oneplus/faceunlock/utils/SimpleRef;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, isReleaseComplete()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    monitor-enter p2

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic lambda$new$0$FaceUnlockService()V
    .locals 0

    invoke-direct {p0}, onCameraDisconnected()V

    return-void
.end method

.method final synthetic lambda$null$4$FaceUnlockService(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    invoke-direct {p0}, prepareFaceEngine()V

    invoke-direct {p0}, startFaceEngine()V

    return-void
.end method

.method final synthetic lambda$onCameraDisconnected$3$FaceUnlockService()V
    .locals 6

    iget-object v2, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-eqz v2, :cond_0

    iget-object v2, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onCameraDisconnected() - Notify camera disconnected"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, m_Callbacks:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    const/4 v3, 0x0

    :try_start_0
    iget v4, p0, m_UserId:I

    const/4 v5, 0x3

    invoke-interface {v0, v3, v4, v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onCameraDisconnected() - Error to notify error callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method final synthetic lambda$prepare$5$FaceUnlockService(Ljava/lang/String;Lcom/oneplus/faceunlock/utils/Token;[B)V
    .locals 2

    iput-object p3, p0, m_FaceFeature:[B

    iget-object v0, p0, m_FaceToken:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "prepare() - New face feature"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, m_FaceToken:Ljava/lang/String;

    const/4 v0, 0x0

    new-instance v1, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$5;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$5;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    invoke-direct {p0, v0, v1}, releaseFaceEngine(ZLcom/oneplus/faceunlock/utils/ResultCallback;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "prepare() - Same face feature"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-eqz v0, :cond_1

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, onPrepared(Z)V

    :goto_1
    invoke-direct {p0}, startFaceEngine()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, prepareFaceEngine()V

    goto :goto_1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5

    const-string v2, "FaceEngineType"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-class v2, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    invoke-static {v2}, Lcom/oneplus/faceunlock/engine/FaceEngine;->setFaceEngineType(Ljava/lang/Class;)V

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBind() - Face engine : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, m_Handler:Landroid/os/Handler;

    if-nez v2, :cond_0

    new-instance v2, Lcom/oneplus/faceunlock/FaceUnlockService$5;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceUnlockService$5;-><init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iput-object v2, p0, m_Handler:Landroid/os/Handler;

    :cond_0
    iget-object v2, p0, m_FileHandler:Landroid/os/Handler;

    if-nez v2, :cond_1

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "File Handler Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, m_FileHandler:Landroid/os/Handler;

    :cond_1
    iget-object v2, p0, m_Binder:Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;

    return-object v2
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onCreate()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, m_FaceSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v1, "IsFaceFeatureSaved"

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onCreate() - Face engine pre-initialized"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->preInitialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, m_Callbacks:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->releaseSync()Lcom/oneplus/faceunlock/utils/OperationResult;

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, releaseFaceEngine(ZLcom/oneplus/faceunlock/utils/ResultCallback;)V

    iget-object v0, p0, m_FileHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, m_FileHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    iput-object v1, p0, m_FileHandler:Landroid/os/Handler;

    :cond_1
    iget-object v0, p0, m_FaceSettingReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
