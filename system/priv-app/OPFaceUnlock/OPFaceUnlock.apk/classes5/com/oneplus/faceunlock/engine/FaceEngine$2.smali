.class Lcom/oneplus/faceunlock/engine/FaceEngine$2;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->deleteFeature(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iput-object p2, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p3, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isRelease()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "deleteFeature() - Start"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->onDeleteFeature()Z

    move-result v0

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteFeature() - Feature deleted, spent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms, result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;

    move-result-object v1

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$2$1;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/faceunlock/engine/FaceEngine$2$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine$2;Z)V

    invoke-virtual {v1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
