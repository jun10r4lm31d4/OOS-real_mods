.class Lcom/oneplus/faceunlock/engine/FaceEngine$4;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->extractFeatureAndCompare(Lcom/oneplus/faceunlock/utils/Token;[BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field final synthetic val$angle:I

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$feature:[B

.field final synthetic val$format:I

.field final synthetic val$hardwareFace:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

.field final synthetic val$height:I

.field final synthetic val$image:[B

.field final synthetic val$orientation:I

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[BLcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iput-object p2, p0, val$image:[B

    iput p3, p0, val$width:I

    iput p4, p0, val$height:I

    iput p5, p0, val$angle:I

    iput p6, p0, val$format:I

    iput p7, p0, val$orientation:I

    iput-object p8, p0, val$hardwareFace:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    iput-object p9, p0, val$feature:[B

    iput-object p10, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p11, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

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

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "extractFeatureAndCompare() - Start"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    iget v4, p0, val$angle:I

    iget v5, p0, val$format:I

    iget v6, p0, val$orientation:I

    iget-object v7, p0, val$hardwareFace:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    iget-object v8, p0, val$feature:[B

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/faceunlock/engine/FaceEngine;->onExtractFeatureAndCompare([BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[B)Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    move-result-object v9

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v10, v2, v12

    iput-wide v10, v9, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->spentTimeMillis:J

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extractFeatureAndCompare() - Feature extracted and compared : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v9, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->success:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", result code : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;->resultCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", spent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$4$1;

    invoke-direct {v2, p0, v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$4$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine$4;Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
