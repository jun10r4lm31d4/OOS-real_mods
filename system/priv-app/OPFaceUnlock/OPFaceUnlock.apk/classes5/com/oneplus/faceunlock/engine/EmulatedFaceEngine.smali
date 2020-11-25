.class public Lcom/oneplus/faceunlock/engine/EmulatedFaceEngine;
.super Lcom/oneplus/faceunlock/engine/FaceEngine;
.source "EmulatedFaceEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/engine/EmulatedFaceEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public isRecognizedAsSamePerson(D)Z
    .locals 3

    const-wide v0, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCompareFeatures([B[B)D
    .locals 4

    const-wide/16 v0, 0x50

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    :goto_1
    return-wide v0

    :cond_0
    const-wide v0, 0x3fe6666666666666L    # 0.7

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onDeepRelease()V
    .locals 0

    return-void
.end method

.method protected onDeleteFeature()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onExtractFeature([BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;)Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;
    .locals 9

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x3fee36113404ea4bL    # 0.9441

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v8, 0x1

    :goto_1
    if-eqz v8, :cond_1

    const/16 v0, 0xa

    new-array v5, v0, [B

    :goto_2
    if-eqz v8, :cond_2

    const/4 v6, 0x0

    :goto_3
    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v7, v6

    invoke-direct/range {v0 .. v7}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    return-object v0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    const/4 v6, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onExtractFeatureAndCompare([BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[B)Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;
    .locals 6

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const-wide v4, 0x3fee36113404ea4bL    # 0.9441

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_2
    const/16 v3, 0x5a

    invoke-direct {v2, p0, v1, v3, v0}, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPrepare(Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;)Lcom/oneplus/faceunlock/utils/OperationResult;
    .locals 2

    const-wide/16 v0, 0xb4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRelease(I)V
    .locals 0

    return-void
.end method

.method protected onStart()V
    .locals 0

    return-void
.end method

.method protected onStop()V
    .locals 0

    return-void
.end method
