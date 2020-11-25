.class Lcom/oneplus/faceunlock/camera/CameraDevice$6;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;->updateFaceKeyPoints([F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

.field final synthetic val$faceKeyPoints:[F


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice;[F)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    iput-object p2, p0, val$faceKeyPoints:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$800(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$800(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$800(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    move-result-object v0

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    iget-object v1, p0, val$faceKeyPoints:[F

    invoke-interface {v0, v1}, Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;->onFaceKeyPointsUpdated([F)V

    goto :goto_0
.end method
