.class Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StartRunnable"
.end annotation


# instance fields
.field private callback:Lcom/oneplus/faceunlock/utils/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;"
        }
    .end annotation
.end field

.field private params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;


# direct methods
.method public constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iput-object p3, p0, callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$000(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    iget-object v1, p0, params:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v2, p0, callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$002(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;)Lcom/oneplus/faceunlock/camera/CameraDevice$StartRunnable;

    :cond_0
    return-void
.end method
