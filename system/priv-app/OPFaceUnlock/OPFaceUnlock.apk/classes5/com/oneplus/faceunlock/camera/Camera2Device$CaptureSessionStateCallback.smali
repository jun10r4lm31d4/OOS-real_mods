.class Lcom/oneplus/faceunlock/camera/Camera2Device$CaptureSessionStateCallback;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "Camera2Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CaptureSessionStateCallback"
.end annotation


# instance fields
.field public syncObj:Ljava/lang/Object;

.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;


# direct methods
.method private constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, syncObj:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;Lcom/oneplus/faceunlock/camera/Camera2Device$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;)V

    return-void
.end method


# virtual methods
.method public onClosed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$000(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$200(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1
    .param p1    # Landroid/hardware/camera2/CameraCaptureSession;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$100(Lcom/oneplus/faceunlock/camera/Camera2Device;Landroid/hardware/camera2/CameraCaptureSession;)V

    return-void
.end method
