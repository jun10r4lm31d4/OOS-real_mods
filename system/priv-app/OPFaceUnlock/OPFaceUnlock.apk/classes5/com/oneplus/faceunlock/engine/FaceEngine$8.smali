.class Lcom/oneplus/faceunlock/engine/FaceEngine$8;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start() - Start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->onStart()V

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "start() - End"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/faceunlock/engine/FaceEngine$8$1;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/engine/FaceEngine$8$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine$8;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
