.class public Lcom/oneplus/faceunlock/FaceExtractionFragment;
.super Landroid/app/Fragment;
.source "FaceExtractionFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;,
        Lcom/oneplus/faceunlock/FaceExtractionFragment$State;,
        Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;,
        Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;
    }
.end annotation


# static fields
.field private static final ANIMATION_HIDE_HINT_TEXT:J = 0x1f4L

.field private static final DEBUG_FRAME_FILE_TEMPLATE:Ljava/lang/String; = "frame_register_%s_%s_%03d_%d_%d_%d"

.field private static final DEBUG_ROOT_PATH:Ljava/lang/String; = "/sdcard/FaceUnlockDebug"

.field private static final DELAY_SHOW_TEXTURE_VIEW:J = 0xc8L

.field private static final DURATION_ANIMATE_FACE_FEATURE:J = 0x21L

.field private static final DURATION_NO_FACE_TO_SHOW_HINT:J = 0x3e8L

.field private static final DURATION_SELECT_NEXT_FACE_KEY_POINT:J = 0x78L

.field private static final DURATION_SELECT_NEXT_FACE_KEY_POINT_EDGE:J = 0x42L

.field private static final DURATION_SLICE_ANIMATION:J = 0x5dcL

.field private static final EXTRACTION_ANIMATION_TIME:J = 0x3e8L

.field private static final EXTRACTION_STEP_MAX:I = 0x5

.field private static final FACE_EDGES_INDICES:[[I

.field private static final FACE_KEY_POINTS_INDICES:[I

.field private static final FACE_KEY_POINT_ANIMATION_STAGE_COUNT:I = 0x5

.field private static final FACE_KEY_POINT_EDGE_ANIMATION_STAGE_COUNT:I = 0x5

.field private static final FACE_KEY_POINT_EDGE_END_POINT_INDICES:[[I

.field private static final MSG_SHOW_HINT_TEXT:I = 0x2715

.field private static final MSG_TIMEOUT_PREPARING_CAMERA:I = 0x2712

.field private static final MSG_TIMEOUT_PREPARING_ENGINE:I = 0x2711

.field private static final PROGRESS_BAR_MAX:I = 0x3e8

.field private static final PROGRESS_PER_STEP:I = 0xc8

.field private static final SLICE_ANIMATION_TRANSLATION_DST:I = 0xdc

.field private static final SLICE_ANIMATION_TRANSLATION_SRC:I = -0x32

.field static final TAG:Ljava/lang/String;

.field private static final TIMEOUT_EXTRACTION:J = 0x4e20L

.field private static final TIMEOUT_EXTRACTION_DELAY:J = 0x3b6L

.field private static final TIMEOUT_PREPARING:J = 0x4e20L


# instance fields
.field private final m_AnimateFaceFeatureDrawingRunnable:Ljava/lang/Runnable;

.field private m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

.field private m_CameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

.field private m_CameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

.field private m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

.field private final m_CoordConversionTempArray:[F

.field private final m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

.field private m_CoverImage:Landroid/widget/ImageView;

.field private m_CurrentHintText:I

.field private m_ExtractionDelayStartTimeMillis:J

.field private m_ExtractionStartTimeMillis:J

.field private m_ExtractionStep:I

.field private m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field private final m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

.field private final m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

.field private m_FaceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

.field private m_FaceKeyPointsDrawable:Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

.field private m_FaceKeyPointsView:Landroid/view/View;

.field private m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

.field private m_Handler:Landroid/os/Handler;

.field private m_HintTextView:Landroid/widget/TextView;

.field private m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

.field private m_IsAnimateFaceFeatureDrawingScheduled:Z

.field private m_IsCompleted:Z

.field private m_IsPaused:Z

.field private m_IsSelectNextFaceKeyPointEdgeScheduled:Z

.field private m_IsSelectNextFaceKeyPointScheduled:Z

.field private m_LastFeatureExtractionResult:I

.field private m_PreparationTimeout:Z

.field private m_ProgressBar:Landroid/widget/ProgressBar;

.field private m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

.field private m_RaiseCameraButton:Lcom/oneplus/faceunlock/widget/AccentColorButton;

.field private m_RawFaceKeyPoints:[F

.field private m_RegisterFrameCount:I

.field private m_RegisterToken:Lcom/oneplus/faceunlock/utils/Token;

.field private m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

.field private m_ScrollViewContainer:Landroid/view/View;

.field private final m_SelectNextFaceKeyPointEdgeRunnable:Ljava/lang/Runnable;

.field private final m_SelectNextFaceKeyPointRunnable:Ljava/lang/Runnable;

.field private final m_SelectedFaceKeyPointEdges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m_SelectedFaceKeyPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final m_SetTextureViewVisibleRunnable:Ljava/lang/Runnable;

.field private m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

.field private m_SliceAnimationView:Landroid/view/View;

.field private m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

.field private m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

.field private m_SurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private m_SurfaceTextureSize:Landroid/util/Size;

.field private m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

.field private final m_UnselectedFaceKeyPointEdgeIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final m_UnselectedFaceKeyPointIndices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v11, 0x1d

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x2

    const-class v5, Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    sput-object v5, TAG:Ljava/lang/String;

    new-array v5, v11, [I

    fill-array-data v5, :array_0

    sput-object v5, FACE_KEY_POINTS_INDICES:[I

    const/16 v5, 0x3c

    new-array v5, v5, [[I

    new-array v6, v8, [I

    fill-array-data v6, :array_1

    aput-object v6, v5, v9

    new-array v6, v8, [I

    fill-array-data v6, :array_2

    aput-object v6, v5, v10

    new-array v6, v8, [I

    fill-array-data v6, :array_3

    aput-object v6, v5, v8

    const/4 v6, 0x3

    new-array v7, v8, [I

    fill-array-data v7, :array_4

    aput-object v7, v5, v6

    const/4 v6, 0x4

    new-array v7, v8, [I

    fill-array-data v7, :array_5

    aput-object v7, v5, v6

    const/4 v6, 0x5

    new-array v7, v8, [I

    fill-array-data v7, :array_6

    aput-object v7, v5, v6

    const/4 v6, 0x6

    new-array v7, v8, [I

    fill-array-data v7, :array_7

    aput-object v7, v5, v6

    const/4 v6, 0x7

    new-array v7, v8, [I

    fill-array-data v7, :array_8

    aput-object v7, v5, v6

    const/16 v6, 0x8

    new-array v7, v8, [I

    fill-array-data v7, :array_9

    aput-object v7, v5, v6

    const/16 v6, 0x9

    new-array v7, v8, [I

    fill-array-data v7, :array_a

    aput-object v7, v5, v6

    const/16 v6, 0xa

    new-array v7, v8, [I

    fill-array-data v7, :array_b

    aput-object v7, v5, v6

    const/16 v6, 0xb

    new-array v7, v8, [I

    fill-array-data v7, :array_c

    aput-object v7, v5, v6

    const/16 v6, 0xc

    new-array v7, v8, [I

    fill-array-data v7, :array_d

    aput-object v7, v5, v6

    const/16 v6, 0xd

    new-array v7, v8, [I

    fill-array-data v7, :array_e

    aput-object v7, v5, v6

    const/16 v6, 0xe

    new-array v7, v8, [I

    fill-array-data v7, :array_f

    aput-object v7, v5, v6

    const/16 v6, 0xf

    new-array v7, v8, [I

    fill-array-data v7, :array_10

    aput-object v7, v5, v6

    const/16 v6, 0x10

    new-array v7, v8, [I

    fill-array-data v7, :array_11

    aput-object v7, v5, v6

    const/16 v6, 0x11

    new-array v7, v8, [I

    fill-array-data v7, :array_12

    aput-object v7, v5, v6

    const/16 v6, 0x12

    new-array v7, v8, [I

    fill-array-data v7, :array_13

    aput-object v7, v5, v6

    const/16 v6, 0x13

    new-array v7, v8, [I

    fill-array-data v7, :array_14

    aput-object v7, v5, v6

    const/16 v6, 0x14

    new-array v7, v8, [I

    fill-array-data v7, :array_15

    aput-object v7, v5, v6

    const/16 v6, 0x15

    new-array v7, v8, [I

    fill-array-data v7, :array_16

    aput-object v7, v5, v6

    const/16 v6, 0x16

    new-array v7, v8, [I

    fill-array-data v7, :array_17

    aput-object v7, v5, v6

    const/16 v6, 0x17

    new-array v7, v8, [I

    fill-array-data v7, :array_18

    aput-object v7, v5, v6

    const/16 v6, 0x18

    new-array v7, v8, [I

    fill-array-data v7, :array_19

    aput-object v7, v5, v6

    const/16 v6, 0x19

    new-array v7, v8, [I

    fill-array-data v7, :array_1a

    aput-object v7, v5, v6

    const/16 v6, 0x1a

    new-array v7, v8, [I

    fill-array-data v7, :array_1b

    aput-object v7, v5, v6

    const/16 v6, 0x1b

    new-array v7, v8, [I

    fill-array-data v7, :array_1c

    aput-object v7, v5, v6

    const/16 v6, 0x1c

    new-array v7, v8, [I

    fill-array-data v7, :array_1d

    aput-object v7, v5, v6

    new-array v6, v8, [I

    fill-array-data v6, :array_1e

    aput-object v6, v5, v11

    const/16 v6, 0x1e

    new-array v7, v8, [I

    fill-array-data v7, :array_1f

    aput-object v7, v5, v6

    const/16 v6, 0x1f

    new-array v7, v8, [I

    fill-array-data v7, :array_20

    aput-object v7, v5, v6

    const/16 v6, 0x20

    new-array v7, v8, [I

    fill-array-data v7, :array_21

    aput-object v7, v5, v6

    const/16 v6, 0x21

    new-array v7, v8, [I

    fill-array-data v7, :array_22

    aput-object v7, v5, v6

    const/16 v6, 0x22

    new-array v7, v8, [I

    fill-array-data v7, :array_23

    aput-object v7, v5, v6

    const/16 v6, 0x23

    new-array v7, v8, [I

    fill-array-data v7, :array_24

    aput-object v7, v5, v6

    const/16 v6, 0x24

    new-array v7, v8, [I

    fill-array-data v7, :array_25

    aput-object v7, v5, v6

    const/16 v6, 0x25

    new-array v7, v8, [I

    fill-array-data v7, :array_26

    aput-object v7, v5, v6

    const/16 v6, 0x26

    new-array v7, v8, [I

    fill-array-data v7, :array_27

    aput-object v7, v5, v6

    const/16 v6, 0x27

    new-array v7, v8, [I

    fill-array-data v7, :array_28

    aput-object v7, v5, v6

    const/16 v6, 0x28

    new-array v7, v8, [I

    fill-array-data v7, :array_29

    aput-object v7, v5, v6

    const/16 v6, 0x29

    new-array v7, v8, [I

    fill-array-data v7, :array_2a

    aput-object v7, v5, v6

    const/16 v6, 0x2a

    new-array v7, v8, [I

    fill-array-data v7, :array_2b

    aput-object v7, v5, v6

    const/16 v6, 0x2b

    new-array v7, v8, [I

    fill-array-data v7, :array_2c

    aput-object v7, v5, v6

    const/16 v6, 0x2c

    new-array v7, v8, [I

    fill-array-data v7, :array_2d

    aput-object v7, v5, v6

    const/16 v6, 0x2d

    new-array v7, v8, [I

    fill-array-data v7, :array_2e

    aput-object v7, v5, v6

    const/16 v6, 0x2e

    new-array v7, v8, [I

    fill-array-data v7, :array_2f

    aput-object v7, v5, v6

    const/16 v6, 0x2f

    new-array v7, v8, [I

    fill-array-data v7, :array_30

    aput-object v7, v5, v6

    const/16 v6, 0x30

    new-array v7, v8, [I

    fill-array-data v7, :array_31

    aput-object v7, v5, v6

    const/16 v6, 0x31

    new-array v7, v8, [I

    fill-array-data v7, :array_32

    aput-object v7, v5, v6

    const/16 v6, 0x32

    new-array v7, v8, [I

    fill-array-data v7, :array_33

    aput-object v7, v5, v6

    const/16 v6, 0x33

    new-array v7, v8, [I

    fill-array-data v7, :array_34

    aput-object v7, v5, v6

    const/16 v6, 0x34

    new-array v7, v8, [I

    fill-array-data v7, :array_35

    aput-object v7, v5, v6

    const/16 v6, 0x35

    new-array v7, v8, [I

    fill-array-data v7, :array_36

    aput-object v7, v5, v6

    const/16 v6, 0x36

    new-array v7, v8, [I

    fill-array-data v7, :array_37

    aput-object v7, v5, v6

    const/16 v6, 0x37

    new-array v7, v8, [I

    fill-array-data v7, :array_38

    aput-object v7, v5, v6

    const/16 v6, 0x38

    new-array v7, v8, [I

    fill-array-data v7, :array_39

    aput-object v7, v5, v6

    const/16 v6, 0x39

    new-array v7, v8, [I

    fill-array-data v7, :array_3a

    aput-object v7, v5, v6

    const/16 v6, 0x3a

    new-array v7, v8, [I

    fill-array-data v7, :array_3b

    aput-object v7, v5, v6

    const/16 v6, 0x3b

    new-array v7, v8, [I

    fill-array-data v7, :array_3c

    aput-object v7, v5, v6

    sput-object v5, FACE_EDGES_INDICES:[[I

    sget-object v5, FACE_EDGES_INDICES:[[I

    array-length v5, v5

    new-array v5, v5, [[I

    sput-object v5, FACE_KEY_POINT_EDGE_END_POINT_INDICES:[[I

    sget-object v5, FACE_KEY_POINT_EDGE_END_POINT_INDICES:[[I

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_3

    sget-object v5, FACE_EDGES_INDICES:[[I

    aget-object v3, v5, v1

    aget v4, v3, v9

    aget v0, v3, v10

    sget-object v5, FACE_KEY_POINTS_INDICES:[I

    array-length v5, v5

    add-int/lit8 v2, v5, -0x1

    :goto_1
    if-ltz v2, :cond_2

    sget-object v5, FACE_KEY_POINTS_INDICES:[I

    aget v5, v5, v2

    if-ne v5, v4, :cond_1

    move v4, v2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    sget-object v5, FACE_KEY_POINTS_INDICES:[I

    aget v5, v5, v2

    if-ne v5, v0, :cond_0

    move v0, v2

    goto :goto_2

    :cond_2
    sget-object v5, FACE_KEY_POINT_EDGE_END_POINT_INDICES:[[I

    new-array v6, v8, [I

    aput v4, v6, v9

    aput v0, v6, v10

    aput-object v6, v5, v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x2a
        0x28
        0x44
        0x43
        0x23
        0x21
        0x3d
        0x4b
        0x3a
        0x4c
        0x37
        0x48
        0x34
        0x49
        0x2b
        0x53
        0x31
        0x52
        0x5a
        0x57
        0x54
        0x66
        0x5d
        0x1d
        0x18
        0x12
        0xe
        0x8
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2a
        0x28
    .end array-data

    :array_2
    .array-data 4
        0x28
        0x44
    .end array-data

    :array_3
    .array-data 4
        0x44
        0x43
    .end array-data

    :array_4
    .array-data 4
        0x43
        0x23
    .end array-data

    :array_5
    .array-data 4
        0x23
        0x21
    .end array-data

    :array_6
    .array-data 4
        0x2a
        0x1d
    .end array-data

    :array_7
    .array-data 4
        0x2a
        0x3d
    .end array-data

    :array_8
    .array-data 4
        0x28
        0x3d
    .end array-data

    :array_9
    .array-data 4
        0x28
        0x4b
    .end array-data

    :array_a
    .array-data 4
        0x44
        0x4b
    .end array-data

    :array_b
    .array-data 4
        0x44
        0x3a
    .end array-data

    :array_c
    .array-data 4
        0x44
        0x2b
    .end array-data

    :array_d
    .array-data 4
        0x43
        0x2b
    .end array-data

    :array_e
    .array-data 4
        0x43
        0x37
    .end array-data

    :array_f
    .array-data 4
        0x43
        0x48
    .end array-data

    :array_10
    .array-data 4
        0x23
        0x48
    .end array-data

    :array_11
    .array-data 4
        0x21
        0x34
    .end array-data

    :array_12
    .array-data 4
        0x21
        0x3
    .end array-data

    :array_13
    .array-data 4
        0x1d
        0x3d
    .end array-data

    :array_14
    .array-data 4
        0x3d
        0x4b
    .end array-data

    :array_15
    .array-data 4
        0x4b
        0x3a
    .end array-data

    :array_16
    .array-data 4
        0x3a
        0x2b
    .end array-data

    :array_17
    .array-data 4
        0x2b
        0x37
    .end array-data

    :array_18
    .array-data 4
        0x37
        0x48
    .end array-data

    :array_19
    .array-data 4
        0x48
        0x34
    .end array-data

    :array_1a
    .array-data 4
        0x34
        0x3
    .end array-data

    :array_1b
    .array-data 4
        0x3d
        0x4c
    .end array-data

    :array_1c
    .array-data 4
        0x4c
        0x3a
    .end array-data

    :array_1d
    .array-data 4
        0x37
        0x49
    .end array-data

    :array_1e
    .array-data 4
        0x49
        0x34
    .end array-data

    :array_1f
    .array-data 4
        0x1d
        0x53
    .end array-data

    :array_20
    .array-data 4
        0x4c
        0x53
    .end array-data

    :array_21
    .array-data 4
        0x3a
        0x53
    .end array-data

    :array_22
    .array-data 4
        0x2b
        0x53
    .end array-data

    :array_23
    .array-data 4
        0x2b
        0x52
    .end array-data

    :array_24
    .array-data 4
        0x37
        0x52
    .end array-data

    :array_25
    .array-data 4
        0x49
        0x52
    .end array-data

    :array_26
    .array-data 4
        0x3
        0x52
    .end array-data

    :array_27
    .array-data 4
        0x1d
        0x18
    .end array-data

    :array_28
    .array-data 4
        0x53
        0x18
    .end array-data

    :array_29
    .array-data 4
        0x53
        0x5a
    .end array-data

    :array_2a
    .array-data 4
        0x53
        0x31
    .end array-data

    :array_2b
    .array-data 4
        0x31
        0x57
    .end array-data

    :array_2c
    .array-data 4
        0x31
        0x52
    .end array-data

    :array_2d
    .array-data 4
        0x52
        0x54
    .end array-data

    :array_2e
    .array-data 4
        0x52
        0x8
    .end array-data

    :array_2f
    .array-data 4
        0x3
        0x8
    .end array-data

    :array_30
    .array-data 4
        0x18
        0x5a
    .end array-data

    :array_31
    .array-data 4
        0x5a
        0x57
    .end array-data

    :array_32
    .array-data 4
        0x57
        0x54
    .end array-data

    :array_33
    .array-data 4
        0x54
        0x8
    .end array-data

    :array_34
    .array-data 4
        0x5a
        0x66
    .end array-data

    :array_35
    .array-data 4
        0x66
        0x54
    .end array-data

    :array_36
    .array-data 4
        0x18
        0x12
    .end array-data

    :array_37
    .array-data 4
        0x5a
        0x5d
    .end array-data

    :array_38
    .array-data 4
        0x54
        0x5d
    .end array-data

    :array_39
    .array-data 4
        0x8
        0xe
    .end array-data

    :array_3a
    .array-data 4
        0x5d
        0x12
    .end array-data

    :array_3b
    .array-data 4
        0x5d
        0xe
    .end array-data

    :array_3c
    .array-data 4
        0x12
        0xe
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    const/4 v6, 0x1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v2, 0x4

    new-array v2, v2, [F

    iput-object v2, p0, m_CoordConversionTempArray:[F

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    sget-object v2, FACE_EDGES_INDICES:[[I

    array-length v2, v2

    new-array v2, v2, [Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    iput-object v2, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    sget-object v2, FACE_KEY_POINTS_INDICES:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    iput-object v2, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    sget-object v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->INVISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iput-object v2, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iput v6, p0, m_LastFeatureExtractionResult:I

    new-instance v2, Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {v2}, Lcom/oneplus/faceunlock/utils/Token;-><init>()V

    iput-object v2, p0, m_RegisterToken:Lcom/oneplus/faceunlock/utils/Token;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, m_SelectedFaceKeyPoints:Ljava/util/List;

    sget-object v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    iput-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, m_UnselectedFaceKeyPointEdgeIndices:Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$1;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$1;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_SurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$2;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$2;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_CameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$3;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$3;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_CameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$4;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$4;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_FaceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$5;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$5;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_AnimateFaceFeatureDrawingRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$6;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$6;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_SelectNextFaceKeyPointEdgeRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$7;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$7;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_SelectNextFaceKeyPointRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$8;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$8;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v2, p0, m_SetTextureViewVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, setRetainInstance(Z)V

    iget-object v2, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    new-instance v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment$1;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    :goto_1
    if-ltz v0, :cond_1

    sget-object v2, FACE_KEY_POINT_EDGE_END_POINT_INDICES:[[I

    aget-object v1, v2, v0

    iget-object v2, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    new-instance v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    const/4 v4, 0x0

    aget v4, v1, v4

    aget v5, v1, v6

    invoke-direct {v3, v4, v5}, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;-><init>(II)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/FaceExtractionFragment;Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Lcom/oneplus/faceunlock/CircleTextureView;
    .locals 1

    iget-object v0, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/faceunlock/FaceExtractionFragment;Landroid/util/Size;)Landroid/util/Size;
    .locals 0

    iput-object p1, p0, m_SurfaceTextureSize:Landroid/util/Size;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/oneplus/faceunlock/FaceExtractionFragment;[BIII[BII)V
    .locals 0

    invoke-direct/range {p0 .. p7}, onFeatureExtracted([BIII[BII)V

    return-void
.end method

.method static synthetic access$1302(Lcom/oneplus/faceunlock/FaceExtractionFragment;Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;)Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;
    .locals 0

    iput-object p1, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/oneplus/faceunlock/FaceExtractionFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, completeExtraction(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Lcom/oneplus/faceunlock/camera/CameraDevice;
    .locals 1

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/oneplus/faceunlock/FaceExtractionFragment;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    invoke-direct {p0}, onFaceEngineReleased()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    invoke-direct {p0}, onPrepared()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/faceunlock/FaceExtractionFragment;I)V
    .locals 0

    invoke-direct {p0, p1}, onCameraErrorReceived(I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    invoke-direct {p0}, onFeatureSaved()V

    return-void
.end method

.method static synthetic access$2100(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Z
    .locals 1

    iget-boolean v0, p0, m_IsPaused:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/faceunlock/FaceExtractionFragment;Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, onCameraFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/faceunlock/FaceExtractionFragment;[F)V
    .locals 0

    invoke-direct {p0, p1}, onCameraFaceKeyPointsUpdated([F)V

    return-void
.end method

.method static synthetic access$502(Lcom/oneplus/faceunlock/FaceExtractionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    invoke-direct {p0}, animateFaceFeatureDrawing()V

    return-void
.end method

.method static synthetic access$702(Lcom/oneplus/faceunlock/FaceExtractionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsSelectNextFaceKeyPointEdgeScheduled:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/faceunlock/FaceExtractionFragment;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, updateFaceFeatureDrawing(ZZ)V

    return-void
.end method

.method static synthetic access$902(Lcom/oneplus/faceunlock/FaceExtractionFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, m_IsSelectNextFaceKeyPointScheduled:Z

    return p1
.end method

.method private animateFaceFeatureDrawing()V
    .locals 10

    const/4 v7, 0x0

    const/4 v6, 0x5

    const/4 v2, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v5, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    aget-object v3, v5, v1

    iget-boolean v5, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->isVisible:Z

    if-eqz v5, :cond_0

    iget v5, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    if-ge v5, v6, :cond_0

    iget v5, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    iget v5, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    if-ge v5, v6, :cond_0

    const/4 v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    :goto_1
    if-ltz v1, :cond_3

    iget-object v5, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    aget-object v0, v5, v1

    iget-boolean v5, v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->isVisible:Z

    if-eqz v5, :cond_2

    iget v5, v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    if-ge v5, v6, :cond_2

    iget v5, v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    iget v5, v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    if-ge v5, v6, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    invoke-direct {p0, v7, v7}, updateFaceFeatureDrawing(ZZ)V

    :cond_4
    if-eqz v2, :cond_6

    iget-boolean v5, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    if-nez v5, :cond_5

    iget-object v5, p0, m_Handler:Landroid/os/Handler;

    iget-object v6, p0, m_AnimateFaceFeatureDrawingRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x21

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v5

    iput-boolean v5, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-boolean v5, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    if-eqz v5, :cond_5

    iput-boolean v7, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    iget-object v5, p0, m_Handler:Landroid/os/Handler;

    iget-object v6, p0, m_AnimateFaceFeatureDrawingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_2
.end method

.method private changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V
    .locals 3

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeState() - old : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

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

    iput-object p1, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    goto :goto_0
.end method

.method private completeExtraction(Z)V
    .locals 8

    const/4 v7, 0x1

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "completeExtraction() - Success : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v4, v0, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-eqz v4, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v1, p1}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->setExtractionResult(Z)V

    iget-boolean v4, p0, m_IsPaused:Z

    if-nez v4, :cond_2

    if-eqz p1, :cond_1

    const-string v4, "IsFaceFeatureSaved"

    invoke-static {v4, v7}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Z)V

    const-string v4, "FaceToken"

    invoke-static {v4}, Lcom/oneplus/faceunlock/utils/Settings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {v4}, Lcom/oneplus/faceunlock/utils/Token;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {v4}, Lcom/oneplus/faceunlock/utils/Token;-><init>()V

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    const-string v4, "FaceToken"

    invoke-static {v4, v3}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, Lcom/oneplus/faceunlock/FaceSettingService;->broadcastFaceSettingChanged(Z)V

    :cond_1
    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->FINISH:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v1, v4}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->setFragmentType(Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;)V

    :cond_2
    iput-boolean v7, p0, m_IsCompleted:Z

    return-void
.end method

.method private deleteFeature(Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "deleteFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/database/FaceDatabase;->deleteFaceFeature(ILcom/oneplus/faceunlock/utils/ResultCallback;)V

    return-void
.end method

.method private extractFeature([BLandroid/util/Size;Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;Ljava/lang/Runnable;)V
    .locals 9

    invoke-direct {p0}, isReady()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extractFeature() - Invalid state, skip : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->EXTRACTING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v4

    if-eqz p3, :cond_2

    iget-boolean v0, p3, Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;->isFaceDetected:Z

    if-eqz v0, :cond_1

    sget-object v7, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->IS_DETECTED:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    :goto_1
    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v1, 0x0

    const/16 v5, 0x11

    iget-object v2, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->getSensorOrientation()I

    move-result v6

    new-instance v8, Lcom/oneplus/faceunlock/FaceExtractionFragment$9;

    invoke-direct {v8, p0, p4}, Lcom/oneplus/faceunlock/FaceExtractionFragment$9;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;Ljava/lang/Runnable;)V

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/faceunlock/engine/FaceEngine;->extractFeature(Lcom/oneplus/faceunlock/utils/Token;[BIIIILcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->IS_NOT_DETECTED:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;->UNKNOWN:Lcom/oneplus/faceunlock/engine/FaceEngine$FaceDetectionResult;

    goto :goto_1
.end method

.method private handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, onPreparingTimeout()V

    goto :goto_0

    :pswitch_2
    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v0}, showHintText(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2711
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideHintText()V
    .locals 4

    iget-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v0, p0, m_HintTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput v0, p0, m_CurrentHintText:I

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$VisibilityState:[I

    iget-object v1, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hideHintText() - State : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->ANIMATION_OUT:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iput-object v0, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iget-object v0, p0, m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$10;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$10;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isCameraDeviceReady()Z
    .locals 1

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isFaceEngineReady()Z
    .locals 1

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isReady()Z
    .locals 2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->READY:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$onResume$1()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getBottom()I

    move-result v1

    iget-object v2, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method private mapToTextureViewCoordination(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 9

    const/4 v2, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget-object v0, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/CircleTextureView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v1, v1, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v6, v0, v1

    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->getSensorOrientation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->getSensorOrientation()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v7, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v7}, Lcom/oneplus/faceunlock/CircleTextureView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {v0, v1, v3, v7, v8}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    iget-object v0, p0, m_CoordConversionTempArray:[F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v4

    iget-object v0, p0, m_CoordConversionTempArray:[F

    iget v1, p1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v5

    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, m_CoordConversionTempArray:[F

    iget-object v3, p0, m_CoordConversionTempArray:[F

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->mapPoints([FI[FII)V

    iget-object v0, p0, m_CoordConversionTempArray:[F

    aget v0, v0, v2

    iput v0, p2, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, m_CoordConversionTempArray:[F

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p2, Landroid/graphics/PointF;->y:F

    return-void

    :sswitch_0
    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/CircleTextureView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, m_CoordConversionTempMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/CircleTextureView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v8, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0x10e -> :sswitch_1
    .end sparse-switch
.end method

.method private onCameraErrorReceived(I)V
    .locals 3

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCameraErrorReceived() - Camera error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$11;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$11;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onCameraFaceKeyPointsUpdated([F)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_3

    iget-object v0, p0, m_RawFaceKeyPoints:[F

    if-eqz v0, :cond_2

    iget-object v0, p0, m_RawFaceKeyPoints:[F

    array-length v0, v0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, m_RawFaceKeyPoints:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    invoke-direct {p0, v2, v2}, updateFaceFeatureDrawing(ZZ)V

    if-eqz p1, :cond_0

    iget-boolean v0, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    iget-object v1, p0, m_AnimateFaceFeatureDrawingRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    iput-boolean v0, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, m_RawFaceKeyPoints:[F

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, m_RawFaceKeyPoints:[F

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private onCameraFrameReceived(Landroid/util/Size;ILcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v2, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, m_ExtractionStartTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-direct {p0}, onFeatureExtractionTimeout()V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, m_ExtractionDelayStartTimeMillis:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3b6

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-object v1, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->dequeueCameraFrameBuffer()[B

    move-result-object v0

    new-instance v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$12;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$12;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;[B)V

    invoke-direct {p0, v0, p1, p3, v1}, extractFeature([BLandroid/util/Size;Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private onFaceEngineReleased()V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onFaceEngineReleased()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->RELEASED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    return-void
.end method

.method private onFeatureExtracted([BIII[BII)V
    .locals 11

    sget-object v6, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$State:[I

    iget-object v7, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v7}, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->ordinal()I

    move-result v7

    aget v6, v6, v7

    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFeatureExtracted() - Token : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, m_RegisterToken:Lcom/oneplus/faceunlock/utils/Token;

    invoke-virtual {v8}, Ljava/lang/Object;->hashCode()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", engine result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, p0, m_RegisterFrameCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, m_RegisterFrameCount:I

    iget v5, p0, m_LastFeatureExtractionResult:I

    move/from16 v0, p7

    iput v0, p0, m_LastFeatureExtractionResult:I

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->isUnlockDumpEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

    if-nez v6, :cond_0

    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd_HH-mm-ss"

    invoke-direct {v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

    :cond_0
    const-string v7, "frame_register_%s_%s_%03d_%d_%d_%d"

    const/4 v6, 0x6

    new-array v8, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v9, p0, m_SimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x1

    iget-object v9, p0, m_RegisterToken:Lcom/oneplus/faceunlock/utils/Token;

    invoke-virtual {v9}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x2

    iget v9, p0, m_RegisterFrameCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x3

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v6, 0x4

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x5

    if-nez p7, :cond_3

    const/4 v6, 0x1

    :goto_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Lcom/oneplus/faceunlock/FaceExtractionFragment$16;

    invoke-direct {v6, p0, v2, p1}, Lcom/oneplus/faceunlock/FaceExtractionFragment$16;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;Ljava/lang/String;[B)V

    invoke-virtual {v6}, Lcom/oneplus/faceunlock/FaceExtractionFragment$16;->start()V

    :cond_1
    if-nez p5, :cond_6

    sparse-switch p7, :sswitch_data_0

    invoke-direct {p0}, hideHintText()V

    :cond_2
    :goto_1
    sget-object v6, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->READY:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v6}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    :goto_2
    return-void

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    :sswitch_0
    iget v4, p0, m_ExtractionStep:I

    iget v6, p0, m_ExtractionStep:I

    const/4 v7, 0x4

    if-ge v6, v7, :cond_4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, m_ExtractionDelayStartTimeMillis:J

    iget v6, p0, m_ExtractionStep:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, m_ExtractionStep:I

    :cond_4
    iget v6, p0, m_ExtractionStep:I

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7}, showExtractionAnimation(IILjava/lang/Runnable;)V

    invoke-direct {p0}, hideHintText()V

    move/from16 v0, p7

    if-eq v5, v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, updateFaceFeatureDrawing(ZZ)V

    goto :goto_1

    :sswitch_1
    iget-object v6, p0, m_Handler:Landroid/os/Handler;

    const/16 v7, 0x2715

    invoke-virtual {v6, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, p0, m_CurrentHintText:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_5

    iget-object v6, p0, m_Handler:Landroid/os/Handler;

    const/16 v7, 0x2715

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static {v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v3

    iget-object v6, p0, m_Handler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v3, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_5
    move/from16 v0, p7

    if-eq v5, v0, :cond_2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, updateFaceFeatureDrawing(ZZ)V

    goto :goto_1

    :cond_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7}, updateFaceFeatureDrawing(ZZ)V

    invoke-direct {p0}, hideHintText()V

    sget-object v6, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->EXTRACTED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v6}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    move-object/from16 v0, p5

    invoke-direct {p0, v0}, saveFeature([B)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method private onFeatureExtractionTimeout()V
    .locals 1

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->EXTRACTED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, completeExtraction(Z)V

    return-void
.end method

.method private onFeatureSaved()V
    .locals 3

    iget-boolean v1, p0, m_IsPaused:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "onFeatureSaved()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, m_ExtractionStep:I

    const/4 v1, 0x5

    iput v1, p0, m_ExtractionStep:I

    iget v1, p0, m_ExtractionStep:I

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$15;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$15;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-direct {p0, v0, v1, v2}, showExtractionAnimation(IILjava/lang/Runnable;)V

    goto :goto_0
.end method

.method private onPrepared()V
    .locals 4

    invoke-direct {p0}, isFaceEngineReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, isCameraDeviceReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    iget-object v1, p0, m_SetTextureViewVisibleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, m_ExtractionStartTimeMillis:J

    iget-object v0, p0, m_FaceKeyPointsView:Landroid/view/View;

    iget-object v1, p0, m_FaceKeyPointsDrawable:Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->READY:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    goto :goto_0
.end method

.method private onPreparingTimeout()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, m_PreparationTimeout:Z

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-nez v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onPreparingTimeout() - Not extracting, handle timeout later"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onPreparingTimeout()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, completeExtraction(Z)V

    goto :goto_0
.end method

.method private onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 10

    new-instance v5, Landroid/util/Size;

    invoke-direct {v5, p2, p3}, Landroid/util/Size;-><init>(II)V

    iput-object v5, p0, m_SurfaceTextureSize:Landroid/util/Size;

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    invoke-direct {v5}, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;-><init>()V

    iput-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, p0, m_CameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    iput-object v6, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->cameraFrameCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraFrameCallback;

    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, p0, m_FaceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    iput-object v6, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->faceKeyPointsCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getRotation()I

    move-result v4

    const/4 v1, 0x0

    packed-switch v4, :pswitch_data_0

    :goto_0
    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iput v1, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->displayRotationDegrees:I

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f030027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    new-instance v6, Landroid/util/Size;

    invoke-direct {v6, v3, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v6, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    :cond_0
    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iput-object p1, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->surfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v5, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-ne p2, v5, :cond_1

    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v5, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-eq p3, v5, :cond_2

    :cond_1
    iget-object v5, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v5, v5, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

    iget-object v6, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    iget-object v6, v6, Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;->previewSize:Landroid/util/Size;

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    :cond_2
    new-instance v5, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$1;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$1;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v5, p0, m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

    iget-object v5, p0, m_Handler:Landroid/os/Handler;

    if-eqz v5, :cond_3

    iget-object v5, p0, m_Handler:Landroid/os/Handler;

    iget-object v6, p0, m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

    const-wide/16 v8, 0x12c

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void

    :pswitch_0
    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x5a

    goto :goto_0

    :pswitch_2
    const/16 v1, 0xb4

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x10e

    goto :goto_0

    :cond_3
    iget-object v5, p0, m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private prepareFaceEngine()V
    .locals 11

    const/4 v6, 0x1

    iget-object v3, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    sget-object v4, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    if-eq v3, v4, :cond_0

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareFaceEngine() - No need to prepare in state : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v10

    if-nez v10, :cond_1

    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "prepareFaceEngine() - Activity is not attaching"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v3, TAG:Ljava/lang/String;

    const-string v4, "prepareFaceEngine()-2.6.75"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->PREPARING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v3}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f030027

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v0, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;

    const/16 v3, 0x5a

    const/high16 v4, 0x3f400000    # 0.75f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v9}, Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;-><init>(IIIFFZZZZ)V

    invoke-static {}, Lcom/oneplus/faceunlock/engine/FaceEngine;->createDefaultFaceEngine()Lcom/oneplus/faceunlock/engine/FaceEngine;

    move-result-object v3

    iput-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iget-object v3, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v4, 0x0

    new-instance v5, Lcom/oneplus/faceunlock/FaceExtractionFragment$17;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$17;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-virtual {v3, v4, v10, v0, v5}, Lcom/oneplus/faceunlock/engine/FaceEngine;->prepare(Lcom/oneplus/faceunlock/utils/Token;Landroid/content/Context;Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    iget-object v3, p0, m_Handler:Landroid/os/Handler;

    const/16 v4, 0x2711

    const-wide/16 v6, 0x4e20

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private releaseFaceEngine(Ljava/lang/Runnable;)V
    .locals 4

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$State:[I

    iget-object v2, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "releaseFaceEngine()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->RELEASING:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v1}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    const-string v1, "IsFaceFeatureSaved"

    invoke-static {v1}, Lcom/oneplus/faceunlock/utils/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v2, 0x0

    new-instance v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$18;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/faceunlock/FaceExtractionFragment$18;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->release(Lcom/oneplus/faceunlock/utils/Token;ILcom/oneplus/faceunlock/utils/ResultCallback;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->RELEASED:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v1}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    :pswitch_1
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private resetFaceFeatureDrawing()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, m_SelectedFaceKeyPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->isVisible:Z

    iget-object v1, p0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    iget-object v1, p0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, m_UnselectedFaceKeyPointEdgeIndices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v1, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->isVisible:Z

    iget-object v1, p0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    aget-object v1, v1, v0

    iput v3, v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    iget-object v1, p0, m_UnselectedFaceKeyPointEdgeIndices:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    if-eqz v1, :cond_2

    iput-boolean v3, p0, m_IsAnimateFaceFeatureDrawingScheduled:Z

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    iget-object v2, p0, m_AnimateFaceFeatureDrawingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2
    iget-boolean v1, p0, m_IsSelectNextFaceKeyPointEdgeScheduled:Z

    if-eqz v1, :cond_3

    iput-boolean v3, p0, m_IsSelectNextFaceKeyPointEdgeScheduled:Z

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    iget-object v2, p0, m_SelectNextFaceKeyPointEdgeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_3
    iget-boolean v1, p0, m_IsSelectNextFaceKeyPointScheduled:Z

    if-eqz v1, :cond_4

    iput-boolean v3, p0, m_IsSelectNextFaceKeyPointScheduled:Z

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    iget-object v2, p0, m_SelectNextFaceKeyPointRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    return-void
.end method

.method private saveFeature([B)V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "saveFeature()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/faceunlock/Config;->useTEE()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, onFeatureSaved()V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    new-instance v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$19;

    invoke-direct {v1, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$19;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-static {v0, p1, v1}, Lcom/oneplus/faceunlock/database/FaceDatabase;->saveFaceFeature(I[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z

    goto :goto_0
.end method

.method private showExtractionAnimation(IILjava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "showExtractionAnimation()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    mul-int/lit16 v2, p2, 0xc8

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$20;

    invoke-direct {v1, p0, p3}, Lcom/oneplus/faceunlock/FaceExtractionFragment$20;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    sub-int v1, p2, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-long v2, v1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private showHintText(I)V
    .locals 4

    iget-object v1, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-object v1, p0, m_HintTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showHintText() - State : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", text : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, m_CurrentHintText:I

    packed-switch p1, :pswitch_data_0

    const-string v0, ""

    :goto_1
    iget-object v1, p0, m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$VisibilityState:[I

    iget-object v2, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v1, p0, m_HintTextView:Landroid/widget/TextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->VISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iput-object v1, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private startCaptureFace()V
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-instance v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;-><init>()V

    iget-object v1, p0, m_CameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    iput-object v1, v0, Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;->cameraErrorCallback:Lcom/oneplus/faceunlock/camera/CameraDevice$CameraErrorCallback;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->create(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Lcom/oneplus/faceunlock/camera/CameraDevice;

    move-result-object v1

    iput-object v1, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    iget-object v1, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/CircleTextureView;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/CircleTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    iget-object v2, p0, m_SurfaceTextureSize:Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    iget-object v3, p0, m_SurfaceTextureSize:Landroid/util/Size;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    :goto_0
    iget-object v1, p0, m_FaceKeyPointsView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, m_RaiseCameraButton:Lcom/oneplus/faceunlock/widget/AccentColorButton;

    invoke-virtual {v1, v5}, Lcom/oneplus/faceunlock/widget/AccentColorButton;->setVisibility(I)V

    iget-object v1, p0, m_CoverImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v1, p0, m_PreparationTimeout:Z

    if-eqz v1, :cond_2

    sget-object v1, TAG:Ljava/lang/String;

    const-string v2, "startCaptureFace() - Handle preparation timeout"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2711

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v1, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v1, v4}, Lcom/oneplus/faceunlock/CircleTextureView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, m_Handler:Landroid/os/Handler;

    const/16 v2, 0x2712

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1
.end method

.method private updateFaceFeatureDrawing(ZZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v13, v0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-nez v13, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v13, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$State:[I

    move-object/from16 v0, p0

    iget-object v14, v0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v14}, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->ordinal()I

    move-result v14

    aget v13, v13, v14

    packed-switch v13, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, m_RawFaceKeyPoints:[F

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    sget-object v14, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->VISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    if-eq v13, v14, :cond_3

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_c

    if-eqz p1, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_5

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v13, v0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    int-to-double v0, v13

    move-wide/from16 v16, v0

    mul-double v14, v14, v16

    double-to-int v7, v14

    move-object/from16 v0, p0

    iget-object v13, v0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    invoke-interface {v13, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    aget-object v13, v13, v7

    const/4 v14, 0x1

    iput-boolean v14, v13, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->isVisible:Z

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    array-length v13, v13

    add-int/lit8 v6, v13, -0x1

    :goto_2
    if-ltz v6, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    aget-object v3, v13, v6

    iget-boolean v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->isVisible:Z

    if-nez v13, :cond_2

    iget v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->startIndex:I

    if-ne v13, v7, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    iget v14, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->endIndex:I

    aget-object v13, v13, v14

    iget-boolean v13, v13, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->isVisible:Z

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    iput-boolean v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->isVisible:Z

    :cond_2
    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    iget v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->endIndex:I

    if-ne v13, v7, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    iget v14, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->startIndex:I

    aget-object v13, v13, v14

    iget-boolean v13, v13, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->isVisible:Z

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    iput-boolean v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->isVisible:Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    array-length v13, v13

    add-int/lit8 v6, v13, -0x1

    :goto_4
    if-ltz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPoints:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;

    aget-object v8, v13, v6

    iget-boolean v13, v8, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->isVisible:Z

    if-eqz v13, :cond_7

    iget v13, v8, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    const/4 v14, 0x5

    if-ge v13, v14, :cond_6

    iget v13, v8, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->animationStage:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_7

    :cond_6
    sget-object v13, FACE_KEY_POINTS_INDICES:[I

    aget v13, v13, v6

    mul-int/lit8 v9, v13, 0x2

    iget-object v13, v8, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->position:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v14, v0, m_RawFaceKeyPoints:[F

    aget v14, v14, v9

    move-object/from16 v0, p0

    iget-object v15, v0, m_RawFaceKeyPoints:[F

    add-int/lit8 v16, v9, 0x1

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPoints:Ljava/util/List;

    iget-object v14, v8, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;->position:Landroid/graphics/PointF;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, m_IsSelectNextFaceKeyPointScheduled:Z

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, m_UnselectedFaceKeyPointIndices:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, m_Handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, m_SelectNextFaceKeyPointRunnable:Ljava/lang/Runnable;

    const-wide/16 v16, 0x78

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v13

    move-object/from16 v0, p0

    iput-boolean v13, v0, m_IsSelectNextFaceKeyPointScheduled:Z

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->clear()V

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    array-length v13, v13

    add-int/lit8 v6, v13, -0x1

    :goto_6
    if-ltz v6, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointEdges:[Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;

    aget-object v3, v13, v6

    iget-boolean v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->isVisible:Z

    if-eqz v13, :cond_b

    iget v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    const/4 v14, 0x5

    if-ge v13, v14, :cond_a

    iget v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->animationStage:I

    and-int/lit8 v13, v13, 0x1

    if-nez v13, :cond_b

    :cond_a
    sget-object v13, FACE_EDGES_INDICES:[[I

    aget-object v11, v13, v6

    const/4 v13, 0x0

    aget v13, v11, v13

    mul-int/lit8 v12, v13, 0x2

    const/4 v13, 0x1

    aget v13, v11, v13

    mul-int/lit8 v5, v13, 0x2

    iget-object v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->start:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v14, v0, m_RawFaceKeyPoints:[F

    aget v14, v14, v12

    move-object/from16 v0, p0

    iget-object v15, v0, m_RawFaceKeyPoints:[F

    add-int/lit8 v16, v12, 0x1

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/PointF;->set(FF)V

    iget-object v13, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->end:Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v14, v0, m_RawFaceKeyPoints:[F

    aget v14, v14, v5

    move-object/from16 v0, p0

    iget-object v15, v0, m_RawFaceKeyPoints:[F

    add-int/lit8 v16, v5, 0x1

    aget v15, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/graphics/PointF;->set(FF)V

    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    iget-object v14, v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;->endPoints:Landroid/util/Pair;

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v6, v6, -0x1

    goto :goto_6

    :cond_c
    move-object/from16 v0, p0

    iget-boolean v13, v0, m_IsSelectNextFaceKeyPointScheduled:Z

    if-eqz v13, :cond_9

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, m_IsSelectNextFaceKeyPointScheduled:Z

    move-object/from16 v0, p0

    iget-object v13, v0, m_Handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, m_SelectNextFaceKeyPointRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v13, v0, m_IsSelectNextFaceKeyPointEdgeScheduled:Z

    if-eqz v13, :cond_e

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, m_IsSelectNextFaceKeyPointEdgeScheduled:Z

    move-object/from16 v0, p0

    iget-object v13, v0, m_Handler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, m_SelectNextFaceKeyPointEdgeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointsDrawable:Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPoints:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    :goto_7
    if-ltz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPoints:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v10}, mapToTextureViewCoordination(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v6, v13, -0x1

    :goto_8
    if-ltz v6, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v13, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v13, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/PointF;

    iget-object v14, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, mapToTextureViewCoordination(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    iget-object v13, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/PointF;

    iget-object v14, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, mapToTextureViewCoordination(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    add-int/lit8 v6, v6, -0x1

    goto :goto_8

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointsDrawable:Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, m_SelectedFaceKeyPoints:Ljava/util/List;

    invoke-virtual {v13, v14}, Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;->setFaceKeyPoints(Ljava/util/List;)V

    move-object/from16 v0, p0

    iget-object v13, v0, m_FaceKeyPointsDrawable:Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

    move-object/from16 v0, p0

    iget-object v14, v0, m_SelectedFaceKeyPointEdges:Ljava/util/List;

    invoke-virtual {v13, v14}, Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;->setFaceKeyPointEdges(Ljava/util/List;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private updateScrollViewMargin()V
    .locals 9

    const v8, 0x7f030012

    const/4 v7, 0x0

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/faceunlock/utils/StatusBarUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    const/4 v1, 0x0

    iget-object v4, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v4}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getStartMode()Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    move-result-object v2

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statsbarHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$StartMode:[I

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    :pswitch_0
    iget-object v4, p0, m_ScrollViewContainer:Landroid/view/View;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/oneplus/faceunlock/utils/Utils;->isHydrogenOS()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateScrollViewWeight()V
    .locals 8

    iget-object v3, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    const-wide v6, 0x3ffe666666666666L    # 1.9

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    const v2, 0x3f63d70a    # 0.89f

    :goto_1
    iget-object v3, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScrollViewWeight() - Weight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1
.end method


# virtual methods
.method final synthetic lambda$null$2$FaceExtractionFragment(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 2

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-direct {p0}, onPrepared()V

    return-void
.end method

.method final synthetic lambda$onCreateView$0$FaceExtractionFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, startCaptureFace()V

    return-void
.end method

.method final synthetic lambda$onSurfaceTextureAvailable$3$FaceExtractionFragment()V
    .locals 3

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    iget-object v1, p0, m_CameraStartParams:Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;

    new-instance v2, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$3;

    invoke-direct {v2, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$3;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/faceunlock/camera/CameraDevice;->start(Lcom/oneplus/faceunlock/camera/CameraDevice$StartParams;Lcom/oneplus/faceunlock/utils/ResultCallback;)Z

    return-void
.end method

.method final synthetic lambda$reset$4$FaceExtractionFragment()V
    .locals 0

    invoke-direct {p0}, onFaceEngineReleased()V

    invoke-virtual {p0}, reset()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    iput-object p1, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$13;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$13;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    iput-object v0, p0, m_Handler:Landroid/os/Handler;

    invoke-direct {p0}, resetFaceFeatureDrawing()V

    invoke-direct {p0}, prepareFaceEngine()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "onCreateView()"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f060001

    invoke-virtual {p1, v2, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f050016

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/faceunlock/CircleTextureView;

    iput-object v2, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    const v2, 0x7f05000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, m_HintTextView:Landroid/widget/TextView;

    iget-object v2, p0, m_HintTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setAlpha(F)V

    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    iget-object v2, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x3e8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    new-instance v0, Lcom/oneplus/faceunlock/widget/LineSegmentProcessingDrawable;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/widget/LineSegmentProcessingDrawable;-><init>()V

    iget-object v2, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getFixedColorBlue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/faceunlock/widget/LineSegmentProcessingDrawable;->setForegroundColor(I)V

    iget-object v2, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const v3, 0x7f040003

    invoke-virtual {v2, v3}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/faceunlock/widget/LineSegmentProcessingDrawable;->setBackgroundProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const v3, 0x7f040005

    invoke-virtual {v2, v3}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/faceunlock/widget/LineSegmentProcessingDrawable;->setForegroundProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f050012

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    iput-object v2, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    const v2, 0x7f050013

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, m_ScrollViewContainer:Landroid/view/View;

    const v2, 0x7f050003

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, m_CoverImage:Landroid/widget/ImageView;

    const v2, 0x7f05000e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/faceunlock/widget/AccentColorButton;

    iput-object v2, p0, m_RaiseCameraButton:Lcom/oneplus/faceunlock/widget/AccentColorButton;

    invoke-static {}, Lcom/oneplus/faceunlock/utils/Device;->isMechanicalCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, m_CoverImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, m_RaiseCameraButton:Lcom/oneplus/faceunlock/widget/AccentColorButton;

    invoke-virtual {v2, v4}, Lcom/oneplus/faceunlock/widget/AccentColorButton;->setVisibility(I)V

    iget-object v2, p0, m_RaiseCameraButton:Lcom/oneplus/faceunlock/widget/AccentColorButton;

    new-instance v3, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$0;

    invoke-direct {v3, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/faceunlock/widget/AccentColorButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance v2, Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

    invoke-direct {v2}, Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;-><init>()V

    iput-object v2, p0, m_FaceKeyPointsDrawable:Lcom/oneplus/faceunlock/drawable/FaceKeyPointsDrawable;

    const v2, 0x7f050005

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, m_FaceKeyPointsView:Landroid/view/View;

    iget-object v2, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    iget-object v3, p0, m_SurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {v2, v3}, Lcom/oneplus/faceunlock/CircleTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$14;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$14;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-direct {p0, v0}, releaseFaceEngine(Ljava/lang/Runnable;)V

    invoke-direct {p0}, resetFaceFeatureDrawing()V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onDestroyView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x4

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause() - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    iget-object v1, p0, m_SetTextureViewVisibleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, m_TextureView:Lcom/oneplus/faceunlock/CircleTextureView;

    invoke-virtual {v0, v3}, Lcom/oneplus/faceunlock/CircleTextureView;->setVisibility(I)V

    iget-object v0, p0, m_FaceKeyPointsView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, m_HintTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, m_RawFaceKeyPoints:[F

    if-eqz v0, :cond_0

    iput-object v4, p0, m_RawFaceKeyPoints:[F

    invoke-direct {p0, v5, v5}, updateFaceFeatureDrawing(ZZ)V

    :cond_0
    iget-object v0, p0, m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    iget-object v1, p0, m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iput-object v4, p0, m_StartCameraDeviceRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    if-eqz v0, :cond_3

    iget-object v0, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->releaseSync()Lcom/oneplus/faceunlock/utils/OperationResult;

    iput-object v4, p0, m_CameraDevice:Lcom/oneplus/faceunlock/camera/CameraDevice;

    :cond_3
    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-eqz v0, :cond_4

    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->stop()V

    :cond_4
    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, m_ProgressBarAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, m_IsPaused:Z

    iget-boolean v0, p0, m_IsCompleted:Z

    if-nez v0, :cond_6

    invoke-direct {p0, v4}, deleteFeature(Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-direct {p0, v5}, completeExtraction(Z)V

    invoke-virtual {p0}, reset()V

    :cond_6
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume() - ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, m_IsPaused:Z

    iget-object v0, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_ProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    if-eqz v0, :cond_2

    iget-object v0, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, prepareFaceEngine()V

    :cond_1
    iget-object v0, p0, m_FaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/engine/FaceEngine;->start()V

    :cond_2
    invoke-static {}, Lcom/oneplus/faceunlock/utils/Device;->isMechanicalCamera()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, startCaptureFace()V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, m_CoverImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, m_RaiseCameraButton:Lcom/oneplus/faceunlock/widget/AccentColorButton;

    invoke-virtual {v0, v3}, Lcom/oneplus/faceunlock/widget/AccentColorButton;->setVisibility(I)V

    goto :goto_0
.end method

.method reset()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$21;->$SwitchMap$com$oneplus$faceunlock$FaceExtractionFragment$State:[I

    iget-object v1, p0, m_State:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$2;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$2;-><init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    invoke-direct {p0, v0}, releaseFaceEngine(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_0
    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$State;->NEW:Lcom/oneplus/faceunlock/FaceExtractionFragment$State;

    invoke-direct {p0, v0}, changeState(Lcom/oneplus/faceunlock/FaceExtractionFragment$State;)V

    new-instance v0, Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {v0}, Lcom/oneplus/faceunlock/utils/Token;-><init>()V

    iput-object v0, p0, m_RegisterToken:Lcom/oneplus/faceunlock/utils/Token;

    iput v2, p0, m_RegisterFrameCount:I

    iput v2, p0, m_ExtractionStep:I

    iput-boolean v2, p0, m_IsCompleted:Z

    sget-object v0, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->INVISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iput-object v0, p0, m_HintTextViewVisibilityState:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iput-boolean v2, p0, m_PreparationTimeout:Z

    iput v2, p0, m_CurrentHintText:I

    invoke-direct {p0}, resetFaceFeatureDrawing()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
