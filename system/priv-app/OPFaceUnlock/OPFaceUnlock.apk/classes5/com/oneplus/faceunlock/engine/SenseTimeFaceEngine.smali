.class public Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;
.super Lcom/oneplus/faceunlock/engine/FaceEngine;
.source "SenseTimeFaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;
    }
.end annotation


# static fields
.field private static final ALIGN_MODEL_FILE_NAME:Ljava/lang/String; = "st_align"

.field private static final DEFAULT_FACE_IMAGE_RESIZE:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

.field private static final DEFAULT_FACE_KEY_POINT_COUNT:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

.field private static final DELAY_TO_CLEAR_STATIC_RESOURCES:J = 0x2710L

.field private static final DETECT_MODEL_FILE_NAME:Ljava/lang/String; = "st_detect"

.field private static final DURATION_TO_SWITCH_FACE_DETECTION_SIZE:I = 0x1f4

.field private static final ENGINE_VERSION:Ljava/lang/String; = "2.6.75"

.field private static final EXTRACTION_COUNTER_MAX:I = 0x3

.field private static final FACE_ORIENTATIONS_CANDIDATES:[Lcom/sensetime/faceapi/model/FaceOrientation;

.field private static final KEY_ST_FACE_ENGINE_VERSION:Ljava/lang/String; = "StFaceEngineVersion"

.field private static final LIVENESS_MODEL_FILE_NAME:Ljava/lang/String; = "st_liveness"

.field private static final MAX_BRIGHT:F = 0.83f

.field private static final MAX_FACE_RECT_RATIO:F = 0.6f

.field private static final MAX_FRONT_PITCH:I = 0x14

.field private static final MAX_FRONT_YAW:I = 0x19

.field private static final MAX_YAW:I = 0x2d

.field private static final MIN_BRIGHT:F = 0.17f

.field private static final MIN_FACE_RECT_RATIO:F = 0.35f

.field private static final MIN_QUALITY:F = 2.1f

.field private static final MODEL_FOLDER_NAME:Ljava/lang/String; = "model"

.field private static final OCULAR_MODEL_FILE_NAME:Ljava/lang/String; = "st_ocular"

.field private static final TAG:Ljava/lang/String;

.field private static final THRESHOLD_HACKER:F = 0.95f

.field private static final THRESHOLD_SAME_PERSON:D = 0.8

.field private static final VERIFY_MODEL_FILE_NAME:Ljava/lang/String; = "st_verify"

.field private static m_ClearStaticResourcesRunnable:Ljava/lang/Runnable;

.field private static m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

.field private static m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

.field private static m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

.field private static m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

.field private static m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

.field private static m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

.field private static m_WorkerHandler:Landroid/os/Handler;

.field private static m_WorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

.field private m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

.field private m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

.field private m_DetectArea:Landroid/graphics/Rect;

.field private m_ExtractionCounter:I

.field private m_LastFaceDetectedTimeMillis:J

.field private m_MaxFaceRect:Landroid/graphics/Rect;

.field private m_MinFaceRect:Landroid/graphics/Rect;

.field private m_NeedToPrepare:Z

.field private m_PrepareInfo:Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

.field private m_UseFaceCompare:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    sget-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_427W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sput-object v0, DEFAULT_FACE_IMAGE_RESIZE:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v0, Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;->POINT_COUNT_106:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    sput-object v0, DEFAULT_FACE_KEY_POINT_COUNT:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sensetime/faceapi/model/FaceOrientation;

    const/4 v1, 0x0

    sget-object v2, Lcom/sensetime/faceapi/model/FaceOrientation;->RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/sensetime/faceapi/model/FaceOrientation;->LEFT:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/sensetime/faceapi/model/FaceOrientation;->UP:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/sensetime/faceapi/model/FaceOrientation;->DOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    aput-object v2, v0, v1

    sput-object v0, FACE_ORIENTATIONS_CANDIDATES:[Lcom/sensetime/faceapi/model/FaceOrientation;

    sget-object v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$$Lambda$0;->$instance:Ljava/lang/Runnable;

    sput-object v0, m_ClearStaticResourcesRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/sensetime/faceapi/FaceHacker;
    .locals 1

    sget-object v0, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static final bridge synthetic bridge$lambda$0$SenseTimeFaceEngine()V
    .locals 0

    invoke-static {}, clearStaticResources()V

    return-void
.end method

.method private static clearStaticResources()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "clearStaticResources()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, m_ClearStaticResourcesRunnable:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->removeFromFaceEngineHandler(Ljava/lang/Runnable;)V

    sget-object v0, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    if-eqz v0, :cond_0

    sget-object v0, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceDetect;->release()V

    sput-object v2, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    :cond_0
    sget-object v0, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    if-eqz v0, :cond_1

    sget-object v0, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceDetect;->release()V

    sput-object v2, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    :cond_1
    sget-object v0, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    if-eqz v0, :cond_2

    sget-object v0, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceVerify;->release()V

    sput-object v2, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    :cond_2
    sget-object v0, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-eqz v0, :cond_3

    sget-object v0, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceHacker;->release()V

    sput-object v2, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    :cond_3
    sget-object v0, m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-eqz v0, :cond_4

    sget-object v0, m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/FaceOcular;->release()V

    sput-object v2, m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    :cond_4
    sget-object v0, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    if-eqz v0, :cond_5

    sget-object v0, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    invoke-virtual {v0}, Lcom/sensetime/faceapi/filter/FilterGroup;->clear()V

    sput-object v2, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    :cond_5
    sget-object v0, m_WorkerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_6

    sget-object v0, m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    sput-object v2, m_WorkerThread:Landroid/os/HandlerThread;

    sput-object v2, m_WorkerHandler:Landroid/os/Handler;

    :cond_6
    return-void
.end method

.method private closeFaceDetectCA()V
    .locals 2

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0}, Lcom/oneplus/facedetectca/FaceDetectCA;->isServiceConnected(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "closeFaceDetectCA() - Close trust zone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0}, Lcom/oneplus/facedetectca/FaceDetectCA;->close(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "closeFaceDetectCA() - Fail to close trust zone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    goto :goto_0
.end method

.method private containFace(Landroid/graphics/Rect;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, m_DetectArea:Landroid/graphics/Rect;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, m_DetectArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, m_MaxFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, m_MaxFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, m_MinFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gt v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, m_MinFaceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-gt v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private detectFace([BIIIIZ)Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, isNv21Format(I)Z

    move-result v6

    if-nez v6, :cond_0

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unsupported image format : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p4

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", only NV21 is supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_0
    const/16 v30, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, getFaceOrientation(I)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v34

    if-eqz p6, :cond_4

    sget-object v6, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v8, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/sensetime/faceapi/FaceDetect;->detect([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v30

    :cond_1
    :goto_0
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detectFace() - Image orientation degree : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p5

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", use face orientation : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v30, :cond_2

    move-object/from16 v0, v30

    array-length v6, v0

    if-nez v6, :cond_9

    :cond_2
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detectFace() - No face, spent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v34

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, m_ExtractionCounter:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-wide v8, v0, m_LastFaceDetectedTimeMillis:J

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x1f4

    cmp-long v6, v6, v8

    if-lez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v6, v0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v7, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    if-eq v6, v7, :cond_3

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Switch to 640w"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    move-object/from16 v0, p0

    iput-object v6, v0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    :cond_3
    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/4 v6, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V

    :goto_1
    return-object v21

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v7, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    if-ne v6, v7, :cond_5

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Use 640w to detect face"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v8, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p2

    invoke-virtual/range {v6 .. v12}, Lcom/sensetime/faceapi/FaceDetect;->detect([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v30

    if-eqz v30, :cond_6

    move-object/from16 v0, v30

    array-length v6, v0

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    :cond_6
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Cannot detect face by default face orientation, try other orientations"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, FACE_ORIENTATIONS_CANDIDATES:[Lcom/sensetime/faceapi/model/FaceOrientation;

    array-length v8, v7

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v8, :cond_1

    aget-object v19, v7, v6

    move-object/from16 v0, v19

    if-ne v0, v12, :cond_8

    :cond_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v15, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object/from16 v14, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p2

    invoke-virtual/range {v13 .. v19}, Lcom/sensetime/faceapi/FaceDetect;->detect([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v30

    if-eqz v30, :cond_7

    move-object/from16 v0, v30

    array-length v9, v0

    if-lez v9, :cond_7

    move-object/from16 v12, v19

    goto/16 :goto_0

    :cond_9
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detectFace() - Face is detected, spent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v34

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    move-object/from16 v0, p0

    iput-wide v6, v0, m_LastFaceDetectedTimeMillis:J

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, getMaxFace([Lcom/sensetime/faceapi/model/FaceInfo;)Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v26

    const/16 v27, 0x0

    if-eqz p6, :cond_e

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, containFace(Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_a

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Face is out of detect area"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, m_ExtractionCounter:I

    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/4 v6, 0x2

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V

    goto/16 :goto_1

    :cond_a
    sget-object v20, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    sget-object v22, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV12:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object/from16 v21, p1

    move/from16 v23, p2

    move/from16 v24, p3

    move/from16 v25, p2

    invoke-virtual/range {v20 .. v26}, Lcom/sensetime/faceapi/filter/FilterGroup;->onFilter([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)I

    move-result v32

    if-nez v32, :cond_b

    sget-object v6, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    invoke-virtual {v6}, Lcom/sensetime/faceapi/filter/FilterGroup;->getFilters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/sensetime/faceapi/filter/BaseFilter;

    move-object/from16 v0, v31

    iget v7, v0, Lcom/sensetime/faceapi/filter/BaseFilter;->mOutScore:F

    add-float v27, v27, v7

    sget-object v7, TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "detectFace() - Face quality, type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget v9, v0, Lcom/sensetime/faceapi/filter/BaseFilter;->mType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", score : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v31

    iget v9, v0, Lcom/sensetime/faceapi/filter/BaseFilter;->mOutScore:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_b
    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "detectFace() - Face quality is illegal : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, v32

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/16 v6, 0xc

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V

    goto/16 :goto_1

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, v26

    invoke-direct {v0, v1, v2, v3, v4}, isNormalBrightness([BIILcom/sensetime/faceapi/model/FaceInfo;)Z

    move-result v6

    if-nez v6, :cond_d

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Brightness illegal"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/16 v6, 0xb

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V

    goto/16 :goto_1

    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, isFacingFront(Lcom/sensetime/faceapi/model/FaceInfo;)Z

    move-result v6

    if-nez v6, :cond_e

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Face is not facing front"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, m_ExtractionCounter:I

    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/16 v6, 0xd

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V

    goto/16 :goto_1

    :cond_e
    sget-object v6, m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    sget-object v8, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    if-eqz v26, :cond_f

    move-object/from16 v0, v26

    iget-object v13, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    :goto_4
    move-object/from16 v7, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p2

    invoke-virtual/range {v6 .. v13}, Lcom/sensetime/faceapi/FaceOcular;->isOpenEye([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Landroid/graphics/Rect;)Z

    move-result v6

    if-nez v6, :cond_10

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "detectFace() - Eye is close"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, m_ExtractionCounter:I

    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/16 v6, 0xe

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V

    goto/16 :goto_1

    :cond_f
    const/4 v13, 0x0

    goto :goto_4

    :cond_10
    new-instance v21, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    const/16 v29, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, p1

    move/from16 v24, p2

    move/from16 v25, p3

    move-object/from16 v28, v12

    invoke-direct/range {v21 .. v29}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;[BIILcom/sensetime/faceapi/model/FaceInfo;FLcom/sensetime/faceapi/model/FaceOrientation;I)V

    goto/16 :goto_1
.end method

.method private dumpComparisonResult([B[BLcom/sensetime/faceapi/model/FaceOrientation;IDDI)V
    .locals 13

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd_HHmmss_SSS"

    sget-object v10, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v9, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v9

    const-string v10, "debug"

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    new-instance v6, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "image_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "feature_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v3, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Face detection result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p4

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Face orientation : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Hacker value : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_2

    const-string v9, "Unknown"

    :goto_0
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Comparison score : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->isNaN(D)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "Unknown"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Final result : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p9

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->isDebugMode()Z

    move-result v9

    if-nez v9, :cond_4

    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "dumpComparisonResult() - Debug mode is OFF, no need to dump image"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_2
    invoke-static {}, Lcom/oneplus/faceunlock/Config;->isDebugMode()Z

    move-result v9

    if-nez v9, :cond_9

    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "dumpComparisonResult() - Debug mode is OFF, no need to dump feature"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    return-void

    :cond_2
    invoke-static/range {p5 .. p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_0

    :cond_3
    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_8

    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v11, 0x0

    :try_start_1
    invoke-virtual {v7, p1}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpComparisonResult() - Dump image to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v7, :cond_0

    if-eqz v11, :cond_5

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Fail to dump image to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_2
    move-exception v9

    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v10

    move-object v11, v9

    :goto_4
    if-eqz v7, :cond_6

    if-eqz v11, :cond_7

    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_6
    :goto_5
    :try_start_7
    throw v10

    :catch_3
    move-exception v9

    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_5

    :cond_8
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "dumpComparisonResult() - No image to dump"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_9
    if-eqz p2, :cond_d

    :try_start_8
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5

    const/4 v11, 0x0

    :try_start_9
    invoke-virtual {v7, p2}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "dumpComparisonResult() - Dump feature to "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v7, :cond_1

    if-eqz v11, :cond_a

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_3

    :catch_4
    move-exception v9

    :try_start_b
    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v4

    sget-object v9, TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dumpComparisonResult() - Fail to dump feature to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    :cond_a
    :try_start_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    goto/16 :goto_3

    :catch_6
    move-exception v9

    :try_start_d
    throw v9
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v10

    move-object v11, v9

    :goto_6
    if-eqz v7, :cond_b

    if-eqz v11, :cond_c

    :try_start_e
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_7

    :cond_b
    :goto_7
    :try_start_f
    throw v10

    :catch_7
    move-exception v9

    invoke-virtual {v11, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_c
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto :goto_7

    :cond_d
    sget-object v9, TAG:Ljava/lang/String;

    const-string v10, "dumpComparisonResult() - No feature to dump"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_2
    move-exception v9

    move-object v10, v9

    goto :goto_6

    :catchall_3
    move-exception v9

    move-object v10, v9

    goto/16 :goto_4
.end method

.method private getFaceOrientation(I)Lcom/sensetime/faceapi/model/FaceOrientation;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

    :goto_0
    return-object v0

    :sswitch_0
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->UP:Lcom/sensetime/faceapi/model/FaceOrientation;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->LEFT:Lcom/sensetime/faceapi/model/FaceOrientation;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->DOWN:Lcom/sensetime/faceapi/model/FaceOrientation;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/sensetime/faceapi/model/FaceOrientation;->RIGHT:Lcom/sensetime/faceapi/model/FaceOrientation;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method

.method private getMaxFace([Lcom/sensetime/faceapi/model/FaceInfo;)Lcom/sensetime/faceapi/model/FaceInfo;
    .locals 4

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    array-length v2, p1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/4 v2, 0x0

    aget-object v0, p1, v2

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-eqz v0, :cond_4

    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, v0, Lcom/sensetime/faceapi/model/FaceInfo;->faceRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v2, v3, :cond_5

    :cond_4
    aget-object v0, p1, v1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isFacingFront(Lcom/sensetime/faceapi/model/FaceInfo;)Z
    .locals 2

    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->pitch:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p1, Lcom/sensetime/faceapi/model/FaceInfo;->yaw:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isHighQuality(F)Z
    .locals 1

    const v0, 0x40066666    # 2.1f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNormalBrightness([BIILcom/sensetime/faceapi/model/FaceInfo;)Z
    .locals 4

    sget-object v1, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    invoke-static {p1, v1, p2, p3, p4}, Lcom/sensetime/faceapi/utils/BrightnessUtil;->averageBrightness([BLcom/sensetime/faceapi/model/CvPixelFormat;IILcom/sensetime/faceapi/model/FaceInfo;)F

    move-result v0

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isNormalBrightness() - Face bright : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x3e2e147b    # 0.17f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    const v1, 0x3f547ae1    # 0.83f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private openFaceDetectCA()V
    .locals 2

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0}, Lcom/oneplus/facedetectca/FaceDetectCA;->isServiceConnected(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "openFaceDetectCA() - Open trust zone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/facedetectca/FaceDetectCA;->open()Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    move-result-object v0

    iput-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    if-nez v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "openFaceDetectCA() - Fail to open trust zone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private printCacheFolderHierarchy(Landroid/content/Context;)V
    .locals 13

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "printCacheFolderHierarchy() - Cache folder : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length v5, v1

    if-lez v5, :cond_3

    array-length v8, v1

    move v7, v6

    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v0, v1, v7

    sget-object v5, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "printCacheFolderHierarchy() - Dir : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    if-lez v5, :cond_1

    array-length v9, v4

    move v5, v6

    :goto_1
    if-ge v5, v9, :cond_1

    aget-object v3, v4, v5

    sget-object v10, TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "printCacheFolderHierarchy() - Sub file : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", dir : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "printCacheFolderHierarchy() - File : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v5, v7, 0x1

    move v7, v5

    goto/16 :goto_0

    :cond_2
    sget-object v5, TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "printCacheFolderHierarchy() - Cache folder does not exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private removeFeatureAndFrameCA()V
    .locals 2

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0}, Lcom/oneplus/facedetectca/FaceDetectCA;->isServiceConnected(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, openFaceDetectCA()V

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "removeFeatureAndFrameCA() - Remove feature and frame"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0}, Lcom/oneplus/facedetectca/FaceDetectCA;->removeFeatureAndFrame(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "removeFeatureAndFrameCA() - Fail to remove feature and frame from CA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private restoreFeature()Z
    .locals 14

    const/4 v13, 0x1

    const/16 v4, 0x1e0

    const/16 v3, 0x280

    const/4 v8, 0x0

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature() - Load face frame from TEE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x70800

    new-array v1, v0, [B

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0, v8, v1, v3, v4}, Lcom/oneplus/facedetectca/FaceDetectCA;->getFrame(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;I[BII)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature() - Failed to load face frame from TEE"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :cond_0
    :goto_0
    if-nez v1, :cond_2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature() - Cannot restore face"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    :goto_1
    return v0

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature() - Load face frame"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v8}, Lcom/oneplus/faceunlock/database/FaceDatabase;->loadFaceFrameSync(I)[B

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/faceunlock/camera/CameraDevice;->findSensorOrientation()I

    move-result v12

    const/4 v0, -0x1

    if-ne v12, v0, :cond_3

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature() - Cannot find sensor orientation"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v8

    goto :goto_1

    :cond_3
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoreFeature() - Use sensor orientation : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    invoke-direct {p0, v12}, getFaceOrientation(I)Lcom/sensetime/faceapi/model/FaceOrientation;

    move-result-object v6

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/faceapi/FaceDetect;->detect([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;)[Lcom/sensetime/faceapi/model/FaceInfo;

    move-result-object v11

    if-eqz v11, :cond_4

    array-length v0, v11

    if-nez v0, :cond_5

    :cond_4
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature() - Cannot extract face info"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v13

    goto :goto_1

    :cond_5
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "restoreFeature()"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    sget-object v2, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    aget-object v6, v11, v8

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/sensetime/faceapi/FaceVerify;->getFeature([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)[B

    move-result-object v7

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, removeFeatureAndFrameCA()V

    move-object v5, p0

    move v6, v8

    move-object v8, v1

    move v9, v3

    move v10, v4

    invoke-direct/range {v5 .. v10}, saveFeatureAndFrameCA(I[B[BII)V

    :goto_2
    move v0, v13

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    invoke-static {v8, v7, v0}, Lcom/oneplus/faceunlock/database/FaceDatabase;->saveFaceFeature(I[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_2
.end method

.method private saveFeatureAndFrameCA(I[B[BII)V
    .locals 6

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0}, Lcom/oneplus/facedetectca/FaceDetectCA;->isServiceConnected(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, openFaceDetectCA()V

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "saveFeatureAndFrameCA() - Save feature and frame to CA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oneplus/facedetectca/FaceDetectCA;->saveFeatureAndFrame(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;I[B[BII)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "saveFeatureAndFrameCA() - Fail to save feature and frame to CA"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setDetectArea(IIIFF)V
    .locals 20

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, p4, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x38d1b717    # 1.0E-4f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    const/high16 v17, 0x3f800000    # 1.0f

    sub-float v17, p5, v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->abs(F)F

    move-result v17

    const v18, 0x38d1b717    # 1.0E-4f

    cmpg-float v17, v17, v18

    if-gez v17, :cond_0

    :goto_0
    return-void

    :cond_0
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p4

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, p5

    move/from16 v0, v17

    float-to-int v15, v0

    sub-int v17, p1, v16

    div-int/lit8 v4, v17, 0x2

    sub-int v17, p2, v15

    div-int/lit8 v6, v17, 0x2

    sub-int v5, p1, v4

    sub-int v3, p2, v6

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v17

    invoke-direct {v0, v4, v6, v5, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3eb33333    # 0.35f

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3eb33333    # 0.35f

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v14, 0x2

    sub-int v12, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    div-int/lit8 v18, v11, 0x2

    sub-int v13, v17, v18

    new-instance v17, Landroid/graphics/Rect;

    add-int v18, v12, v14

    add-int v19, v13, v11

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v12, v13, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, m_MinFaceRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f19999a    # 0.6f

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const v18, 0x3f19999a    # 0.6f

    mul-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerX()I

    move-result v17

    div-int/lit8 v18, v10, 0x2

    sub-int v8, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->centerY()I

    move-result v17

    div-int/lit8 v18, v7, 0x2

    sub-int v9, v17, v18

    new-instance v17, Landroid/graphics/Rect;

    add-int v18, v8, v10

    add-int v19, v9, v7

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v8, v9, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, m_MaxFaceRect:Landroid/graphics/Rect;

    sget-object v17, TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "setDetectArea() - Detection area : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, m_DetectArea:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", minimum face rect : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, m_MinFaceRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", maximum face rect : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, m_MaxFaceRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private writeModelFile(Landroid/content/Context;ILjava/io/File;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    const/4 v6, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v7, 0x0

    invoke-direct {v3, p3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, 0x0

    const/16 v8, 0x1000

    :try_start_2
    new-array v0, v8, [B

    :goto_0
    const/4 v8, 0x0

    const/16 v10, 0x1000

    invoke-virtual {v4, v0, v8, v10}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v3, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v7

    move-object v8, v6

    :goto_1
    if-eqz v3, :cond_0

    if-eqz v8, :cond_6

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :goto_2
    :try_start_5
    throw v7
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v6

    :try_start_6
    throw v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v7

    move-object v9, v6

    :goto_3
    if-eqz v4, :cond_1

    if-eqz v9, :cond_8

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_1
    :goto_4
    :try_start_8
    throw v7
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "writeModelFile() - Error to write model file"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1}, printCacheFolderHierarchy(Landroid/content/Context;)V

    :goto_5
    return v5

    :cond_2
    if-eqz v3, :cond_3

    if-eqz v9, :cond_5

    :try_start_9
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_3
    :goto_6
    if-eqz v4, :cond_4

    if-eqz v9, :cond_7

    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_5

    :cond_4
    :goto_7
    const/4 v5, 0x1

    goto :goto_5

    :catch_3
    move-exception v8

    :try_start_b
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_2
    move-exception v6

    move-object v7, v6

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception v6

    invoke-virtual {v8, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catch_5
    move-exception v7

    :try_start_c
    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_6
    move-exception v6

    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_4

    :catchall_3
    move-exception v6

    move-object v7, v6

    move-object v8, v9

    goto :goto_1
.end method


# virtual methods
.method public isRecognizedAsSamePerson(D)Z
    .locals 3

    const-wide v0, 0x3fe999999999999aL    # 0.8

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCompareFeatures([B[B)D
    .locals 2

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v0, p1}, Lcom/oneplus/facedetectca/FaceDetectCA;->compareFeature(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;[B)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    sget-object v0, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v0, p1, p2}, Lcom/sensetime/faceapi/FaceVerify;->compareFeature([B[B)F

    move-result v0

    float-to-double v0, v0

    goto :goto_0
.end method

.method protected onDeepRelease()V
    .locals 4

    sget-object v0, m_ClearStaticResourcesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->postToFaceEngineHandler(Ljava/lang/Runnable;JZ)Z

    return-void
.end method

.method protected onDeleteFeature()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, removeFeatureAndFrameCA()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onExtractFeature([BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;)Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;
    .locals 18

    sget-object v2, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->IS_NOT_DETECTED:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    move-object/from16 v0, p6

    if-ne v0, v2, :cond_0

    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/16 v8, 0x3e8

    const/16 v9, 0x3e8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    :goto_0
    return-object v2

    :cond_0
    const/4 v8, 0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-direct/range {v2 .. v8}, detectFace([BIIIIZ)Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    move-result-object v13

    iget v2, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->resultCode:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, isLivenessEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sget-object v2, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    sget-object v4, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iget-object v8, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    iget-object v9, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/sensetime/faceapi/FaceHacker;->hacker([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/FaceInfo;)F

    move-result v14

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExtractFeature() - Hacker score : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", spent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x3f733333    # 0.95f

    cmpl-float v2, v14, v2

    if-lez v2, :cond_1

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onExtractFeature() - Face is hacker"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, m_ExtractionCounter:I

    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v9, 0x5

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, m_ExtractionCounter:I

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, m_ExtractionCounter:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, m_ExtractionCounter:I

    move-object/from16 v0, p0

    iget-object v2, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    iget-object v2, v2, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    iget v2, v2, Lcom/sensetime/faceapi/model/FaceInfo;->id:I

    iget-object v3, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    iget v3, v3, Lcom/sensetime/faceapi/model/FaceInfo;->id:I

    if-eq v2, v3, :cond_2

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onExtractFeature() - Face is changed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, m_ExtractionCounter:I

    move-object/from16 v0, p0

    iput-object v13, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    :goto_1
    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v9, 0x6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    goto/16 :goto_0

    :cond_2
    iget v2, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->quality:F

    move-object/from16 v0, p0

    iget-object v3, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    iget v3, v3, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->quality:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_3

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExtractFeature() - Change best extraction result, quality : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->quality:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", prev quality : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v5, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    iget v5, v5, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->quality:F

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v13, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    goto :goto_1

    :cond_3
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onExtractFeature() - Skip current feature"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onExtractFeature() - First extraction result"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iput-object v13, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    goto :goto_1

    :cond_5
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onExtractFeature() - Extract best face"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sget-object v2, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    sget-object v4, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    iget-object v8, v13, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    move-object/from16 v3, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p2

    invoke-virtual/range {v2 .. v8}, Lcom/sensetime/faceapi/FaceVerify;->getFeature([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)[B

    move-result-object v4

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onExtractFeature() - Get feature, spent "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v16

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " ms"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v3, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-direct/range {v2 .. v7}, saveFeatureAndFrameCA(I[B[BII)V

    :cond_6
    new-instance v5, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    move-object/from16 v0, p0

    iget-object v2, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    iget-object v7, v2, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->image:[B

    move-object/from16 v0, p0

    iget-object v2, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    iget v8, v2, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->width:I

    move-object/from16 v0, p0

    iget-object v2, v0, m_BestDetectResult:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    iget v9, v2, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->height:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object v10, v4

    invoke-direct/range {v5 .. v12}, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V

    move-object v2, v5

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method protected onExtractFeatureAndCompare([BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[B)Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;
    .locals 30

    sget-object v4, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->IS_NOT_DETECTED:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    move-object/from16 v0, p7

    if-ne v0, v4, :cond_0

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "onExtractFeatureAndCompare() - Hardware face not detected"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    const/16 v5, 0x3e8

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7, v8}, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V

    :goto_0
    return-object v4

    :cond_0
    const/4 v10, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v4 .. v10}, detectFace([BIIIIZ)Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;

    move-result-object v24

    move-object/from16 v0, v24

    iget v4, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->resultCode:I

    if-eqz v4, :cond_1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v24

    iget v9, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->resultCode:I

    const-wide/high16 v10, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v12, 0x7ff8000000000000L    # Double.NaN

    move-object/from16 v0, v24

    iget v14, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->resultCode:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v14}, dumpComparisonResult([B[BLcom/sensetime/faceapi/model/FaceOrientation;IDDI)V

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    move-object/from16 v0, v24

    iget v5, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->resultCode:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7, v8}, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    new-instance v12, Lcom/oneplus/faceunlock/utils/SimpleRef;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    new-instance v6, Ljava/lang/Object;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p0 .. p0}, isLivenessEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    sget-object v13, m_WorkerHandler:Landroid/os/Handler;

    new-instance v4, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$1;

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    invoke-direct/range {v4 .. v12}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$1;-><init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;Ljava/lang/Object;[BIILcom/sensetime/faceapi/model/FaceOrientation;Lcom/sensetime/faceapi/model/FaceInfo;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v13, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    sget-object v13, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    sget-object v15, Lcom/sensetime/faceapi/model/CvPixelFormat;->NV21:Lcom/sensetime/faceapi/model/CvPixelFormat;

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;->faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    move-object/from16 v19, v0

    move-object/from16 v14, p1

    move/from16 v16, p2

    move/from16 v17, p3

    move/from16 v18, p2

    invoke-virtual/range {v13 .. v19}, Lcom/sensetime/faceapi/FaceVerify;->getFeature([BLcom/sensetime/faceapi/model/CvPixelFormat;IIILcom/sensetime/faceapi/model/FaceInfo;)[B

    move-result-object v23

    if-nez v23, :cond_3

    sget-object v4, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v4}, Lcom/sensetime/faceapi/FaceVerify;->isHandleInitialized()Z

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "onExtractFeatureAndCompare() - Feature is empty, maybe need to re-prepare engine"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, m_NeedToPrepare:Z

    :cond_3
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onExtractFeatureAndCompare() - Get feature, spent "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " ms"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, p8

    invoke-virtual {v0, v1, v2}, onCompareFeatures([B[B)D

    move-result-wide v28

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onExtractFeatureAndCompare() - Verify score: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v28

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, isLivenessEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    monitor-enter v6

    :try_start_0
    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    if-nez v4, :cond_4

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    :goto_1
    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    invoke-virtual/range {p0 .. p0}, isLivenessEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v25

    const v4, 0x3f733333    # 0.95f

    cmpl-float v4, v25, v4

    if-lez v4, :cond_6

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onExtractFeatureAndCompare() - Hacker : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v28

    double-to-int v4, v4

    int-to-double v0, v4

    move-wide/from16 v20, v0

    const/16 v22, -0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p8

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v22}, dumpComparisonResult([B[BLcom/sensetime/faceapi/model/FaceOrientation;IDDI)V

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7, v8}, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :cond_6
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, isRecognizedAsSamePerson(D)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    const/4 v5, 0x0

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v28

    double-to-int v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7, v8}, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, isLivenessEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v12}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v0, v4

    move-wide/from16 v18, v0

    :goto_2
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v4, v4, v28

    double-to-int v4, v4

    int-to-double v0, v4

    move-wide/from16 v20, v0

    const/16 v22, -0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v15, p8

    move-object/from16 v16, v10

    invoke-direct/range {v13 .. v22}, dumpComparisonResult([B[BLcom/sensetime/faceapi/model/FaceOrientation;IDDI)V

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;

    const/4 v5, -0x1

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double v8, v8, v28

    double-to-int v7, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5, v7, v8}, Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V

    goto/16 :goto_0

    :cond_8
    const-wide/high16 v18, 0x7ff8000000000000L    # Double.NaN

    goto :goto_2

    :catch_0
    move-exception v4

    goto/16 :goto_1
.end method

.method protected onPrepare(Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;)Lcom/oneplus/faceunlock/utils/OperationResult;
    .locals 28

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->isUnlockDumpEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/sensetime/faceapi/FaceLibrary;->setDebug(Z)V

    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v20

    const/4 v7, 0x0

    :try_start_1
    new-instance v18, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v6, 0x0

    const/16 v4, 0x1000

    :try_start_2
    new-array v11, v4, [B

    :goto_0
    const/4 v4, 0x0

    const/16 v5, 0x1000

    move-object/from16 v0, v20

    invoke-virtual {v0, v11, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v14

    if-lez v14, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v4, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v5

    move-object v6, v4

    :goto_1
    if-eqz v18, :cond_1

    if-eqz v6, :cond_7

    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_2
    :try_start_5
    throw v5
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v4

    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v5

    move-object v6, v4

    :goto_3
    if-eqz v20, :cond_2

    if-eqz v6, :cond_9

    :try_start_7
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_2
    :goto_4
    :try_start_8
    throw v5
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v13

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "onPrepare() - Error to read license"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    :goto_5
    return-object v4

    :cond_3
    :try_start_9
    new-instance v4, Ljava/lang/String;

    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Lcom/sensetime/faceapi/LicenseHelper;->initLicense(Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v18, :cond_4

    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_4
    :goto_6
    if-eqz v20, :cond_5

    if-eqz v7, :cond_8

    :try_start_b
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5

    :cond_5
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v19

    new-instance v16, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "model"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v21, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "st_verify"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v15, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "st_liveness"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v15, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "st_align"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "st_detect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v17, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "st_ocular"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_c
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_a

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepare() - Error to create model folders : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p1}, printCacheFolderHierarchy(Landroid/content/Context;)V

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_5

    :catch_3
    move-exception v4

    :try_start_d
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_6

    :catchall_2
    move-exception v4

    move-object v5, v4

    move-object v6, v7

    goto/16 :goto_3

    :cond_6
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V

    goto/16 :goto_6

    :catch_4
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    :cond_7
    invoke-virtual/range {v18 .. v18}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_2

    :catch_5
    move-exception v4

    :try_start_e
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_7

    :cond_8
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    goto/16 :goto_7

    :catch_6
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_2

    goto/16 :goto_4

    :catch_7
    move-exception v13

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "onPrepare() - Error to create model files"

    invoke-static {v4, v5, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct/range {p0 .. p1}, printCacheFolderHierarchy(Landroid/content/Context;)V

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :cond_a
    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useSNPE()Z

    move-result v4

    if-eqz v4, :cond_c

    const v4, 0x7f070005

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v4, v2}, writeModelFile(Landroid/content/Context;ILjava/io/File;)Z

    move-result v4

    if-nez v4, :cond_b

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :cond_b
    const v4, 0x7f070003

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v15}, writeModelFile(Landroid/content/Context;ILjava/io/File;)Z

    move-result v4

    if-nez v4, :cond_c

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :cond_c
    const/high16 v4, 0x7f070000

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v10}, writeModelFile(Landroid/content/Context;ILjava/io/File;)Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :cond_d
    const v4, 0x7f070001

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v12}, writeModelFile(Landroid/content/Context;ILjava/io/File;)Z

    move-result v4

    if-nez v4, :cond_e

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :cond_e
    const v4, 0x7f070004

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v4, v2}, writeModelFile(Landroid/content/Context;ILjava/io/File;)Z

    move-result v4

    if-nez v4, :cond_f

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :cond_f
    sget-object v4, m_WorkerThread:Landroid/os/HandlerThread;

    if-nez v4, :cond_10

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "ST Worker Thread"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v4, m_WorkerThread:Landroid/os/HandlerThread;

    sget-object v4, m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v4, Landroid/os/Handler;

    sget-object v5, m_WorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v4, m_WorkerHandler:Landroid/os/Handler;

    :cond_10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sget-object v4, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    if-nez v4, :cond_11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v26

    new-instance v4, Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual/range {v21 .. v21}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sensetime/faceapi/FaceVerify;-><init>(Ljava/lang/String;)V

    sput-object v4, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepare() - Initial verify spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v26

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-object v4, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-nez v4, :cond_12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    new-instance v4, Lcom/sensetime/faceapi/FaceHacker;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/sensetime/faceapi/FaceHacker;-><init>(Ljava/lang/String;)V

    sput-object v4, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepare() - Initial hacker spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v24

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    sget-object v4, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    if-nez v4, :cond_13

    new-instance v4, Lcom/sensetime/faceapi/FaceDetect;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, DEFAULT_FACE_IMAGE_RESIZE:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v8, DEFAULT_FACE_KEY_POINT_COUNT:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sensetime/faceapi/FaceDetect;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    sput-object v4, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    :cond_13
    sget-object v4, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    if-nez v4, :cond_14

    new-instance v4, Lcom/sensetime/faceapi/FaceDetect;

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;->RESIZE_640W:Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;

    sget-object v8, DEFAULT_FACE_KEY_POINT_COUNT:Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/sensetime/faceapi/FaceDetect;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sensetime/faceapi/model/FaceConfig$FaceImageResize;Lcom/sensetime/faceapi/model/FaceConfig$FaceKeyPointCount;)V

    sput-object v4, m_FaceDetect640:Lcom/sensetime/faceapi/FaceDetect;

    :cond_14
    sget-object v4, m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    if-nez v4, :cond_15

    new-instance v4, Lcom/sensetime/faceapi/FaceOcular;

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/sensetime/faceapi/FaceOcular;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, m_FaceOcular:Lcom/sensetime/faceapi/FaceOcular;

    :cond_15
    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    if-nez v4, :cond_16

    new-instance v4, Lcom/sensetime/faceapi/filter/FilterGroup;

    invoke-direct {v4}, Lcom/sensetime/faceapi/filter/FilterGroup;-><init>()V

    sput-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_ANGLE_YAW:Lcom/sensetime/faceapi/filter/FilterType;

    const/high16 v7, -0x3e600000    # -20.0f

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_ANGLE_PITCH:Lcom/sensetime/faceapi/filter/FilterType;

    const/high16 v7, -0x3e380000    # -25.0f

    const/high16 v8, 0x41c80000    # 25.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_BRIGHTNESS:Lcom/sensetime/faceapi/filter/FilterType;

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3f5eb852    # 0.87f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_LOCATION:Lcom/sensetime/faceapi/filter/FilterType;

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_MOUTH:Lcom/sensetime/faceapi/filter/FilterType;

    const/4 v7, 0x0

    const v8, 0x3f333333    # 0.7f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_SHARPNESS:Lcom/sensetime/faceapi/filter/FilterType;

    const v7, 0x3f4ccccd    # 0.8f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_SIZE:Lcom/sensetime/faceapi/filter/FilterType;

    const v7, 0x3e4ccccd    # 0.2f

    const v8, 0x3f4ccccd    # 0.8f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    sget-object v4, m_FilterGroup:Lcom/sensetime/faceapi/filter/FilterGroup;

    new-instance v5, Lcom/sensetime/faceapi/filter/BaseFilter;

    sget-object v6, Lcom/sensetime/faceapi/filter/FilterType;->QUALITY_TYPE_OCCLUSION:Lcom/sensetime/faceapi/filter/FilterType;

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    invoke-direct {v5, v6, v7, v8}, Lcom/sensetime/faceapi/filter/BaseFilter;-><init>(Lcom/sensetime/faceapi/filter/FilterType;FF)V

    invoke-virtual {v4, v5}, Lcom/sensetime/faceapi/filter/FilterGroup;->addFilter(Lcom/sensetime/faceapi/filter/BaseFilter;)V

    :cond_16
    sget-object v4, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    move-object/from16 v0, p0

    iput-object v4, v0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPrepare() - Initial engine done, spent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v6, v6, v22

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget v5, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->frameWidth:I

    move-object/from16 v0, p2

    iget v6, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->frameHeight:I

    const/16 v7, 0x5a

    move-object/from16 v0, p2

    iget v8, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->frameValidAreaRatioX:F

    move-object/from16 v0, p2

    iget v9, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->frameValidAreaRatioY:F

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, setDetectArea(IIIFF)V

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->isLiveness:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setLivenessEnabled(Z)V

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->isStrictMode:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, setStrictModeEnabled(Z)V

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;->useFaceCompare:Z

    move-object/from16 v0, p0

    iput-boolean v4, v0, m_UseFaceCompare:Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, m_PrepareInfo:Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-direct/range {p0 .. p0}, openFaceDetectCA()V

    :cond_17
    sget-object v4, m_ClearStaticResourcesRunnable:Ljava/lang/Runnable;

    invoke-static {v4}, removeFromFaceEngineHandler(Ljava/lang/Runnable;)V

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    goto/16 :goto_5

    :catchall_3
    move-exception v4

    move-object v5, v4

    goto/16 :goto_1
.end method

.method protected onRelease(I)V
    .locals 4

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRelease() - Flags : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    sget-object v0, m_ClearStaticResourcesRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    const/4 v1, 0x1

    invoke-static {v0, v2, v3, v1}, Lcom/oneplus/faceunlock/engine/FaceEngine;->postToFaceEngineHandler(Ljava/lang/Runnable;JZ)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, m_PrepareInfo:Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, closeFaceDetectCA()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 6

    iget-boolean v3, p0, m_NeedToPrepare:Z

    if-eqz v3, :cond_0

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onStart() - Re-prepare face engine"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-virtual {v3}, Lcom/sensetime/faceapi/FaceVerify;->release()V

    const/4 v3, 0x0

    sput-object v3, m_FaceVerify:Lcom/sensetime/faceapi/FaceVerify;

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v3

    iget-object v4, p0, m_PrepareInfo:Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

    invoke-virtual {p0, v3, v4}, onPrepare(Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;)Lcom/oneplus/faceunlock/utils/OperationResult;

    const/4 v3, 0x0

    iput-boolean v3, p0, m_NeedToPrepare:Z

    :cond_0
    const-string v3, "StFaceEngineVersion"

    invoke-static {v3}, Lcom/oneplus/faceunlock/utils/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "2.6.75"

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart() - Face engine version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_1
    const/4 v2, 0x1

    const-string v3, "IsFaceFeatureSaved"

    invoke-static {v3}, Lcom/oneplus/faceunlock/utils/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart() - Restore feature with new version : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, restoreFeature()Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    const-string v3, "StFaceEngineVersion"

    invoke-static {v3, v0}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-boolean v3, p0, m_UseFaceCompare:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    if-eqz v3, :cond_4

    iget-object v3, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v3}, Lcom/oneplus/facedetectca/FaceDetectCA;->isServiceConnected(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    invoke-direct {p0}, openFaceDetectCA()V

    :cond_5
    iget-object v3, p0, m_BinderInfo:Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;

    invoke-static {v3}, Lcom/oneplus/facedetectca/FaceDetectCA;->beginFaceCompare(Lcom/oneplus/facedetectca/FaceDetectCA$BinderInfo;)Z

    move-result v3

    if-nez v3, :cond_6

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "onStart() - Fail to begin face compare"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v3, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    if-eqz v3, :cond_7

    sget-object v3, m_FaceHacker:Lcom/sensetime/faceapi/FaceHacker;

    invoke-virtual {v3}, Lcom/sensetime/faceapi/FaceHacker;->reset()V

    :cond_7
    sget-object v3, m_FaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    iput-object v3, p0, m_CurrentFaceDetect:Lcom/sensetime/faceapi/FaceDetect;

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, m_UseFaceCompare:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/facedetectca/FaceDetectCA;->endFaceCompare()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onStop() - Fail to end face compare"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, closeFaceDetectCA()V

    :cond_1
    return-void
.end method
