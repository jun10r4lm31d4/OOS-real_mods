.class Lcom/oneplus/faceunlock/engine/FaceEngine$8$1;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$8;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine$8;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$8;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$8;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->STARTED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$700(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;)V

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$8;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$8;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$800(Lcom/oneplus/faceunlock/engine/FaceEngine;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$8;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$8;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$802(Lcom/oneplus/faceunlock/engine/FaceEngine;Z)Z

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$8;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$8;->this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->stop()V

    :cond_0
    return-void
.end method
