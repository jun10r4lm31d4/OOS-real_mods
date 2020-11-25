.class Lcom/oneplus/faceunlock/FaceExtractionFragment$12;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;->onCameraFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

.field final synthetic val$previewFrame:[B


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;[B)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    iput-object p2, p0, val$previewFrame:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1500(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1500(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v0

    iget-object v1, p0, val$previewFrame:[B

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->enqueueCameraFrameBuffer([B)V

    goto :goto_0
.end method
