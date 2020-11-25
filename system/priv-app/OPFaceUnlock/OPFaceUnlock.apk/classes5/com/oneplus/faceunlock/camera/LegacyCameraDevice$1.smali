.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->onPreviewFrameReceived([BLcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)V

    return-void
.end method
