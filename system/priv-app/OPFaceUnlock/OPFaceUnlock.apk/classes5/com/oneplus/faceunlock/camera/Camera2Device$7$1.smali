.class Lcom/oneplus/faceunlock/camera/Camera2Device$7$1;
.super Ljava/lang/Object;
.source "Camera2Device.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/Camera2Device$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device$7;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v0, v0, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, this$1:Lcom/oneplus/faceunlock/camera/Camera2Device$7;

    iget-object v1, v1, Lcom/oneplus/faceunlock/camera/Camera2Device$7;->val$token:Lcom/oneplus/faceunlock/utils/Token;

    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    return-void
.end method
