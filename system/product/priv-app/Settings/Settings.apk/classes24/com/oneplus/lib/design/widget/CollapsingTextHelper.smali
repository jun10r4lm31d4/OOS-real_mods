.class final Lcom/oneplus/lib/design/widget/CollapsingTextHelper;
.super Ljava/lang/Object;
.source "CollapsingTextHelper.java"


# static fields
.field private static final DEBUG_DRAW:Z = false

.field private static final DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

.field private static final USE_SCALING_TEXTURE:Z


# instance fields
.field private mBoundsChanged:Z

.field private final mCollapsedBounds:Landroid/graphics/Rect;

.field private mCollapsedDrawX:F

.field private mCollapsedDrawY:F

.field private mCollapsedShadowColor:I

.field private mCollapsedShadowDx:F

.field private mCollapsedShadowDy:F

.field private mCollapsedShadowRadius:F

.field private mCollapsedTextColor:Landroid/content/res/ColorStateList;

.field private mCollapsedTextGravity:I

.field private mCollapsedTextSize:F

.field private mCollapsedTypeface:Landroid/graphics/Typeface;

.field private final mCurrentBounds:Landroid/graphics/RectF;

.field private mCurrentDrawX:F

.field private mCurrentDrawY:F

.field private mCurrentTextSize:F

.field private mCurrentTypeface:Landroid/graphics/Typeface;

.field private mDrawTitle:Z

.field private final mExpandedBounds:Landroid/graphics/Rect;

.field private mExpandedDrawX:F

.field private mExpandedDrawY:F

.field private mExpandedFraction:F

.field private mExpandedShadowColor:I

.field private mExpandedShadowDx:F

.field private mExpandedShadowDy:F

.field private mExpandedShadowRadius:F

.field private mExpandedTextColor:Landroid/content/res/ColorStateList;

.field private mExpandedTextGravity:I

.field private mExpandedTextSize:F

.field private mExpandedTitleTexture:Landroid/graphics/Bitmap;

.field private mExpandedTypeface:Landroid/graphics/Typeface;

.field private mIsRtl:Z

.field private mPositionInterpolator:Landroid/view/animation/Interpolator;

.field private mScale:F

.field private mState:[I

.field private mText:Ljava/lang/CharSequence;

.field private final mTextPaint:Landroid/text/TextPaint;

.field private mTextSizeInterpolator:Landroid/view/animation/Interpolator;

.field private mTextToDraw:Ljava/lang/CharSequence;

.field private mTextureAscent:F

.field private mTextureDescent:F

.field private mTexturePaint:Landroid/graphics/Paint;

.field private mUseTexture:Z

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, USE_SCALING_TEXTURE:Z

    const/4 v0, 0x0

    sput-object v0, DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    sget-object v0, DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, DEBUG_DRAW_PAINT:Landroid/graphics/Paint;

    const v1, -0xff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, mExpandedTextGravity:I

    iput v0, p0, mCollapsedTextGravity:I

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, mExpandedTextSize:F

    iput v0, p0, mCollapsedTextSize:F

    iput-object p1, p0, mView:Landroid/view/View;

    new-instance v0, Landroid/text/TextPaint;

    const/16 v1, 0x81

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mCollapsedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mExpandedBounds:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mCurrentBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private static blendColors(IIF)I
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    float-to-int v5, v1

    float-to-int v6, v2

    float-to-int v7, v3

    float-to-int v8, v4

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    return v5
.end method

.method private calculateBaseOffsets()V
    .locals 13

    iget v0, p0, mCurrentTextSize:F

    iget v1, p0, mCollapsedTextSize:F

    invoke-direct {p0, v1}, calculateUsingTextSize(F)V

    iget-object v1, p0, mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual {v4, v1, v2, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, mCollapsedTextGravity:I

    iget-boolean v5, p0, mIsRtl:Z

    invoke-static {v4, v5}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    and-int/lit8 v5, v4, 0x70

    const/16 v6, 0x50

    const/16 v7, 0x30

    const/high16 v8, 0x40000000    # 2.0f

    if-eq v5, v7, :cond_2

    if-eq v5, v6, :cond_1

    iget-object v5, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    iget-object v9, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    div-float v9, v5, v8

    iget-object v10, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v10

    sub-float/2addr v9, v10

    iget-object v10, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->centerY()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    iput v10, p0, mCollapsedDrawY:F

    goto :goto_1

    :cond_1
    iget-object v5, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    iput v5, p0, mCollapsedDrawY:F

    goto :goto_1

    :cond_2
    iget-object v5, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget-object v9, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->ascent()F

    move-result v9

    sub-float/2addr v5, v9

    iput v5, p0, mCollapsedDrawY:F

    nop

    :goto_1
    const v5, 0x800007

    and-int v9, v4, v5

    const/4 v10, 0x5

    const/4 v11, 0x1

    if-eq v9, v11, :cond_4

    if-eq v9, v10, :cond_3

    iget-object v9, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    iput v9, p0, mCollapsedDrawX:F

    goto :goto_2

    :cond_3
    iget-object v9, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    int-to-float v9, v9

    sub-float/2addr v9, v1

    iput v9, p0, mCollapsedDrawX:F

    goto :goto_2

    :cond_4
    iget-object v9, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    int-to-float v9, v9

    div-float v12, v1, v8

    sub-float/2addr v9, v12

    iput v9, p0, mCollapsedDrawX:F

    nop

    :goto_2
    iget v9, p0, mExpandedTextSize:F

    invoke-direct {p0, v9}, calculateUsingTextSize(F)V

    iget-object v9, p0, mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v9, :cond_5

    iget-object v3, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v12

    invoke-virtual {v3, v9, v2, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v3

    goto :goto_3

    :cond_5
    nop

    :goto_3
    move v1, v3

    iget v2, p0, mExpandedTextGravity:I

    iget-boolean v3, p0, mIsRtl:Z

    invoke-static {v2, v3}, Lcom/oneplus/support/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    and-int/lit8 v3, v2, 0x70

    if-eq v3, v7, :cond_7

    if-eq v3, v6, :cond_6

    iget-object v3, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    div-float v6, v3, v8

    iget-object v7, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->descent()F

    move-result v7

    sub-float/2addr v6, v7

    iget-object v7, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v6

    iput v7, p0, mExpandedDrawY:F

    goto :goto_4

    :cond_6
    iget-object v3, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, mExpandedDrawY:F

    goto :goto_4

    :cond_7
    iget-object v3, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    sub-float/2addr v3, v6

    iput v3, p0, mExpandedDrawY:F

    nop

    :goto_4
    and-int v3, v2, v5

    if-eq v3, v11, :cond_9

    if-eq v3, v10, :cond_8

    iget-object v3, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iput v3, p0, mExpandedDrawX:F

    goto :goto_5

    :cond_8
    iget-object v3, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    iput v3, p0, mExpandedDrawX:F

    goto :goto_5

    :cond_9
    iget-object v3, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    int-to-float v3, v3

    div-float v5, v1, v8

    sub-float/2addr v3, v5

    iput v3, p0, mExpandedDrawX:F

    nop

    :goto_5
    invoke-direct {p0}, clearTexture()V

    invoke-direct {p0, v0}, setInterpolatedTextSize(F)V

    return-void
.end method

.method private calculateCurrentOffsets()V
    .locals 1

    iget v0, p0, mExpandedFraction:F

    invoke-direct {p0, v0}, calculateOffsets(F)V

    return-void
.end method

.method private calculateIsRtl(Ljava/lang/CharSequence;)Z
    .locals 4

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    move v0, v2

    if-eqz v0, :cond_1

    sget-object v2, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_RTL:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/oneplus/support/core/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {v2, p1, v1, v3}, Lcom/oneplus/support/core/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v1

    return v1
.end method

.method private calculateOffsets(F)V
    .locals 6

    invoke-direct {p0, p1}, interpolateBounds(F)V

    iget v0, p0, mExpandedDrawX:F

    iget v1, p0, mCollapsedDrawX:F

    iget-object v2, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, mCurrentDrawX:F

    iget v0, p0, mExpandedDrawY:F

    iget v1, p0, mCollapsedDrawY:F

    iget-object v2, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    iput v0, p0, mCurrentDrawY:F

    iget v0, p0, mExpandedTextSize:F

    iget v1, p0, mCollapsedTextSize:F

    iget-object v2, p0, mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v0, v1, p1, v2}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v0

    invoke-direct {p0, v0}, setInterpolatedTextSize(F)V

    iget-object v0, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    iget-object v1, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, getCurrentExpandedTextColor()I

    move-result v1

    invoke-direct {p0}, getCurrentCollapsedTextColor()I

    move-result v2

    invoke-static {v1, v2, p1}, blendColors(IIF)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, getCurrentCollapsedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    :goto_0
    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    iget v1, p0, mExpandedShadowRadius:F

    iget v2, p0, mCollapsedShadowRadius:F

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iget v2, p0, mExpandedShadowDx:F

    iget v4, p0, mCollapsedShadowDx:F

    invoke-static {v2, v4, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v2

    iget v4, p0, mExpandedShadowDy:F

    iget v5, p0, mCollapsedShadowDy:F

    invoke-static {v4, v5, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v3

    iget v4, p0, mExpandedShadowColor:I

    iget v5, p0, mCollapsedShadowColor:I

    invoke-static {v4, v5, p1}, blendColors(IIF)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private calculateUsingTextSize(F)V
    .locals 10

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    iget v3, p0, mCollapsedTextSize:F

    invoke-static {p1, v3}, isClose(FF)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    if-eqz v3, :cond_2

    iget v3, p0, mCollapsedTextSize:F

    iput v4, p0, mScale:F

    iget-object v5, p0, mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_1

    iput-object v6, p0, mCurrentTypeface:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    :cond_1
    move v5, v0

    goto :goto_1

    :cond_2
    iget v3, p0, mExpandedTextSize:F

    iget-object v5, p0, mCurrentTypeface:Landroid/graphics/Typeface;

    iget-object v6, p0, mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v5, v6, :cond_3

    iput-object v6, p0, mCurrentTypeface:Landroid/graphics/Typeface;

    const/4 v2, 0x1

    :cond_3
    iget v5, p0, mExpandedTextSize:F

    invoke-static {p1, v5}, isClose(FF)Z

    move-result v5

    if-eqz v5, :cond_4

    iput v4, p0, mScale:F

    goto :goto_0

    :cond_4
    iget v5, p0, mExpandedTextSize:F

    div-float v5, p1, v5

    iput v5, p0, mScale:F

    :goto_0
    iget v5, p0, mCollapsedTextSize:F

    iget v6, p0, mExpandedTextSize:F

    div-float/2addr v5, v6

    mul-float v6, v1, v5

    cmpl-float v7, v6, v0

    if-lez v7, :cond_5

    div-float v7, v0, v5

    invoke-static {v7, v1}, Ljava/lang/Math;->min(FF)F

    move-result v7

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v1

    :goto_1
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-lez v6, :cond_8

    iget v6, p0, mCurrentTextSize:F

    cmpl-float v6, v6, v3

    if-nez v6, :cond_7

    iget-boolean v6, p0, mBoundsChanged:Z

    if-nez v6, :cond_7

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    move v6, v8

    goto :goto_3

    :cond_7
    :goto_2
    move v6, v7

    :goto_3
    move v2, v6

    iput v3, p0, mCurrentTextSize:F

    iput-boolean v8, p0, mBoundsChanged:Z

    :cond_8
    iget-object v6, p0, mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v6, :cond_9

    if-eqz v2, :cond_b

    :cond_9
    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, mCurrentTextSize:F

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    iget-object v9, p0, mCurrentTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    iget v9, p0, mScale:F

    cmpl-float v4, v9, v4

    if-eqz v4, :cond_a

    goto :goto_4

    :cond_a
    move v7, v8

    :goto_4
    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setLinearText(Z)V

    iget-object v4, p0, mText:Ljava/lang/CharSequence;

    iget-object v6, p0, mTextPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v4, v6, v5, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v6, p0, mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v4, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    iput-object v4, p0, mTextToDraw:Ljava/lang/CharSequence;

    iget-object v6, p0, mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0, v6}, calculateIsRtl(Ljava/lang/CharSequence;)Z

    move-result v6

    iput-boolean v6, p0, mIsRtl:Z

    :cond_b
    return-void
.end method

.method private clearTexture()V
    .locals 1

    iget-object v0, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private ensureExpandedTexture()V
    .locals 10

    iget-object v0, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    iget-object v0, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, mTextToDraw:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, calculateOffsets(F)V

    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    iput v0, p0, mTextureAscent:F

    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    iput v0, p0, mTextureDescent:F

    iget-object v0, p0, mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, mTextToDraw:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, mTextureDescent:F

    iget v2, p0, mTextureAscent:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lez v0, :cond_3

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    iget-object v2, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v4, p0, mTextToDraw:Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const/4 v7, 0x0

    int-to-float v2, v1

    iget-object v8, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v8}, Landroid/text/TextPaint;->descent()F

    move-result v8

    sub-float v8, v2, v8

    iget-object v9, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    iget-object v2, p0, mTexturePaint:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    new-instance v2, Landroid/graphics/Paint;

    const/4 v4, 0x3

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, mTexturePaint:Landroid/graphics/Paint;

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private getCurrentCollapsedTextColor()I
    .locals 3

    iget-object v0, p0, mState:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private getCurrentExpandedTextColor()I
    .locals 3

    iget-object v0, p0, mState:[I

    if-eqz v0, :cond_0

    iget-object v1, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    return v0
.end method

.method private interpolateBounds(F)V
    .locals 4

    iget-object v0, p0, mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget-object v2, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, mCurrentBounds:Landroid/graphics/RectF;

    iget v1, p0, mExpandedDrawY:F

    iget v2, p0, mCollapsedDrawY:F

    iget-object v3, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    iget-object v0, p0, mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget-object v2, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    iget-object v3, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->right:F

    iget-object v0, p0, mCurrentBounds:Landroid/graphics/RectF;

    iget-object v1, p0, mExpandedBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    iget-object v2, p0, mCollapsedBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    int-to-float v2, v2

    iget-object v3, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-static {v1, v2, p1, v3}, lerp(FFFLandroid/view/animation/Interpolator;)F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    return-void
.end method

.method private static isClose(FF)Z
    .locals 2

    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static lerp(FFFLandroid/view/animation/Interpolator;)F
    .locals 1

    if-eqz p3, :cond_0

    invoke-interface {p3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oneplus/lib/design/widget/Utils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method private readFontFamilyTypeface(I)Landroid/graphics/Typeface;
    .locals 4

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x10103ac

    aput v3, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v2

    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    const/4 v1, 0x0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static rectEquals(Landroid/graphics/Rect;IIII)Z
    .locals 1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-ne v0, p3, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-ne v0, p4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setInterpolatedTextSize(F)V
    .locals 2

    invoke-direct {p0, p1}, calculateUsingTextSize(F)V

    sget-boolean v0, USE_SCALING_TEXTURE:Z

    if-eqz v0, :cond_0

    iget v0, p0, mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, mUseTexture:Z

    iget-boolean v0, p0, mUseTexture:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, ensureExpandedTexture()V

    :cond_1
    iget-object v0, p0, mView:Landroid/view/View;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, mTextToDraw:Ljava/lang/CharSequence;

    if-eqz v1, :cond_5

    iget-boolean v1, p0, mDrawTitle:Z

    if-eqz v1, :cond_5

    iget v1, p0, mCurrentDrawX:F

    iget v2, p0, mCurrentDrawY:F

    iget-boolean v3, p0, mUseTexture:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move v9, v3

    if-eqz v9, :cond_1

    iget v3, p0, mTextureAscent:F

    iget v4, p0, mScale:F

    mul-float/2addr v3, v4

    iget v5, p0, mTextureDescent:F

    mul-float/2addr v5, v4

    move v10, v3

    move v11, v5

    goto :goto_1

    :cond_1
    iget-object v3, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    move-result v3

    iget v4, p0, mScale:F

    mul-float/2addr v3, v4

    iget-object v4, p0, mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->descent()F

    move-result v4

    iget v5, p0, mScale:F

    mul-float/2addr v5, v4

    move v10, v3

    move v11, v5

    :goto_1
    if-eqz v9, :cond_2

    add-float/2addr v2, v10

    move v12, v2

    goto :goto_2

    :cond_2
    move v12, v2

    :goto_2
    iget v2, p0, mScale:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2, v2, v1, v12}, Landroid/graphics/Canvas;->scale(FFFF)V

    :cond_3
    if-eqz v9, :cond_4

    iget-object v2, p0, mExpandedTitleTexture:Landroid/graphics/Bitmap;

    iget-object v3, p0, mTexturePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v12, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    iget-object v3, p0, mTextToDraw:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    iget-object v8, p0, mTextPaint:Landroid/text/TextPaint;

    move-object v2, p1

    move v6, v1

    move v7, v12

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    :cond_5
    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method getCollapsedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getCollapsedTextGravity()I
    .locals 1

    iget v0, p0, mCollapsedTextGravity:I

    return v0
.end method

.method getCollapsedTextSize()F
    .locals 1

    iget v0, p0, mCollapsedTextSize:F

    return v0
.end method

.method getCollapsedTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method getExpandedTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method getExpandedTextGravity()I
    .locals 1

    iget v0, p0, mExpandedTextGravity:I

    return v0
.end method

.method getExpandedTextSize()F
    .locals 1

    iget v0, p0, mExpandedTextSize:F

    return v0
.end method

.method getExpandedTypeface()Landroid/graphics/Typeface;
    .locals 1

    iget-object v0, p0, mExpandedTypeface:Landroid/graphics/Typeface;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :goto_0
    return-object v0
.end method

.method getExpansionFraction()F
    .locals 1

    iget v0, p0, mExpandedFraction:F

    return v0
.end method

.method getText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final isStateful()Z
    .locals 1

    iget-object v0, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onBoundsChanged()V
    .locals 1

    iget-object v0, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, mDrawTitle:Z

    return-void
.end method

.method public recalculate()V
    .locals 1

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, calculateBaseOffsets()V

    invoke-direct {p0}, calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method setCollapsedBounds(IIII)V
    .locals 1

    iget-object v0, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mCollapsedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mBoundsChanged:Z

    invoke-virtual {p0}, onBoundsChanged()V

    :cond_0
    return-void
.end method

.method setCollapsedTextAppearance(I)V
    .locals 3

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    iget v2, p0, mCollapsedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, mCollapsedTextSize:F

    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, mCollapsedShadowColor:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mCollapsedShadowDx:F

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mCollapsedShadowDy:F

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mCollapsedShadowRadius:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    invoke-direct {p0, p1}, readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, mCollapsedTypeface:Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {p0}, recalculate()V

    return-void
.end method

.method setCollapsedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, mCollapsedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextGravity(I)V
    .locals 1

    iget v0, p0, mCollapsedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, mCollapsedTextGravity:I

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTextSize(F)V
    .locals 1

    iget v0, p0, mCollapsedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, mCollapsedTextSize:F

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setCollapsedTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, mCollapsedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedBounds(IIII)V
    .locals 1

    iget-object v0, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v0, p1, p2, p3, p4}, rectEquals(Landroid/graphics/Rect;IIII)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mBoundsChanged:Z

    invoke-virtual {p0}, onBoundsChanged()V

    :cond_0
    return-void
.end method

.method setExpandedTextAppearance(I)V
    .locals 3

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textColor:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_textSize:I

    iget v2, p0, mExpandedTextSize:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, mExpandedTextSize:F

    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, mExpandedShadowColor:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mExpandedShadowDx:F

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowDy:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mExpandedShadowDy:F

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OpTextAppearance_android_shadowRadius:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, mExpandedShadowRadius:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    invoke-direct {p0, p1}, readFontFamilyTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, mExpandedTypeface:Landroid/graphics/Typeface;

    :cond_2
    invoke-virtual {p0}, recalculate()V

    return-void
.end method

.method setExpandedTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, mExpandedTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextGravity(I)V
    .locals 1

    iget v0, p0, mExpandedTextGravity:I

    if-eq v0, p1, :cond_0

    iput p1, p0, mExpandedTextGravity:I

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTextSize(F)V
    .locals 1

    iget v0, p0, mExpandedTextSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, mExpandedTextSize:F

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setExpandedTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    iget-object v0, p0, mExpandedTypeface:Landroid/graphics/Typeface;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, mExpandedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0}, recalculate()V

    :cond_0
    return-void
.end method

.method setExpansionFraction(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Lcom/oneplus/lib/util/MathUtils;->constrain(FFF)F

    move-result p1

    iget v0, p0, mExpandedFraction:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, mExpandedFraction:F

    invoke-direct {p0}, calculateCurrentOffsets()V

    :cond_0
    return-void
.end method

.method setPositionInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, mPositionInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, recalculate()V

    return-void
.end method

.method final setState([I)Z
    .locals 1

    iput-object p1, p0, mState:[I

    invoke-virtual {p0}, isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, recalculate()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method setText(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, mText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iput-object p1, p0, mText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, mTextToDraw:Ljava/lang/CharSequence;

    invoke-direct {p0}, clearTexture()V

    invoke-virtual {p0}, recalculate()V

    :cond_1
    return-void
.end method

.method setTextSizeInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, mTextSizeInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0}, recalculate()V

    return-void
.end method

.method setTypefaces(Landroid/graphics/Typeface;)V
    .locals 0

    iput-object p1, p0, mExpandedTypeface:Landroid/graphics/Typeface;

    iput-object p1, p0, mCollapsedTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0}, recalculate()V

    return-void
.end method
