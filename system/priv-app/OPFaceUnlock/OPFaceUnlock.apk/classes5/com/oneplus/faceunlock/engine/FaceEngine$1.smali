.class Lcom/oneplus/faceunlock/engine/FaceEngine$1;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->compareFeatures(Lcom/oneplus/faceunlock/utils/Token;[B[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$feature1:[B

.field final synthetic val$feature2:[B


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[B[BLcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iput-object p2, p0, val$feature1:[B

    iput-object p3, p0, val$feature2:[B

    iput-object p4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v4}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isRelease()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v4}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "compareFeatures() - Start"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iget-object v5, p0, val$feature1:[B

    iget-object v6, p0, val$feature2:[B

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/faceunlock/engine/FaceEngine;->onCompareFeatures([B[B)D

    move-result-wide v0

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v4}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compareFeatures() - Compare complete, spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms, similarity : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v4}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/oneplus/faceunlock/engine/FaceEngine$1$1;

    invoke-direct {v5, p0, v0, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine$1$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine$1;D)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
