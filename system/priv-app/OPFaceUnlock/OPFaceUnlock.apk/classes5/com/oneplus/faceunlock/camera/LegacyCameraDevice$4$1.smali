.class Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;

.field final synthetic val$resultRef:Lcom/oneplus/faceunlock/utils/SimpleRef;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;Lcom/oneplus/faceunlock/utils/SimpleRef;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;

    iput-object p2, p0, val$resultRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    const/4 v1, 0x0

    iget-object v2, p0, val$resultRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice$4;->this$0:Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;->access$1000(Lcom/oneplus/faceunlock/camera/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    return-void
.end method
