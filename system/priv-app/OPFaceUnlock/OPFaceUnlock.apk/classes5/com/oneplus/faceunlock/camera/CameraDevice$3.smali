.class Lcom/oneplus/faceunlock/camera/CameraDevice$3;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;->releaseInternal(ZLcom/oneplus/faceunlock/utils/ResultCallback;)Lcom/oneplus/faceunlock/utils/OperationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/faceunlock/utils/ResultCallback",
        "<",
        "Lcom/oneplus/faceunlock/utils/OperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    iput-object p2, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v0, p2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$500(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    iget-object v0, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {p0, p1, p2}, onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method