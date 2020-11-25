.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$2;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->enqueueCameraFrameBuffer([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

.field final synthetic val$buffer:[B


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;[B)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    iput-object p2, p0, val$buffer:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, val$buffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    return-void
.end method
