.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Landroid/hardware/Camera$ErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILandroid/hardware/Camera;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onInitialize() - Error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$3;->val$openParams:Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    invoke-interface {v0, p1}, Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;->onCameraError(I)V

    return-void
.end method
