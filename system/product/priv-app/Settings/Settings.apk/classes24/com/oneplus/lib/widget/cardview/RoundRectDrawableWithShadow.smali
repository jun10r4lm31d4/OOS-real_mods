.class Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field static final COS_45:D

.field static final SHADOW_MULTIPLIER:F = 1.5f

.field static sRoundRectHelper:Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:I

.field mMaxShadowSize:F

.field mPaint:Landroid/graphics/Paint;

.field private mPrintedShadowClipWarning:Z

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, COS_45:D

    return-void
.end method

.method constructor <init>(Landroid/content/res/Resources;IFFF)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, mDirty:Z

    iput-boolean v0, p0, mAddPaddingForCorners:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, mPrintedShadowClipWarning:Z

    sget v1, Lcom/oneplus/commonctrl/R$color;->cardview_shadow_start_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, mShadowStartColor:I

    sget v1, Lcom/oneplus/commonctrl/R$color;->cardview_shadow_end_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, mShadowEndColor:I

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->cardview_compat_inset_shadow:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mInsetShadow:I

    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v1, p3

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, p0, mCornerRadius:F

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, mCardBounds:Landroid/graphics/RectF;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v1, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0, p4, p5}, setShadowSize(FF)V

    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, mRawMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, buildShadowCorners()V

    return-void
.end method

.method private buildShadowCorners()V
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, mCornerRadius:F

    neg-float v3, v2

    neg-float v4, v2

    invoke-direct {v1, v3, v4, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, v0, mShadowSize:F

    neg-float v4, v3

    neg-float v3, v3

    invoke-virtual {v2, v4, v3}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, mCornerRadius:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, mShadowSize:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v3, v0, mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget v3, v0, mCornerRadius:F

    iget v4, v0, mShadowSize:F

    add-float v6, v3, v4

    div-float v6, v3, v6

    iget-object v8, v0, mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v15, Landroid/graphics/RadialGradient;

    const/4 v10, 0x0

    const/4 v11, 0x0

    add-float v12, v3, v4

    const/4 v3, 0x3

    new-array v13, v3, [I

    iget v4, v0, mShadowStartColor:I

    aput v4, v13, v7

    const/16 v16, 0x1

    aput v4, v13, v16

    iget v4, v0, mShadowEndColor:I

    const/16 v17, 0x2

    aput v4, v13, v17

    new-array v14, v3, [F

    aput v5, v14, v7

    aput v6, v14, v16

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v14, v17

    sget-object v4, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v15

    move-object v5, v15

    move-object v15, v4

    invoke-direct/range {v9 .. v15}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, v0, mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    iget v8, v0, mCornerRadius:F

    neg-float v10, v8

    iget v11, v0, mShadowSize:F

    add-float/2addr v10, v11

    const/4 v12, 0x0

    neg-float v8, v8

    sub-float v13, v8, v11

    new-array v14, v3, [I

    iget v8, v0, mShadowStartColor:I

    aput v8, v14, v7

    aput v8, v14, v16

    iget v8, v0, mShadowEndColor:I

    aput v8, v14, v17

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v5

    move v11, v12

    move v12, v13

    move-object v13, v14

    move-object v14, v3

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v3, v0, mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    mul-float/2addr v0, p0

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, mCornerRadius:F

    neg-float v1, v0

    iget v2, p0, mShadowSize:F

    sub-float/2addr v1, v2

    iget v2, p0, mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, mRawShadowSize:F

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v2, v9

    add-float/2addr v0, v2

    iget-object v2, p0, mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v0, v9

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v5

    :goto_0
    iget-object v6, p0, mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float v7, v0, v9

    sub-float/2addr v6, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    move v10, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v4, p0, mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v5, v0, v9

    sub-float v6, v3, v5

    iget v3, p0, mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43340000    # 180.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_3

    const/4 v4, 0x0

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    mul-float v5, v0, v9

    sub-float v6, v3, v5

    iget v3, p0, mCornerRadius:F

    neg-float v3, v3

    iget v5, p0, mShadowSize:F

    add-float v7, v3, v5

    iget-object v8, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v0

    iget-object v4, p0, mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_4

    const/4 v4, 0x0

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float v5, v0, v9

    sub-float v6, v3, v5

    iget v3, p0, mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v0

    iget-object v4, p0, mCardBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v3, p0, mCornerShadowPath:Landroid/graphics/Path;

    iget-object v4, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_5

    const/4 v4, 0x0

    iget-object v3, p0, mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    mul-float/2addr v9, v0

    sub-float v6, v3, v9

    iget v3, p0, mCornerRadius:F

    neg-float v7, v3

    iget-object v8, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private toEven(F)I
    .locals 3

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    return v1

    :cond_0
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, buildComponents(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mDirty:Z

    :cond_0
    iget v0, p0, mRawShadowSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, drawShadow(Landroid/graphics/Canvas;)V

    iget v0, p0, mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, sRoundRectHelper:Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v1, p0, mCardBounds:Landroid/graphics/RectF;

    iget v2, p0, mCornerRadius:F

    iget-object v3, p0, mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void
.end method

.method getCornerRadius()F
    .locals 1

    iget v0, p0, mCornerRadius:F

    return v0
.end method

.method getMaxShadowAndCornerPadding(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, getPadding(Landroid/graphics/Rect;)Z

    return-void
.end method

.method getMaxShadowSize()F
    .locals 1

    iget v0, p0, mRawMaxShadowSize:F

    return v0
.end method

.method getMinHeight()F
    .locals 5

    iget v0, p0, mRawMaxShadowSize:F

    iget v1, p0, mCornerRadius:F

    iget v2, p0, mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float v3, v0, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v4

    iget v1, p0, mRawMaxShadowSize:F

    mul-float/2addr v1, v2

    iget v2, p0, mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v0

    return v1
.end method

.method getMinWidth()F
    .locals 4

    iget v0, p0, mRawMaxShadowSize:F

    iget v1, p0, mCornerRadius:F

    iget v2, p0, mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v0, v2

    add-float/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v0, v2

    iget v1, p0, mRawMaxShadowSize:F

    iget v3, p0, mInsetShadow:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    return v1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p0, mRawMaxShadowSize:F

    iget v1, p0, mCornerRadius:F

    iget-boolean v2, p0, mAddPaddingForCorners:Z

    invoke-static {v0, v1, v2}, calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, mRawMaxShadowSize:F

    iget v2, p0, mCornerRadius:F

    iget-boolean v3, p0, mAddPaddingForCorners:Z

    invoke-static {v1, v2, v3}, calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x1

    return v2
.end method

.method getShadowSize()F
    .locals 1

    iget v0, p0, mRawShadowSize:F

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mDirty:Z

    return-void
.end method

.method public setAddPaddingForCorners(Z)V
    .locals 0

    iput-boolean p1, p0, mAddPaddingForCorners:Z

    invoke-virtual {p0}, invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, invalidateSelf()V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method setCornerRadius(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v0, p1

    float-to-int v0, v0

    int-to-float p1, v0

    iget v0, p0, mCornerRadius:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, mCornerRadius:F

    const/4 v0, 0x1

    iput-boolean v0, p0, mDirty:Z

    invoke-virtual {p0}, invalidateSelf()V

    return-void
.end method

.method setMaxShadowSize(F)V
    .locals 1

    iget v0, p0, mRawShadowSize:F

    invoke-virtual {p0, v0, p1}, setShadowSize(FF)V

    return-void
.end method

.method setShadowSize(F)V
    .locals 1

    iget v0, p0, mRawMaxShadowSize:F

    invoke-virtual {p0, p1, v0}, setShadowSize(FF)V

    return-void
.end method

.method setShadowSize(FF)V
    .locals 4

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-ltz v1, :cond_2

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_2

    invoke-direct {p0, p1}, toEven(F)I

    move-result v0

    int-to-float p1, v0

    invoke-direct {p0, p2}, toEven(F)I

    move-result v0

    int-to-float p2, v0

    cmpl-float v0, p1, p2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    move p1, p2

    iget-boolean v0, p0, mPrintedShadowClipWarning:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, mPrintedShadowClipWarning:Z

    :cond_0
    iget v0, p0, mRawShadowSize:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    iget v0, p0, mRawMaxShadowSize:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, mRawShadowSize:F

    iput p2, p0, mRawMaxShadowSize:F

    const/high16 v0, 0x3fc00000    # 1.5f

    mul-float/2addr v0, p1

    iget v2, p0, mInsetShadow:I

    int-to-float v3, v2

    add-float/2addr v0, v3

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v0, v3

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, mShadowSize:F

    int-to-float v0, v2

    add-float/2addr v0, p2

    iput v0, p0, mMaxShadowSize:F

    iput-boolean v1, p0, mDirty:Z

    invoke-virtual {p0}, invalidateSelf()V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid shadow size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
