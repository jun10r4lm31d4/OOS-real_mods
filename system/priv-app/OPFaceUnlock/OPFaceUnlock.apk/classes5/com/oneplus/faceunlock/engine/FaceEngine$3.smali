.class Lcom/oneplus/faceunlock/engine/FaceEngine$3;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->extractFeature(Lcom/oneplus/faceunlock/utils/Token;[BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$format:I

.field final synthetic val$hardwareFace:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

.field final synthetic val$height:I

.field final synthetic val$image:[B

.field final synthetic val$orientation:I

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iput-object p2, p0, val$image:[B

    iput p3, p0, val$width:I

    iput p4, p0, val$height:I

    iput p5, p0, val$format:I

    iput p6, p0, val$orientation:I

    iput-object p7, p0, val$hardwareFace:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    iput-object p8, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p9, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v5, 0x0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iget-object v2, p0, val$image:[B

    iget v3, p0, val$width:I

    iget v4, p0, val$height:I

    invoke-static {v0, v2, v3, v4}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$200(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII)[B

    move-result-object v8

    array-length v0, v8

    new-array v1, v0, [B

    array-length v0, v1

    invoke-static {v8, v5, v1, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extractFeature() - Start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    iget v4, p0, val$format:I

    iget v5, p0, val$orientation:I

    iget-object v6, p0, val$hardwareFace:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/faceunlock/engine/FaceEngine;->onExtractFeature([BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;)Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    move-result-object v7

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractFeature() - Feature extracted, spent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v10

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms, feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v7, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->feature:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$3$1;

    invoke-direct {v2, p0, v7}, Lcom/oneplus/faceunlock/engine/FaceEngine$3$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine$3;Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
