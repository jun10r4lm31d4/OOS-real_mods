.class public Lcom/oneplus/settings/ui/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final RESTRICT_MODE:Z = false

.field private static final TAG:Ljava/lang/String; = "ColorPickerView"


# instance fields
.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHueIndicatorPaint:Landroid/graphics/Paint;

.field private mHueIndicatorWidth:F

.field private mHueInidcatorOffset:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHuePanelHeight:F

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTouchRect:Landroid/graphics/RectF;

.field private mIndicatorBlurRadius:F

.field private mIndicatorBorderWidth:F

.field private mIndicatorColor:I

.field private mIndicatorCornerRadius:F

.field private mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

.field private mMarginLeft:F

.field private mMarginTop:F

.field private mMinHeight:F

.field private mMinWidth:F

.field private mPadding:F

.field private mPanelSpacing:F

.field private mPanelWidth:F

.field private mSVIndicatorPaint:Landroid/graphics/Paint;

.field private mSVIndicatorWidth:F

.field private mSVPanelHeight:F

.field private mSat:F

.field private mSatPaint:Landroid/graphics/Paint;

.field private mSatRect:Landroid/graphics/RectF;

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatTouchRect:Landroid/graphics/RectF;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTouchRect:Landroid/graphics/RectF;

.field private mTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValPaint:Landroid/graphics/Paint;

.field private mValRect:Landroid/graphics/RectF;

.field private mValShader:Landroid/graphics/Shader;

.field private mValTouchRect:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, mTouchPoint:Landroid/graphics/Point;

    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, mHue:F

    const/4 v0, 0x0

    iput v0, p0, mSat:F

    iput v0, p0, mVal:F

    invoke-direct {p0}, init()V

    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, mHueRect:Landroid/graphics/RectF;

    iget-object v1, p0, mHueShader:Landroid/graphics/Shader;

    if-nez v1, :cond_1

    const/16 v1, 0x169

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v10, v2

    :goto_0
    array-length v2, v1

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    if-gt v3, v2, :cond_0

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v5, 0x0

    int-to-float v6, v3

    aput v6, v2, v5

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v2, v4

    const/4 v4, 0x2

    aput v5, v2, v4

    invoke-static {v2}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    aput v2, v1, v10

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    new-instance v11, Landroid/graphics/LinearGradient;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->right:F

    iget v6, v0, Landroid/graphics/RectF;->top:F

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v11

    move-object v7, v1

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v11, p0, mHueShader:Landroid/graphics/Shader;

    iget-object v2, p0, mHuePaint:Landroid/graphics/Paint;

    iget-object v3, p0, mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_1
    iget v1, p0, mIndicatorCornerRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v1, p0, mHueIndicatorWidth:F

    iget v2, p0, mHue:F

    invoke-direct {p0, v2}, hueToPoint(F)Landroid/graphics/Point;

    move-result-object v2

    iget v3, p0, mHue:F

    iget-object v4, p0, mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget v5, p0, mHueIndicatorWidth:F

    sub-float/2addr v4, v5

    iget v5, p0, mIndicatorBorderWidth:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    iget-object v4, p0, mHueRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    iget v4, p0, mIndicatorBorderWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput v3, v4, Landroid/graphics/RectF;->left:F

    iget v5, p0, mHueIndicatorWidth:F

    add-float/2addr v5, v3

    iput v5, v4, Landroid/graphics/RectF;->right:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, p0, mHueInidcatorOffset:F

    sub-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->top:F

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, mHueInidcatorOffset:F

    add-float/2addr v5, v6

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, mIndicatorCornerRadius:F

    iget-object v6, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v5, v6}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatPanel(Landroid/graphics/Canvas;)V
    .locals 11

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, mSatRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, mSatRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, mSatRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, mSatRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, -0x1

    move-object v3, v1

    move v9, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, mSatShader:Landroid/graphics/Shader;

    iget-object v0, p0, mSatPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mSatShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, mSatRect:Landroid/graphics/RectF;

    iget v1, p0, mIndicatorCornerRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, mSatPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, mSat:F

    iget-object v1, p0, mSatRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, p0, mHueIndicatorWidth:F

    sub-float/2addr v1, v2

    iget v2, p0, mIndicatorBorderWidth:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v1

    iget v1, p0, mIndicatorBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput v0, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, mHueIndicatorWidth:F

    add-float/2addr v2, v0

    iput v2, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, mSatRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, mHueInidcatorOffset:F

    sub-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, mSatRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, mHueInidcatorOffset:F

    add-float/2addr v2, v3

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, mIndicatorCornerRadius:F

    iget-object v3, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-direct {p0}, generateSVShader()Landroid/graphics/ComposeShader;

    move-result-object v0

    iget-object v1, p0, mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget-object v2, p0, mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    iget v1, p0, mSat:F

    iget v2, p0, mVal:F

    invoke-direct {p0, v1, v2}, satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v1

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iget v3, p0, mSVIndicatorWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->right:F

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sub-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->top:F

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v4, v3

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, mIndicatorCornerRadius:F

    iget-object v5, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawValPanel(Landroid/graphics/Canvas;)V
    .locals 9

    new-instance v8, Landroid/graphics/LinearGradient;

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    iget v4, v0, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v8, p0, mValShader:Landroid/graphics/Shader;

    iget-object v0, p0, mValPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mValShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    iget v1, p0, mIndicatorCornerRadius:F

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, v1, v2

    mul-float/2addr v1, v2

    iget-object v2, p0, mValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget v0, p0, mVal:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v2, p0, mHueIndicatorWidth:F

    sub-float/2addr v0, v2

    iget v2, p0, mIndicatorBorderWidth:F

    sub-float/2addr v0, v2

    mul-float/2addr v1, v0

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, v0

    iget v0, p0, mIndicatorBorderWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    add-float/2addr v1, v0

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, mHueIndicatorWidth:F

    add-float/2addr v2, v1

    iput v2, v0, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, mValRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, mHueInidcatorOffset:F

    sub-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, mValRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget v3, p0, mHueInidcatorOffset:F

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, mIndicatorCornerRadius:F

    iget-object v3, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private generateRestrictedSVShader()Landroid/graphics/ComposeShader;
    .locals 11

    iget-object v0, p0, mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    const v7, -0xaaaaab

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, mValShader:Landroid/graphics/Shader;

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    const v8, -0x555556

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    move v9, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, mValShader:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    return-object v2
.end method

.method private generateSVShader()Landroid/graphics/ComposeShader;
    .locals 11

    iget-object v0, p0, mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v3, v1, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v4, v1, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    const/4 v6, -0x1

    const/high16 v7, -0x1000000

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, mValShader:Landroid/graphics/Shader;

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    new-instance v1, Landroid/graphics/LinearGradient;

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v5, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v6, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, mSatValRect:Landroid/graphics/RectF;

    iget v7, v2, Landroid/graphics/RectF;->top:F

    const/4 v8, -0x1

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v3, v1

    move v9, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/ComposeShader;

    iget-object v3, p0, mValShader:Landroid/graphics/Shader;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3, v1, v4}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    return-object v2
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 6

    iget-object v0, p0, mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/RectF;->left:F

    mul-float v4, p1, v1

    const/high16 v5, 0x43b40000    # 360.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    return-object v2
.end method

.method private init()V
    .locals 4

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0704f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, mPanelWidth:F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "panel width 375dp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, mPanelWidth:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ColorPickerView"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device width pixels:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput v1, p0, mPanelSpacing:F

    const v2, 0x7f0702b0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mMarginTop:F

    const v2, 0x7f0702ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mMarginLeft:F

    const v2, 0x7f0701ab

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mHuePanelHeight:F

    const v2, 0x7f070534

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mSVPanelHeight:F

    iget v2, p0, mPanelWidth:F

    iput v2, p0, mMinWidth:F

    iget v2, p0, mHuePanelHeight:F

    iget v3, p0, mSVPanelHeight:F

    add-float/2addr v2, v3

    iget v3, p0, mPanelSpacing:F

    add-float/2addr v2, v3

    iput v2, p0, mMinHeight:F

    const v2, 0x7f0701ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mIndicatorCornerRadius:F

    const v2, 0x7f0701ae

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mIndicatorBlurRadius:F

    const v2, 0x7f0701ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mIndicatorBorderWidth:F

    const v2, 0x7f06020a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, mIndicatorColor:I

    const v2, 0x7f0701aa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mHueIndicatorWidth:F

    const v2, 0x7f0701a9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, mHueInidcatorOffset:F

    iget v2, p0, mHueInidcatorOffset:F

    iput v2, p0, mSVIndicatorWidth:F

    iput v1, p0, mPadding:F

    invoke-direct {p0}, initPaintTools()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, setFocusable(Z)V

    invoke-virtual {p0, v1}, setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 5

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mSatValPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mHuePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mSatPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mValPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, mIndicatorColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, mIndicatorBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, mHueIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, mIndicatorBlurRadius:F

    const v3, -0x777778

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    iget-object v0, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, mIndicatorColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v2, p0, mIndicatorBorderWidth:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, mSVIndicatorPaint:Landroid/graphics/Paint;

    iget v1, p0, mIndicatorBlurRadius:F

    invoke-virtual {v0, v1, v4, v4, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method

.method private static isUnspecified(I)Z
    .locals 1

    const/high16 v0, 0x40000000    # 2.0f

    if-eq p0, v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private pointToHue(F)F
    .locals 3

    iget-object v0, p0, mHueRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget v2, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v2, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v2

    :goto_0
    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v2, p1

    div-float/2addr v2, v1

    return v2
.end method

.method private pointToSat(FF)F
    .locals 4

    iget-object v0, p0, mSatRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    mul-float/2addr v3, p1

    return v3
.end method

.method private pointToSatRestrictedMode(FF)F
    .locals 4

    iget-object v0, p0, mSatRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float/2addr v3, v2

    mul-float/2addr v3, p1

    return v3
.end method

.method private pointToSatVal(FF)[F
    .locals 7

    iget-object v0, p0, mSatValRect:Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v2

    mul-float/2addr v6, p1

    aput v6, v1, v4

    const/4 v4, 0x1

    div-float v6, v5, v3

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    aput v5, v1, v4

    return-object v1
.end method

.method private pointToSatValRestrictedMode(FF)[F
    .locals 7

    iget-object v0, p0, mSatValRect:Landroid/graphics/RectF;

    const/4 v1, 0x2

    new-array v1, v1, [F

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v4, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    :goto_0
    iget v4, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    const/4 p2, 0x0

    goto :goto_1

    :cond_2
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    move p2, v3

    goto :goto_1

    :cond_3
    iget v4, v0, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    :goto_1
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    div-float v6, v5, v2

    mul-float/2addr v6, p1

    aput v6, v1, v4

    const/4 v4, 0x1

    div-float v6, v5, v3

    mul-float/2addr v6, p2

    sub-float/2addr v5, v6

    aput v5, v1, v4

    return-object v1
.end method

.method private pointToVal(FF)F
    .locals 5

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    return v3
.end method

.method private pointToValRestrictedMode(FF)F
    .locals 5

    iget-object v0, p0, mValRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    iget v3, v0, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v3

    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v4, v3, v2

    mul-float/2addr v4, p1

    sub-float/2addr v3, v4

    return v3
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 5

    iget-object v0, p0, mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, mSatValRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float v3, p1, v1

    iget-object v4, p0, mSatValRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, p2

    mul-float/2addr v3, v0

    iget-object v4, p0, mSatValRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method private setupHueRect()V
    .locals 8

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, mHueInidcatorOffset:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p0, mHuePanelHeight:F

    add-float/2addr v3, v2

    iget v4, v0, Landroid/graphics/RectF;->right:F

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, mHueRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, mHueTouchRect:Landroid/graphics/RectF;

    iget-object v5, p0, mHueTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mHueRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, mHueTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mHueRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, mHueTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mHueRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget v7, p0, mHueInidcatorOffset:F

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, mHueTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mHueRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private setupSatValRect()V
    .locals 9

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v3, p0, mHuePanelHeight:F

    add-float/2addr v2, v3

    iget v3, p0, mMarginTop:F

    add-float/2addr v2, v3

    iget v3, p0, mPanelSpacing:F

    add-float/2addr v2, v3

    iget v3, v0, Landroid/graphics/RectF;->bottom:F

    iget v4, p0, mMarginTop:F

    sub-float/2addr v3, v4

    iget v4, v0, Landroid/graphics/RectF;->right:F

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, mSatValRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, mSatValTouchRect:Landroid/graphics/RectF;

    iget-object v5, p0, mSatValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mSatValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget v7, p0, mSVIndicatorWidth:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, mSatValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mSatValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v7, p0, mSVIndicatorWidth:F

    div-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, mSatValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mSatValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, mSatValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mSatValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    iget v5, v0, Landroid/graphics/RectF;->top:F

    iget v6, p0, mHuePanelHeight:F

    add-float/2addr v5, v6

    iget v7, p0, mMarginTop:F

    add-float/2addr v5, v7

    iget v7, p0, mPanelSpacing:F

    add-float/2addr v5, v7

    add-float/2addr v6, v5

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1, v5, v4, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, mSatRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, mSatTouchRect:Landroid/graphics/RectF;

    iget-object v2, p0, mSatTouchRect:Landroid/graphics/RectF;

    iget-object v3, p0, mSatRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, mSatTouchRect:Landroid/graphics/RectF;

    iget-object v3, p0, mSatRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, mSatTouchRect:Landroid/graphics/RectF;

    iget-object v3, p0, mSatRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, mSatTouchRect:Landroid/graphics/RectF;

    iget-object v3, p0, mSatRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, mMarginTop:F

    add-float/2addr v2, v6

    iget v3, p0, mPanelSpacing:F

    add-float/2addr v2, v3

    iget v3, p0, mHuePanelHeight:F

    add-float/2addr v3, v2

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v1, v2, v4, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, mValRect:Landroid/graphics/RectF;

    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5}, Landroid/graphics/RectF;-><init>()V

    iput-object v5, p0, mValTouchRect:Landroid/graphics/RectF;

    iget-object v5, p0, mValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iput v6, v5, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, mValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v5, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, mValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iput v6, v5, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, mValTouchRect:Landroid/graphics/RectF;

    iget-object v6, p0, mValRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    iput v6, v5, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, mTouchPoint:Landroid/graphics/Point;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v1, 0x0

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, mTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, mHueTouchRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-direct {p0, v3}, pointToHue(F)F

    move-result v3

    iput v3, p0, mHue:F

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, mSatTouchRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, pointToSat(FF)F

    move-result v3

    iput v3, p0, mSat:F

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v3, p0, mValTouchRect:Landroid/graphics/RectF;

    int-to-float v4, v0

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v3, v4}, pointToVal(FF)F

    move-result v3

    iput v3, p0, mVal:F

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    return v1
.end method


# virtual methods
.method public getColor()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget v1, p0, mHue:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, mSat:F

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, mVal:F

    const/4 v2, 0x2

    aput v1, v0, v2

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, drawHuePanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, drawSatPanel(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, drawValPanel(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {v0}, isUnspecified(I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, mMinWidth:F

    float-to-int v4, v4

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    move v2, v4

    invoke-static {v0}, isUnspecified(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, mMinHeight:F

    float-to-int v4, v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    move v3, v4

    invoke-virtual {p0, v2, v3}, setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, mPadding:F

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, mPadding:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, mPadding:F

    invoke-virtual {p0}, getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, mPadding:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v0, p0, mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v1, p0, mDrawingRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v1

    iget v1, p0, mMarginTop:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, mPanelSpacing:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iget v1, p0, mHueInidcatorOffset:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    iput v0, p0, mHuePanelHeight:F

    invoke-direct {p0}, setupSatValRect()V

    invoke-direct {p0}, setupHueRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, mTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, mTouchPoint:Landroid/graphics/Point;

    invoke-direct {p0, p1}, updateIndicatorIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    nop

    :goto_0
    if-eqz v0, :cond_4

    iget-object v1, p0, mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz v1, :cond_3

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, mHue:F

    aput v6, v4, v5

    iget v5, p0, mSat:F

    aput v5, v4, v3

    iget v5, p0, mVal:F

    aput v5, v4, v2

    invoke-static {v4}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_3
    invoke-virtual {p0}, invalidate()V

    return v3

    :cond_4
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 7

    const/4 v0, 0x3

    new-array v1, v0, [F

    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x0

    aget v3, v1, v2

    iput v3, p0, mHue:F

    const/4 v3, 0x1

    aget v4, v1, v3

    iput v4, p0, mSat:F

    const/4 v4, 0x2

    aget v5, v1, v4

    iput v5, p0, mVal:F

    if-eqz p2, :cond_0

    iget-object v5, p0, mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    if-eqz v5, :cond_0

    new-array v0, v0, [F

    iget v6, p0, mHue:F

    aput v6, v0, v2

    iget v2, p0, mSat:F

    aput v2, v0, v3

    iget v2, p0, mVal:F

    aput v2, v0, v4

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    invoke-interface {v5, v0}, Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    :cond_0
    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    iput-object p1, p0, mListener:Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;

    return-void
.end method
