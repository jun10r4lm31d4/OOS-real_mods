.class public abstract Lcom/oneplus/faceunlock/camera/CameraDevice;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$LensFacing;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$State;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewFrame;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$CameraDisconnectedCallback;,
        Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_Handler:Landroid/os/Handler;

.field private m_OpenParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

.field private m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

.field private m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

.field private m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

.field private m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

.field private m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

.field private m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

.field private m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    iput-object v0, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_SupportedPreviewSizes:Ljava/util/List;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, m_Handler:Landroid/os/Handler;

    iput-object p1, p0, m_OpenParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/CameraDevice$1;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/camera/CameraDevice$1;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;
    .locals 1

    iget-object v0, p0, m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;
    .locals 0

    iput-object p1, p0, m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$State;
    .locals 1

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;
    .locals 1

    iget-object v0, p0, m_OpenParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Z
    .locals 1

    invoke-direct {p0, p1}, initialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, onInitialized(Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1}, onReleased(Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, onStarted(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    invoke-direct {p0, p1, p2}, onStopped(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;
    .locals 1

    iget-object v0, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    return-object v0
.end method

.method private changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V
    .locals 3

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    goto :goto_0
.end method

.method public static final create(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Lcom/oneplus/faceunlock/camera/CameraDevice;
    .locals 1

    invoke-static {}, useCamera2API()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/camera/Camera2Device;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V

    goto :goto_0
.end method

.method public static findSensorOrientation()I
    .locals 1

    invoke-static {}, useCamera2API()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/faceunlock/camera/Camera2Device;->findSensorOrientation()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->findSensorOrientation()I

    move-result v0

    goto :goto_0
.end method

.method private initialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Z
    .locals 3

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->INITIALIZING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v1}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/camera/CameraDevice$2;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/camera/CameraDevice$2;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;)V

    invoke-virtual {p0, p1, v1, v2}, onInitialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    move-result v0

    goto :goto_0
.end method

.method private onInitialized(Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, verifyAccess()V

    invoke-virtual {p0}, isRelease()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    sget-object v3, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->INITIALIZING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    if-ne p1, v2, :cond_3

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v2}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v2, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v2, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    sget-object v3, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {v2, v4, v3}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_2
    iput-object v4, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    goto :goto_0

    :cond_3
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onInitialized()"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->INITIALIZED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v2}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v3, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_1
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto :goto_0

    :pswitch_0
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onInitialized() - Execute START pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    :cond_4
    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_1

    :pswitch_1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onInitialized() - Execute RELEASE pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onReleased(Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 2

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    if-ne p1, v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onRelease() - Fail to release camera"

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->RELEASED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    return-void
.end method

.method private onStarted(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, verifyAccess()V

    :try_start_0
    invoke-virtual {p0}, isRelease()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStarted() - Invalid state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v2, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v1}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute STOP pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    iget-object v0, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    :cond_0
    invoke-virtual {p0, v0}, stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :pswitch_1
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute RELEASE pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    if-eq v1, p1, :cond_3

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Token is updated, ignore"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v2, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    :goto_2
    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v1}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto :goto_1

    :pswitch_2
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute STOP pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    iget-object v0, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    :cond_2
    invoke-virtual {p0, v0}, stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_2

    :pswitch_3
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute RELEASE pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_2

    :cond_3
    :try_start_2
    sget-object v1, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    if-ne p2, v1, :cond_5

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStarted() - Fail to start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STOPPED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v1}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v2, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    :goto_3
    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v1}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute STOP pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    if-eqz v1, :cond_4

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    iget-object v0, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    :cond_4
    invoke-virtual {p0, v0}, stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_3

    :pswitch_5
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute RELEASE pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_3

    :cond_5
    :try_start_3
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted()"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STARTED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v1}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v2, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3

    :goto_4
    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v1}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute STOP pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    if-eqz v1, :cond_6

    iget-object v1, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    iget-object v0, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    :cond_6
    invoke-virtual {p0, v0}, stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_4

    :pswitch_7
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onStarted() - Execute RELEASE pending action"

    invoke-static {v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_4

    :catchall_0
    move-exception v1

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v3, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4

    :goto_5
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    throw v1

    :pswitch_8
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStarted() - Execute STOP pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-object v2, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    if-eqz v2, :cond_7

    iget-object v2, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v4, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    :cond_7
    invoke-virtual {p0, v0}, stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_5

    :pswitch_9
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStarted() - Execute RELEASE pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method private onStopped(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0}, verifyAccess()V

    :try_start_0
    invoke-virtual {p0}, isRelease()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v3, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    :goto_1
    return-void

    :pswitch_0
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute START pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v5, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    :cond_0
    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :pswitch_1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute RELEASE pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v2, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    if-eq v2, p1, :cond_3

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Token is updated, ignore"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v3, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_1

    :goto_2
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto :goto_1

    :pswitch_2
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute START pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v2, :cond_2

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v5, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    :cond_2
    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_2

    :pswitch_3
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute RELEASE pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_2

    :cond_3
    :try_start_2
    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    if-ne p2, v2, :cond_5

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STARTED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v2}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v3, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_2

    :goto_3
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto/16 :goto_1

    :pswitch_4
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute START pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v2, :cond_4

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v5, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    :cond_4
    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_3

    :pswitch_5
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute RELEASE pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_3

    :cond_5
    :try_start_3
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped()"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STOPPED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v2}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v3, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_3

    :goto_4
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    goto/16 :goto_1

    :pswitch_6
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute START pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v2, :cond_6

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v5, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    :cond_6
    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_4

    :pswitch_7
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onStopped() - Execute RELEASE pending action"

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_4

    :catchall_0
    move-exception v2

    sget-object v3, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$PendingAction:[I

    iget-object v4, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-virtual {v4}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4

    :goto_5
    sget-object v3, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->EMPTY:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v3}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    throw v2

    :pswitch_8
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onStopped() - Execute START pending action"

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    iget-object v3, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-eqz v3, :cond_7

    iget-object v3, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v3, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v3, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v3, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object v5, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    :cond_7
    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_5

    :pswitch_9
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onStopped() - Execute RELEASE pending action"

    invoke-static {v3, v4}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private releaseInternal(ZLcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/OperationResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)",
            "Lcom/oneplus/faceunlock/utils/OperationResult;"
        }
    .end annotation

    const/4 v3, 0x0

    invoke-direct {p0}, verifyAccess()V

    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "releaseInternal() - Sync : "

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->RELEASING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    iput-object v3, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    iput-object v3, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iput-object v3, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    iput-object v3, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v0, p0, m_SupportedPreviewSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3, v3}, onRelease(ZLandroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-direct {p0, v0}, onReleased(Lcom/oneplus/faceunlock/utils/OperationResult;)V

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p2, v3, v0}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-direct {p0, v0}, onReleased(Lcom/oneplus/faceunlock/utils/OperationResult;)V

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/camera/CameraDevice$3;

    invoke-direct {v2, p0, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice$3;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {p0, v0, v1, v2}, onRelease(ZLandroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V
    .locals 3

    iget-object v0, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPendingAction() - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] Action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, m_PendingAction:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    goto :goto_0
.end method

.method private startPendingStartInfo(J)V
    .locals 5

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v1, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    iget-object v0, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;->callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    const/4 v2, 0x0

    iput-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-gtz v2, :cond_0

    invoke-virtual {p0, v1, v0}, start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    if-eqz v2, :cond_1

    iget-object v2, p0, m_Handler:Landroid/os/Handler;

    iget-object v3, p0, m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    new-instance v2, Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    invoke-direct {v2, p0, v1, v0}, Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    iput-object v2, p0, m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    iget-object v2, p0, m_Handler:Landroid/os/Handler;

    iget-object v3, p0, m_StartRunnable:Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private static useCamera2API()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "useCamera2API() - Board : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    packed-switch v2, :pswitch_data_1

    move v0, v1

    :pswitch_1
    return v0

    :pswitch_2
    const-string v4, "msm8996"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v0

    goto :goto_0

    :pswitch_3
    const-string v4, "msm8998"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x505edde5
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private verifyAccess()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Cross-thread access."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract dequeueCameraFrameBuffer()[B
.end method

.method public abstract enqueueCameraFrameBuffer([B)V
.end method

.method public abstract getSensorOrientation()I
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STARTED:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRelease()Z
    .locals 2

    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isStop()Z
    .locals 2

    sget-object v0, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract onInitialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
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
.end method

.method protected onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V
    .locals 5

    invoke-virtual {p0}, isRelease()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iget-object v2, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->cameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    if-eqz v2, :cond_2

    iget-object v2, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, v2, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->cameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    iget-object v3, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v3, v3, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    const/16 v4, 0x11

    invoke-interface {v2, v3, v4, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;->onFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z

    move-result v1

    :cond_2
    if-nez v1, :cond_0

    invoke-virtual {p0}, dequeueCameraFrameBuffer()[B

    move-result-object v0

    invoke-virtual {p0, v0}, enqueueCameraFrameBuffer([B)V

    goto :goto_0
.end method

.method protected abstract onRelease(ZLandroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
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
.end method

.method protected abstract onStart(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
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
.end method

.method protected abstract onStop(Lcom/oneplus/faceunlock/utils/Token;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
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
.end method

.method public release(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, releaseInternal(ZLcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/OperationResult;

    const/4 v0, 0x1

    return v0
.end method

.method public releaseSync()Lcom/oneplus/faceunlock/utils/OperationResult;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, releaseInternal(ZLcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method public start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, verifyAccess()V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$State:[I

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start() - Invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p2, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :pswitch_0
    iget-object v2, p0, m_OpenParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    invoke-direct {p0, v2}, initialize(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Z

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->START:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-nez v2, :cond_2

    new-instance v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    invoke-direct {v2, p1, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    iput-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_1

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p2, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_1
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->START:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    iget-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    if-nez v2, :cond_3

    new-instance v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    invoke-direct {v2, p1, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    iput-object v2, p0, m_PendingStartInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStartInfo;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_1

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p2, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    if-eqz p2, :cond_1

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p2, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STARTING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v2}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    new-instance v1, Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {v1}, Lcom/oneplus/faceunlock/utils/Token;-><init>()V

    iput-object v1, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start() - Token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, m_Handler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/faceunlock/camera/CameraDevice$4;

    invoke-direct {v3, p0, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice$4;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {p0, v1, p1, v2, v3}, onStart(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public stop(Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, verifyAccess()V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$7;->$SwitchMap$com$oneplus$faceunlock$camera$CameraDevice$State:[I

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop() - Invalid state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, m_State:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p1, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    :pswitch_1
    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;->STOP:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;

    invoke-direct {p0, v2}, setPendingAction(Lcom/oneplus/faceunlock/camera/CameraDevice$PendingAction;)V

    iget-object v2, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    if-nez v2, :cond_2

    new-instance v2, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    invoke-direct {v2, p1}, Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;-><init>(Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    iput-object v2, p0, m_PendingStopInfo:Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_1

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p1, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_2
    if-eqz p1, :cond_1

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p1, v5, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_3
    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop() - Token : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/utils/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->STOPPING:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    invoke-direct {p0, v2}, changeState(Lcom/oneplus/faceunlock/camera/CameraDevice$State;)V

    iget-object v1, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v2, p0, m_StartToken:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v3, p0, m_Handler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/faceunlock/camera/CameraDevice$5;

    invoke-direct {v4, p0, p1}, Lcom/oneplus/faceunlock/camera/CameraDevice$5;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {p0, v2, v3, v4}, onStop(Lcom/oneplus/faceunlock/utils/Token;Landroid/os/Handler;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method updateFaceKeyPoints([F)V
    .locals 2

    invoke-virtual {p0}, isRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_StartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/camera/CameraDevice$6;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/faceunlock/camera/CameraDevice$6;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice;[F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
