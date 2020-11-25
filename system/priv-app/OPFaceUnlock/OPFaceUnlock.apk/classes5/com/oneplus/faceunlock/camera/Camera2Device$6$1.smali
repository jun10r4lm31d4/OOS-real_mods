.class Lcom/oneplus/faceunlock/camera/Camera2Device$6$1;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$6;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device$6;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$6;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    const/4 v1, 0x0

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$6;->this$0:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->access$1400(Lcom/oneplus/faceunlock/camera/Camera2Device;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
