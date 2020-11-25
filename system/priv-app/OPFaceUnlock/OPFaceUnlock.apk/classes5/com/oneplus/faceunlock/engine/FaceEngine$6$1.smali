.class Lcom/oneplus/faceunlock/engine/FaceEngine$6$1;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

.field final synthetic val$result:Lcom/oneplus/faceunlock/utils/OperationResult;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine$6;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iput-object p2, p0, val$result:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, val$result:Lcom/oneplus/faceunlock/utils/OperationResult;

    sget-object v1, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->NEW:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$400(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v1, v1, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->val$token:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v2, p0, val$result:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->READY:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$400(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$500(Lcom/oneplus/faceunlock/engine/FaceEngine;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$502(Lcom/oneplus/faceunlock/engine/FaceEngine;Z)Z

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->start()V

    :cond_1
    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    iget-object v1, v1, Lcom/oneplus/faceunlock/engine/FaceEngine$6;->val$token:Lcom/oneplus/faceunlock/utils/Token;

    iget-object v2, p0, val$result:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0
.end method
