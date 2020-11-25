.class public abstract Lcom/oneplus/faceunlock/engine/FaceEngine;
.super Ljava/lang/Object;
.source "FaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;,
        Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;,
        Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;,
        Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;,
        Lcom/oneplus/faceunlock/engine/FaceEngine$State;,
        Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;
    }
.end annotation


# static fields
.field private static final DEFAULT_FACE_ENGINE_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/faceunlock/engine/FaceEngine;",
            ">;"
        }
    .end annotation
.end field

.field protected static final DEFAULT_FRAME_HEIGHT:I = 0x1e0

.field private static final DEFAULT_FRAME_SIZE_RATIO:D = 1.333

.field protected static final DEFAULT_FRAME_WIDTH:I = 0x280

.field public static final ERROR_CODE_TIMEOUT:I = -0x1

.field public static final EXTRACT_RESULT_FACE_ANGLE_ILLEGAL:I = 0xd

.field public static final EXTRACT_RESULT_FACE_BRIGHTNESS_ILLEGAL:I = 0xb

.field public static final EXTRACT_RESULT_FACE_CLOSE_EYE:I = 0xe

.field public static final EXTRACT_RESULT_FACE_KEEP:I = 0x6

.field public static final EXTRACT_RESULT_FACE_NOT_FOUND:I = 0x2

.field public static final EXTRACT_RESULT_FACE_OFFSET_TOO_MUCH:I = 0x5

.field public static final EXTRACT_RESULT_FACE_OUT_FRAME:I = 0xa

.field public static final EXTRACT_RESULT_FACE_QUALITY_ILLEGAL:I = 0xc

.field public static final EXTRACT_RESULT_FACE_TOO_LARGE:I = 0x3

.field public static final EXTRACT_RESULT_FACE_TOO_SMALL:I = 0x4

.field public static final EXTRACT_RESULT_FAIL:I = 0x1

.field public static final EXTRACT_RESULT_HARDWARE_FACE_NOT_FOUND:I = 0x3e8

.field public static final EXTRACT_RESULT_SUCCESS:I = 0x0

.field public static final FLAG_DEEP_RELEASE:I = 0x1

.field public static final RESULT_CAMERA_ERROR:I = 0x3

.field public static final RESULT_FAIL:I = 0x1

.field public static final RESULT_NOT_FOUND:I = 0x2

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_PERMISSION_INSUFFICIENT:I = 0x4

.field private static m_FaceEngineHandler:Landroid/os/Handler;

.field private static m_FaceEngineThread:Landroid/os/HandlerThread;

.field private static m_FaceEngineType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/faceunlock/engine/FaceEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static m_IsPreInitialized:Z


# instance fields
.field private m_Handler:Landroid/os/Handler;

.field private m_IsLivenessEnabled:Z

.field private m_IsPendingStart:Z

.field private m_IsPendingStop:Z

.field private m_IsStrictModeEnabled:Z

.field private volatile m_StartState:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

.field private volatile m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

.field private m_Tag:Ljava/lang/String;

.field private m_TempFrameBuffer:[B

.field private m_ThreadMonitorHandle:Lcom/oneplus/faceunlock/utils/Handle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    sput-object v0, DEFAULT_FACE_ENGINE_TYPE:Ljava/lang/Class;

    sget-object v0, DEFAULT_FACE_ENGINE_TYPE:Ljava/lang/Class;

    sput-object v0, m_FaceEngineType:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->STOPPED:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    iput-object v0, p0, m_StartState:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->NEW:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    iput-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    iput-object p1, p0, m_Tag:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, m_Handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, m_Tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII)[B
    .locals 1

    invoke-direct {p0, p1, p2, p3}, scaleNV21Frame([BII)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/engine/FaceEngine;)Lcom/oneplus/faceunlock/utils/Handle;
    .locals 1

    iget-object v0, p0, m_ThreadMonitorHandle:Lcom/oneplus/faceunlock/utils/Handle;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;
    .locals 0

    iput-object p1, p0, m_ThreadMonitorHandle:Lcom/oneplus/faceunlock/utils/Handle;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V
    .locals 0

    invoke-direct {p0, p1}, changeState(Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/faceunlock/engine/FaceEngine;)Z
    .locals 1

    iget-boolean v0, p0, m_IsPendingStart:Z

    return v0
.end method

.method static synthetic access$502(Lcom/oneplus/faceunlock/engine/FaceEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsPendingStart:Z

    return p1
.end method

.method static synthetic access$602(Lcom/oneplus/faceunlock/engine/FaceEngine;[B)[B
    .locals 0

    iput-object p1, p0, m_TempFrameBuffer:[B

    return-object p1
.end method

.method static synthetic access$700(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;)V
    .locals 0

    invoke-direct {p0, p1}, changeStartState(Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/engine/FaceEngine;)Z
    .locals 1

    iget-boolean v0, p0, m_IsPendingStop:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/faceunlock/engine/FaceEngine;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsPendingStop:Z

    return p1
.end method

.method private changeStartState(Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;)V
    .locals 3

    iget-object v0, p0, m_StartState:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeStartState() - State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, m_StartState:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    goto :goto_0
.end method

.method private changeState(Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V
    .locals 3

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_Tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() - old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    goto :goto_0
.end method

.method public static createDefaultFaceEngine()Lcom/oneplus/faceunlock/engine/FaceEngine;
    .locals 4

    sget-object v1, m_FaceEngineType:Ljava/lang/Class;

    const-class v2, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, m_FaceEngineType:Ljava/lang/Class;

    const-class v2, Lcom/oneplus/faceunlock/engine/EmulatedFaceEngine;

    if-ne v1, v2, :cond_1

    new-instance v0, Lcom/oneplus/faceunlock/engine/EmulatedFaceEngine;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/engine/EmulatedFaceEngine;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid face engine type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, m_FaceEngineType:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getFaceEngineType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/faceunlock/engine/FaceEngine;",
            ">;"
        }
    .end annotation

    sget-object v0, m_FaceEngineType:Ljava/lang/Class;

    return-object v0
.end method

.method protected static postToFaceEngineHandler(Ljava/lang/Runnable;JZ)Z
    .locals 1

    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-eqz p3, :cond_1

    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    goto :goto_0
.end method

.method public static preInitialize(Landroid/content/Context;)V
    .locals 11

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    sget-boolean v3, m_IsPreInitialized:Z

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    sput-boolean v6, m_IsPreInitialized:Z

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030028

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f030027

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

    const/16 v3, 0x5a

    const/4 v7, 0x0

    move v5, v4

    move v8, v6

    move v9, v6

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;-><init>(IIIFFZZZZ)V

    invoke-static {}, createDefaultFaceEngine()Lcom/oneplus/faceunlock/engine/FaceEngine;

    move-result-object v10

    const/4 v3, 0x0

    new-instance v4, Lcom/oneplus/faceunlock/engine/FaceEngine$5;

    invoke-direct {v4, v10}, Lcom/oneplus/faceunlock/engine/FaceEngine$5;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;)V

    invoke-virtual {v10, v3, p0, v0, v4}, prepare(Lcom/oneplus/faceunlock/utils/Token;Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0
.end method

.method protected static removeFromFaceEngineHandler(Ljava/lang/Runnable;)V
    .locals 1

    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private scaleNV21Frame([BII)[B
    .locals 8

    const/16 v4, 0x280

    const/16 v5, 0x1e0

    move-object v7, p1

    if-ne p2, v4, :cond_0

    if-eq p3, v5, :cond_3

    :cond_0
    const v6, 0x70800

    iget-object v0, p0, m_TempFrameBuffer:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, m_TempFrameBuffer:[B

    array-length v0, v0

    if-eq v0, v6, :cond_2

    :cond_1
    new-array v0, v6, [B

    iput-object v0, p0, m_TempFrameBuffer:[B

    :cond_2
    iget-object v3, p0, m_TempFrameBuffer:[B

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/faceunlock/utils/Utils;->scaleNV21Image([BII[BII)Z

    iget-object v7, p0, m_TempFrameBuffer:[B

    :cond_3
    return-object v7
.end method

.method public static setFaceEngineType(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/oneplus/faceunlock/engine/FaceEngine;",
            ">;)V"
        }
    .end annotation

    sput-object p0, m_FaceEngineType:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public compareFeatures(Lcom/oneplus/faceunlock/utils/Token;[B[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "[B[B",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, isReady()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {p4, p1, v1}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/engine/FaceEngine$1;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/oneplus/faceunlock/engine/FaceEngine$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[B[BLcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public deepRelease()V
    .locals 0

    invoke-virtual {p0}, onDeepRelease()V

    return-void
.end method

.method public deleteFeature(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, isReady()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/engine/FaceEngine$2;

    invoke-direct {v1, p0, p2, p1}, Lcom/oneplus/faceunlock/engine/FaceEngine$2;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public extractFeature(Lcom/oneplus/faceunlock/utils/Token;[BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "[BIIII",
            "Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;",
            ">;)Z"
        }
    .end annotation

    if-nez p8, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    if-nez p2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, p1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, isReady()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p8

    invoke-interface {v0, p1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    move/from16 v0, p3

    int-to-double v2, v0

    move/from16 v0, p4

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3ff553f7ced91687L    # 1.333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_3

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Only support 4:3 frame"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    sget-object v12, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$3;

    move-object v3, p0

    move-object v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object v11, p1

    invoke-direct/range {v2 .. v11}, Lcom/oneplus/faceunlock/engine/FaceEngine$3;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v12, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public extractFeatureAndCompare(Lcom/oneplus/faceunlock/utils/Token;[BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "[BIIIII",
            "Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;",
            "[B",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;",
            ">;)Z"
        }
    .end annotation

    if-nez p10, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    invoke-virtual {p0}, isReady()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    move-object/from16 v0, p10

    move-object/from16 v1, p1

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move/from16 v0, p3

    int-to-double v2, v0

    move/from16 v0, p4

    int-to-double v4, v0

    div-double/2addr v2, v4

    const-wide v4, 0x3ff553f7ced91687L    # 1.333

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Only support 4:3 frame"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    sget-object v14, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/engine/FaceEngine$4;

    move-object v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p1

    invoke-direct/range {v2 .. v13}, Lcom/oneplus/faceunlock/engine/FaceEngine$4;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[BLcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v14, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    goto :goto_0
.end method

.method protected getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method protected final getState()Lcom/oneplus/faceunlock/engine/FaceEngine$State;
    .locals 1

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    return-object v0
.end method

.method public isLivenessEnabled()Z
    .locals 1

    iget-boolean v0, p0, m_IsLivenessEnabled:Z

    return v0
.end method

.method protected isNv21Format(I)Z
    .locals 1

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->PREPARING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->READY:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isRecognizedAsSamePerson(D)Z
.end method

.method public isRelease()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->RELEASED:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->RELEASING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStrictModeEnabled()Z
    .locals 1

    iget-boolean v0, p0, m_IsStrictModeEnabled:Z

    return v0
.end method

.method protected abstract onCompareFeatures([B[B)D
.end method

.method protected abstract onDeepRelease()V
.end method

.method protected abstract onDeleteFeature()Z
.end method

.method protected abstract onExtractFeature([BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;)Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;
.end method

.method protected abstract onExtractFeatureAndCompare([BIIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;[B)Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;
.end method

.method protected abstract onPrepare(Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;)Lcom/oneplus/faceunlock/utils/OperationResult;
.end method

.method protected abstract onRelease(I)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method public final prepare(Lcom/oneplus/faceunlock/utils/Token;Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "Landroid/content/Context;",
            "Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_1

    if-eqz p4, :cond_0

    sget-object v1, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p4, p1, v1}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/oneplus/faceunlock/engine/FaceEngine$10;->$SwitchMap$com$oneplus$faceunlock$engine$FaceEngine$State:[I

    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->PREPARING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V

    sget-object v0, m_FaceEngineThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_2

    iget-object v0, p0, m_Tag:Ljava/lang/String;

    const-string v1, "prepare() - Start face engine thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Face Engine Thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, m_FaceEngineThread:Landroid/os/HandlerThread;

    sget-object v0, m_FaceEngineThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, m_FaceEngineThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    :cond_2
    sget-object v6, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$6;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/faceunlock/engine/FaceEngine$6;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;Lcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_1
    if-eqz p4, :cond_0

    sget-object v1, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p4, p1, v1}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public release(Lcom/oneplus/faceunlock/utils/Token;ILcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/Token;",
            "I",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$10;->$SwitchMap$com$oneplus$faceunlock$engine$FaceEngine$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->RELEASING:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V

    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/engine/FaceEngine$7;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/oneplus/faceunlock/engine/FaceEngine$7;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;ILcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$State;->RELEASED:Lcom/oneplus/faceunlock/engine/FaceEngine$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/engine/FaceEngine$State;)V

    :pswitch_2
    if-eqz p3, :cond_0

    sget-object v0, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-interface {p3, p1, v0}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setLivenessEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, m_IsLivenessEnabled:Z

    return-void
.end method

.method public setStrictModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, m_IsStrictModeEnabled:Z

    return-void
.end method

.method public start()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v3, p0, m_IsPendingStart:Z

    iput-boolean v2, p0, m_IsPendingStop:Z

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$10;->$SwitchMap$com$oneplus$faceunlock$engine$FaceEngine$StartState:[I

    iget-object v1, p0, m_StartState:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->STARTING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-direct {p0, v0}, changeStartState(Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;)V

    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/engine/FaceEngine$8;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/engine/FaceEngine$8;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, m_IsPendingStart:Z

    iput-boolean v2, p0, m_IsPendingStop:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, isReady()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, m_IsPendingStart:Z

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$10;->$SwitchMap$com$oneplus$faceunlock$engine$FaceEngine$StartState:[I

    iget-object v1, p0, m_StartState:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    sget-object v0, Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;->STOPPING:Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;

    invoke-direct {p0, v0}, changeStartState(Lcom/oneplus/faceunlock/engine/FaceEngine$StartState;)V

    sget-object v0, m_FaceEngineHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/engine/FaceEngine$9;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/engine/FaceEngine$9;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x1

    iput-boolean v0, p0, m_IsPendingStop:Z

    iput-boolean v2, p0, m_IsPendingStart:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
