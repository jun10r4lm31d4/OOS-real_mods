.class public Lcom/oneplus/faceunlock/CircleSurfaceView;
.super Landroid/view/SurfaceView;
.source "CircleSurfaceView.java"


# static fields
.field private static final FACE_KEY_POINT_COLOR:I = -0x1

.field private static final FACE_KEY_POINT_EDGE_COLOR:I = -0x1

.field private static final FACE_KEY_POINT_EDGE_WIDTH:F = 1.0f

.field private static final FACE_KEY_POINT_RADIUS:F = 3.0f


# instance fields
.field private m_BackgroundColor:I

.field private m_CenterCirclePath:Landroid/graphics/Path;

.field private m_CenterX:I

.field private m_CenterY:I

.field private m_FaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

.field private final m_FaceKeyPointEdges:Ljava/util/List;
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

.field private m_FaceKeyPointPaint:Landroid/graphics/Paint;

.field private final m_FaceKeyPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

.field private m_FaceKeyPointsPath:Landroid/graphics/Path;

.field private m_Radius:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-direct {p0, p2}, initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-direct {p0, p2}, initialize(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize(Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [I

    const v3, 0x1010031

    aput v3, v2, v4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x106000f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v4, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, m_BackgroundColor:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040002

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, m_FaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchDraw(Landroid/graphics/Canvas;)V

    new-instance v9, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {v9, v0}, Landroid/graphics/Paint;-><init>(I)V

    iget v0, p0, m_BackgroundColor:I

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, getWidth()I

    move-result v3

    invoke-virtual {p0}, getHeight()I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v0, p0, m_CenterX:I

    int-to-float v0, v0

    iget v1, p0, m_CenterY:I

    int-to-float v1, v1

    iget v2, p0, m_Radius:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, m_CenterCirclePath:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    iget-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, m_FaceKeyPointPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, m_FaceKeyPointPaint:Landroid/graphics/Paint;

    iget-object v0, p0, m_FaceKeyPointPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, m_FaceKeyPointPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, m_FaceKeyPointPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :cond_0
    iget-object v0, p0, m_FaceKeyPointsPath:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    iget-object v0, p0, m_FaceKeyPointsPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_1
    if-ltz v8, :cond_2

    iget-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/PointF;

    iget v12, v10, Landroid/graphics/PointF;->x:F

    iget v13, v10, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, m_FaceKeyPointsPath:Landroid/graphics/Path;

    const/high16 v1, 0x40400000    # 3.0f

    sub-float v1, v12, v1

    const/high16 v2, 0x40400000    # 3.0f

    sub-float v2, v13, v2

    const/high16 v3, 0x40400000    # 3.0f

    add-float/2addr v3, v12

    const/high16 v4, 0x40400000    # 3.0f

    add-float/2addr v4, v13

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, m_FaceKeyPointsPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_2
    iget-object v0, p0, m_FaceKeyPointsPath:Landroid/graphics/Path;

    iget-object v1, p0, m_FaceKeyPointPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_3
    iget-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_4

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    iget-object v0, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :cond_4
    iget-object v0, p0, m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

    if-eqz v0, :cond_5

    iget-object v0, p0, m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    :goto_2
    iget-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    :goto_3
    if-ltz v8, :cond_6

    iget-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;

    iget-object v11, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Landroid/graphics/PointF;

    iget-object v7, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Landroid/graphics/PointF;

    iget-object v0, p0, m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

    iget v1, v11, Landroid/graphics/PointF;->x:F

    iget v2, v11, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

    iget v1, v7, Landroid/graphics/PointF;->x:F

    iget v2, v7, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

    goto :goto_2

    :cond_6
    iget-object v0, p0, m_FaceKeyPointsEdgePath:Landroid/graphics/Path;

    iget-object v1, p0, m_FaceKeyPointEdgePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_7
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 12

    div-int/lit8 v7, p1, 0x2

    iput v7, p0, m_CenterX:I

    div-int/lit8 v7, p2, 0x2

    iput v7, p0, m_CenterY:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iput v7, p0, m_Radius:I

    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    iput-object v7, p0, m_CenterCirclePath:Landroid/graphics/Path;

    iget-object v7, p0, m_CenterCirclePath:Landroid/graphics/Path;

    iget v8, p0, m_CenterX:I

    int-to-float v8, v8

    iget v9, p0, m_CenterY:I

    int-to-float v9, v9

    iget v10, p0, m_Radius:I

    int-to-float v10, v10

    sget-object v11, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    iget-object v7, p0, m_FaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_0

    const/16 v1, 0x12

    iget-object v7, p0, m_FaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v7, p0, m_FaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    sub-int v4, v7, v1

    const/4 v7, 0x1

    invoke-static {v2, v0, v4, v4, v7}, Lcom/oneplus/faceunlock/utils/Utils;->getRatioStretchedSize(IIIIZ)Landroid/util/Size;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v7

    sub-int v7, p1, v7

    div-int/lit8 v3, v7, 0x2

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v7

    sub-int v7, p2, v7

    div-int/lit8 v6, v7, 0x2

    add-int/lit8 v6, v6, 0x24

    iget-object v7, p0, m_FaceBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v5}, Landroid/util/Size;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    invoke-virtual {v7, v3, v6, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    invoke-super/range {p0 .. p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public setFaceKeyPointEdges(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, m_FaceKeyPointEdges:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setFaceKeyPoints(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, m_FaceKeyPoints:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    invoke-virtual {p0}, invalidate()V

    return-void
.end method
