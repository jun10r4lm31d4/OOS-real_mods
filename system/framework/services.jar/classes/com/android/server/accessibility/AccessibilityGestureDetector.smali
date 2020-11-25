.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0x96L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x12cL

.field private static final DEBUG:Z = false

.field private static final DIRECTIONS_TO_GESTURE_ID:[[I

.field private static final DOWN:I = 0x3

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_INCHES_BETWEEN_SAMPLES:F = 0.1f

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final RIGHT:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3

.field private static final UP:I = 0x2


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v1, v0, [[I

    new-array v2, v0, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-array v2, v0, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, DIRECTIONS_TO_GESTURE_ID:[[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x5
        0x9
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x4
        0xb
        0xc
    .end array-data

    :array_2
    .array-data 4
        0xd
        0xe
        0x1
        0x7
    .end array-data

    :array_3
    .array-data 4
        0xf
        0x10
        0x8
        0x2
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;Landroid/view/GestureDetector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;Landroid/view/GestureDetector;)V
    .locals 4

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, mStrokeBuffer:Ljava/util/ArrayList;

    iput-object p2, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    iput-object p1, p0, mContext:Landroid/content/Context;

    if-nez p3, :cond_0

    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    goto :goto_0

    :cond_0
    iput-object p3, p0, mGestureDetector:Landroid/view/GestureDetector;

    :goto_0
    iget-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    iput v0, p0, mGestureDetectionThreshold:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->ydpi:F

    const v2, 0x3dcccccd    # 0.1f

    mul-float v3, v0, v2

    iput v3, p0, mMinPixelsBetweenSamplesX:F

    mul-float/2addr v2, v1

    iput v2, p0, mMinPixelsBetweenSamplesY:F

    return-void
.end method

.method private cancelGesture()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, mRecognizingGesture:Z

    iput-boolean v0, p0, mGestureStarted:Z

    iget-object v0, p0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 1

    invoke-virtual {p0}, clear()V

    iget-object v0, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 17

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eq v1, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v3, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    move-object/from16 v15, p0

    iget-wide v2, v15, mSecondPointerDownTime:J

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v9

    invoke-virtual {v0, v6}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v16

    move v6, v1

    move/from16 v15, v16

    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .locals 1

    iget-boolean v0, p0, mDoubleTapDetected:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, clear()V

    iget-object v0, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    iget-object v3, v0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v3, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v3

    return v3

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v5, v0, mStrokeBuffer:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/gesture/GesturePoint;

    iget v5, v5, Landroid/gesture/GesturePoint;->x:F

    iget-object v7, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/GesturePoint;

    iget v6, v6, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Landroid/graphics/PointF;

    invoke-direct {v9}, Landroid/graphics/PointF;-><init>()V

    const/4 v10, 0x1

    :goto_0
    iget-object v11, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v10, v11, :cond_3

    new-instance v11, Landroid/graphics/PointF;

    iget-object v12, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/gesture/GesturePoint;

    iget v12, v12, Landroid/gesture/GesturePoint;->x:F

    iget-object v13, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/gesture/GesturePoint;

    iget v13, v13, Landroid/gesture/GesturePoint;->y:F

    invoke-direct {v11, v12, v13}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v9, v11

    if-lez v7, :cond_1

    int-to-float v11, v7

    div-float v11, v5, v11

    int-to-float v12, v7

    div-float v12, v6, v12

    new-instance v13, Landroid/graphics/PointF;

    mul-float v14, v8, v11

    iget v15, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v14, v15

    mul-float v15, v8, v12

    move/from16 v16, v5

    iget v5, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v15, v5

    invoke-direct {v13, v14, v15}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v5, v13

    iget v13, v9, Landroid/graphics/PointF;->x:F

    iget v14, v5, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v14

    iget v14, v9, Landroid/graphics/PointF;->y:F

    iget v15, v5, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v15

    mul-float v15, v13, v13

    mul-float v17, v14, v14

    add-float v15, v15, v17

    move/from16 v17, v6

    move/from16 v18, v7

    float-to-double v6, v15

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    div-float/2addr v13, v6

    div-float/2addr v14, v6

    mul-float v7, v11, v13

    mul-float v15, v12, v14

    add-float/2addr v7, v15

    const/4 v15, 0x0

    cmpg-float v15, v7, v15

    if-gez v15, :cond_2

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    goto :goto_1

    :cond_1
    move/from16 v16, v5

    move/from16 v17, v6

    move/from16 v18, v7

    :cond_2
    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    :goto_1
    iget v5, v9, Landroid/graphics/PointF;->x:F

    iget v6, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v9, Landroid/graphics/PointF;->y:F

    iget v7, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    mul-float v7, v5, v5

    mul-float v11, v6, v6

    add-float/2addr v7, v11

    float-to-double v11, v7

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-float v8, v11

    add-int/lit8 v7, v17, 0x1

    div-float v11, v5, v8

    add-float/2addr v11, v15

    div-float v12, v6, v8

    add-float v6, v16, v12

    add-int/lit8 v10, v10, 0x1

    move v5, v11

    goto/16 :goto_0

    :cond_3
    move/from16 v16, v5

    move/from16 v17, v6

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AccessibilityGestureDetector"

    invoke-static {v6, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v0, v1, v2, v3}, recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v5

    return v5
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v5, v1, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v5, v6}, toDirection(FF)I

    move-result v7

    if-eqz v7, :cond_3

    if-eq v7, v3, :cond_2

    if-eq v7, v4, :cond_1

    if-eq v7, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v2, v4}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v2

    return v2

    :cond_2
    iget-object v2, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v2

    return v2

    :cond_3
    iget-object v3, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v3, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v2

    return v2

    :cond_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v2, :cond_5

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/PointF;->y:F

    iget v5, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v3, v4}, toDirection(FF)I

    move-result v7

    invoke-static {v5, v6}, toDirection(FF)I

    move-result v8

    sget-object v9, DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object v9, v9, v7

    aget v9, v9, v8

    iget-object v10, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v10, v9}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v10

    return v10

    :cond_5
    :goto_0
    nop

    iget-object v0, p0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private static toDirection(FF)I
    .locals 2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-lez v0, :cond_1

    cmpg-float v0, p0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :cond_2
    const/4 v0, 0x3

    :goto_1
    return v0
.end method


# virtual methods
.method public clear()V
    .locals 9

    const/4 v0, 0x0

    iput-boolean v0, p0, mFirstTapDetected:Z

    iput-boolean v0, p0, mDoubleTapDetected:Z

    iput-boolean v0, p0, mSecondFingerDoubleTap:Z

    iput-boolean v0, p0, mGestureStarted:Z

    iget-object v0, p0, mGestureDetector:Landroid/view/GestureDetector;

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, cancelGesture()V

    return-void
.end method

.method public firstTapDetected()Z
    .locals 1

    iget-boolean v0, p0, mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, mDoubleTapDetected:Z

    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    iget v0, p0, mPolicyFlags:I

    invoke-direct {p0, p1, v0}, maybeSendLongPress(Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iput v2, v0, mPolicyFlags:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v7, :cond_e

    if-eq v7, v8, :cond_a

    const/4 v10, 0x2

    if-eq v7, v10, :cond_4

    const/4 v11, 0x3

    if-eq v7, v11, :cond_3

    const/4 v11, 0x5

    if-eq v7, v11, :cond_1

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-boolean v7, v0, mSecondFingerDoubleTap:Z

    if-eqz v7, :cond_f

    iget-boolean v7, v0, mDoubleTapDetected:Z

    if-eqz v7, :cond_f

    invoke-direct {v0, v1, v2}, finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v7

    return v7

    :cond_1
    invoke-direct/range {p0 .. p0}, cancelGesture()V

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ne v7, v10, :cond_2

    iput-boolean v8, v0, mSecondFingerDoubleTap:Z

    iput-wide v5, v0, mSecondPointerDownTime:J

    goto/16 :goto_1

    :cond_2
    iput-boolean v9, v0, mSecondFingerDoubleTap:Z

    goto/16 :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, clear()V

    goto/16 :goto_1

    :cond_4
    iget-boolean v7, v0, mRecognizingGesture:Z

    if-eqz v7, :cond_f

    iget v7, v0, mBaseX:F

    sub-float/2addr v7, v3

    iget v10, v0, mBaseY:F

    sub-float/2addr v10, v4

    float-to-double v11, v7

    float-to-double v13, v10

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    iget v13, v0, mGestureDetectionThreshold:F

    float-to-double v13, v13

    cmpl-double v13, v11, v13

    if-lez v13, :cond_5

    iput v3, v0, mBaseX:F

    iput v4, v0, mBaseY:F

    iput-wide v5, v0, mBaseTime:J

    iput-boolean v9, v0, mFirstTapDetected:Z

    iput-boolean v9, v0, mDoubleTapDetected:Z

    iget-boolean v13, v0, mGestureStarted:Z

    if-nez v13, :cond_7

    iput-boolean v8, v0, mGestureStarted:Z

    iget-object v8, v0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v8}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result v8

    return v8

    :cond_5
    iget-boolean v8, v0, mFirstTapDetected:Z

    if-nez v8, :cond_7

    iget-wide v13, v0, mBaseTime:J

    sub-long v13, v5, v13

    iget-boolean v8, v0, mGestureStarted:Z

    if-eqz v8, :cond_6

    const-wide/16 v15, 0x12c

    goto :goto_0

    :cond_6
    const-wide/16 v15, 0x96

    :goto_0
    nop

    cmp-long v8, v13, v15

    if-lez v8, :cond_7

    invoke-direct/range {p0 .. p0}, cancelGesture()V

    iget-object v8, v0, mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v8, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v8

    return v8

    :cond_7
    iget v8, v0, mPreviousGestureX:F

    sub-float v8, v3, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v13, v0, mPreviousGestureY:F

    sub-float v13, v4, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v14, v0, mMinPixelsBetweenSamplesX:F

    cmpl-float v14, v8, v14

    if-gez v14, :cond_8

    iget v14, v0, mMinPixelsBetweenSamplesY:F

    cmpl-float v14, v13, v14

    if-ltz v14, :cond_9

    :cond_8
    iput v3, v0, mPreviousGestureX:F

    iput v4, v0, mPreviousGestureY:F

    iget-object v14, v0, mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v15, Landroid/gesture/GesturePoint;

    invoke-direct {v15, v3, v4, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    goto :goto_1

    :cond_a
    iget-boolean v7, v0, mDoubleTapDetected:Z

    if-eqz v7, :cond_b

    invoke-direct {v0, v1, v2}, finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v7

    return v7

    :cond_b
    iget-boolean v7, v0, mGestureStarted:Z

    if-eqz v7, :cond_f

    iget v7, v0, mPreviousGestureX:F

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    iget v8, v0, mPreviousGestureY:F

    sub-float v8, v4, v8

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    iget v9, v0, mMinPixelsBetweenSamplesX:F

    cmpl-float v9, v7, v9

    if-gez v9, :cond_c

    iget v9, v0, mMinPixelsBetweenSamplesY:F

    cmpl-float v9, v8, v9

    if-ltz v9, :cond_d

    :cond_c
    iget-object v9, v0, mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v10, Landroid/gesture/GesturePoint;

    invoke-direct {v10, v3, v4, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-direct {v0, v1, v2}, recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result v9

    return v9

    :cond_e
    iput-boolean v9, v0, mDoubleTapDetected:Z

    iput-boolean v9, v0, mSecondFingerDoubleTap:Z

    iput-boolean v8, v0, mRecognizingGesture:Z

    iput-boolean v9, v0, mGestureStarted:Z

    iput v3, v0, mPreviousGestureX:F

    iput v4, v0, mPreviousGestureY:F

    iget-object v7, v0, mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, mStrokeBuffer:Ljava/util/ArrayList;

    new-instance v8, Landroid/gesture/GesturePoint;

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v3, v0, mBaseX:F

    iput v4, v0, mBaseY:F

    iput-wide v5, v0, mBaseTime:J

    nop

    :cond_f
    :goto_1
    iget-boolean v7, v0, mSecondFingerDoubleTap:Z

    if-eqz v7, :cond_11

    invoke-direct {v0, v1}, mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    if-nez v7, :cond_10

    return v9

    :cond_10
    iget-object v8, v0, mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v8, v7}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    return v8

    :cond_11
    iget-boolean v7, v0, mRecognizingGesture:Z

    if-nez v7, :cond_12

    return v9

    :cond_12
    iget-object v7, v0, mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v8, p1

    invoke-virtual {v7, v8}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    return v7
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, clear()V

    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstTapDetected:Z

    const/4 v0, 0x0

    return v0
.end method
