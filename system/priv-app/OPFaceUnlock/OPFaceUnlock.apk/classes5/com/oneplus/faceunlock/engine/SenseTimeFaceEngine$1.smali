.class Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$1;
.super Ljava/lang/Object;
.source "SenseTimeFaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;->onExtractFeatureAndCompare([BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[B)Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

.field final synthetic val$faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

.field final synthetic val$hackerValueRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

.field final synthetic val$height:I

.field final synthetic val$image:[B

.field final synthetic val$innerFaceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

.field final synthetic val$syncObj:Ljava/lang/Object;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;Ljava/lang/Object;[BIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/FaceInfo;Lcom/oneplus/faceunlock/utils/SimpleRef;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    iput-object p2, p0, val$syncObj:Ljava/lang/Object;

    iput-object p3, p0, val$image:[B

    iput p4, p0, val$width:I

    iput p5, p0, val$height:I

    iput-object p6, p0, val$faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    iput-object p7, p0, val$innerFaceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    iput-object p8, p0, val$hackerValueRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v9, p0, val$syncObj:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-static {}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;->access$000()Lcom/sensetime/faceapi/FaceHacker;

    move-result-object v0

    iget-object v1, p0, val$image:[B

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iget v3, p0, val$width:I

    iget v4, p0, val$height:I

    iget v5, p0, val$width:I

    iget-object v6, p0, val$faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    iget-object v7, p0, val$innerFaceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    invoke-virtual/range {v0 .. v7}, Lcom/sensetime/faceapi/FaceHacker;->hacker([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/FaceInfo;)F

    move-result v8

    invoke-static {}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtractFeatureAndCompare() - Hacker score : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", spent "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, val$hackerValueRef:Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    iget-object v0, p0, val$syncObj:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
