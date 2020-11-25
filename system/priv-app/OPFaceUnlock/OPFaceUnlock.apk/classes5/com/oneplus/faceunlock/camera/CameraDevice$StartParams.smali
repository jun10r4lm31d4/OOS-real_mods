.class public Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartParams"
.end annotation


# instance fields
.field public cameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

.field public displayRotationDegrees:I

.field public faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

.field public isFixedSizeChanged:Z

.field public isFixedSizeChanging:Z

.field public previewSize:Landroid/util/Size;

.field public surfaceTexture:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
