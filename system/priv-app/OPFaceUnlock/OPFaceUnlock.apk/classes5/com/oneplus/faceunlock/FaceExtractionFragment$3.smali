.class Lcom/oneplus/faceunlock/FaceExtractionFragment$3;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0, p1, p2, p3}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$300(Lcom/oneplus/faceunlock/FaceExtractionFragment;Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z

    move-result v0

    return v0
.end method