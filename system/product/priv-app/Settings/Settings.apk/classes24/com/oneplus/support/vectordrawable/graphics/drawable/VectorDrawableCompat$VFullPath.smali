.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;
.super Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VFullPath"
.end annotation


# static fields
.field private static final FILL_TYPE_WINDING:I


# instance fields
.field mFillAlpha:F

.field mFillColor:I

.field mFillRule:I

.field mStrokeAlpha:F

.field mStrokeColor:I

.field mStrokeLineCap:Landroid/graphics/Paint$Cap;

.field mStrokeLineJoin:Landroid/graphics/Paint$Join;

.field mStrokeMiterlimit:F

.field mStrokeWidth:F

.field private mThemeAttrs:[I

.field mTrimPathEnd:F

.field mTrimPathOffset:F

.field mTrimPathStart:F


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mStrokeColor:I

    const/4 v1, 0x0

    iput v1, p0, mStrokeWidth:F

    iput v0, p0, mFillColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, mStrokeAlpha:F

    iput v0, p0, mFillRule:I

    iput v2, p0, mFillAlpha:F

    iput v1, p0, mTrimPathStart:F

    iput v2, p0, mTrimPathEnd:F

    iput v1, p0, mTrimPathOffset:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, mStrokeLineCap:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, mStrokeMiterlimit:F

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    const/4 v0, 0x0

    iput v0, p0, mStrokeColor:I

    const/4 v1, 0x0

    iput v1, p0, mStrokeWidth:F

    iput v0, p0, mFillColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, mStrokeAlpha:F

    iput v0, p0, mFillRule:I

    iput v2, p0, mFillAlpha:F

    iput v1, p0, mTrimPathStart:F

    iput v2, p0, mTrimPathEnd:F

    iput v1, p0, mTrimPathOffset:F

    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, mStrokeLineCap:Landroid/graphics/Paint$Cap;

    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    iput-object v0, p0, mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, mStrokeMiterlimit:F

    iget-object v0, p1, mThemeAttrs:[I

    iput-object v0, p0, mThemeAttrs:[I

    iget v0, p1, mStrokeColor:I

    iput v0, p0, mStrokeColor:I

    iget v0, p1, mStrokeWidth:F

    iput v0, p0, mStrokeWidth:F

    iget v0, p1, mStrokeAlpha:F

    iput v0, p0, mStrokeAlpha:F

    iget v0, p1, mFillColor:I

    iput v0, p0, mFillColor:I

    iget v0, p1, mFillRule:I

    iput v0, p0, mFillRule:I

    iget v0, p1, mFillAlpha:F

    iput v0, p0, mFillAlpha:F

    iget v0, p1, mTrimPathStart:F

    iput v0, p0, mTrimPathStart:F

    iget v0, p1, mTrimPathEnd:F

    iput v0, p0, mTrimPathEnd:F

    iget v0, p1, mTrimPathOffset:F

    iput v0, p0, mTrimPathOffset:F

    iget-object v0, p1, mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iput-object v0, p0, mStrokeLineCap:Landroid/graphics/Paint$Cap;

    iget-object v0, p1, mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iput-object v0, p0, mStrokeLineJoin:Landroid/graphics/Paint$Join;

    iget v0, p1, mStrokeMiterlimit:F

    iput v0, p0, mStrokeMiterlimit:F

    return-void
.end method

.method private getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    return-object v0
.end method

.method private getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    return-object v0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    return-object v0

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    return-object v0
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    const/4 v0, 0x0

    iput-object v0, p0, mThemeAttrs:[I

    const-string v0, "pathData"

    invoke-static {p2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, mPathName:Ljava/lang/String;

    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Lcom/oneplus/support/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object v3

    iput-object v3, p0, mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    :cond_2
    const/4 v3, 0x1

    iget v4, p0, mFillColor:I

    const-string v5, "fillColor"

    invoke-static {p1, p2, v5, v3, v4}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, mFillColor:I

    const/16 v3, 0xc

    iget v4, p0, mFillAlpha:F

    const-string v5, "fillAlpha"

    invoke-static {p1, p2, v5, v3, v4}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v3

    iput v3, p0, mFillAlpha:F

    const/16 v3, 0x8

    const/4 v4, -0x1

    const-string v5, "strokeLineCap"

    invoke-static {p1, p2, v5, v3, v4}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v3

    iget-object v5, p0, mStrokeLineCap:Landroid/graphics/Paint$Cap;

    invoke-direct {p0, v3, v5}, getStrokeLineCap(ILandroid/graphics/Paint$Cap;)Landroid/graphics/Paint$Cap;

    move-result-object v5

    iput-object v5, p0, mStrokeLineCap:Landroid/graphics/Paint$Cap;

    const/16 v5, 0x9

    const-string v6, "strokeLineJoin"

    invoke-static {p1, p2, v6, v5, v4}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, mStrokeLineJoin:Landroid/graphics/Paint$Join;

    invoke-direct {p0, v4, v5}, getStrokeLineJoin(ILandroid/graphics/Paint$Join;)Landroid/graphics/Paint$Join;

    move-result-object v5

    iput-object v5, p0, mStrokeLineJoin:Landroid/graphics/Paint$Join;

    const/16 v5, 0xa

    iget v6, p0, mStrokeMiterlimit:F

    const-string v7, "strokeMiterLimit"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, mStrokeMiterlimit:F

    const/4 v5, 0x3

    iget v6, p0, mStrokeColor:I

    const-string v7, "strokeColor"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedColor(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, mStrokeColor:I

    const/16 v5, 0xb

    iget v6, p0, mStrokeAlpha:F

    const-string v7, "strokeAlpha"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, mStrokeAlpha:F

    const/4 v5, 0x4

    iget v6, p0, mStrokeWidth:F

    const-string v7, "strokeWidth"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, mStrokeWidth:F

    const/4 v5, 0x6

    iget v6, p0, mTrimPathEnd:F

    const-string v7, "trimPathEnd"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, mTrimPathEnd:F

    const/4 v5, 0x7

    iget v6, p0, mTrimPathOffset:F

    const-string v7, "trimPathOffset"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, mTrimPathOffset:F

    const/4 v5, 0x5

    iget v6, p0, mTrimPathStart:F

    const-string v7, "trimPathStart"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result v5

    iput v5, p0, mTrimPathStart:F

    const/16 v5, 0xd

    iget v6, p0, mFillRule:I

    const-string v7, "fillType"

    invoke-static {p1, p2, v7, v5, v6}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v5

    iput v5, p0, mFillRule:I

    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 1

    iget-object v0, p0, mThemeAttrs:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    iget-object v0, p0, mThemeAttrs:[I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method getFillAlpha()F
    .locals 1

    iget v0, p0, mFillAlpha:F

    return v0
.end method

.method getFillColor()I
    .locals 1

    iget v0, p0, mFillColor:I

    return v0
.end method

.method getStrokeAlpha()F
    .locals 1

    iget v0, p0, mStrokeAlpha:F

    return v0
.end method

.method getStrokeColor()I
    .locals 1

    iget v0, p0, mStrokeColor:I

    return v0
.end method

.method getStrokeWidth()F
    .locals 1

    iget v0, p0, mStrokeWidth:F

    return v0
.end method

.method getTrimPathEnd()F
    .locals 1

    iget v0, p0, mTrimPathEnd:F

    return v0
.end method

.method getTrimPathOffset()F
    .locals 1

    iget v0, p0, mTrimPathOffset:F

    return v0
.end method

.method getTrimPathStart()F
    .locals 1

    iget v0, p0, mTrimPathStart:F

    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    sget-object v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_PATH:[I

    invoke-static {p1, p3, p2, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-direct {p0, v0, p4}, updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method setFillAlpha(F)V
    .locals 0

    iput p1, p0, mFillAlpha:F

    return-void
.end method

.method setFillColor(I)V
    .locals 0

    iput p1, p0, mFillColor:I

    return-void
.end method

.method setStrokeAlpha(F)V
    .locals 0

    iput p1, p0, mStrokeAlpha:F

    return-void
.end method

.method setStrokeColor(I)V
    .locals 0

    iput p1, p0, mStrokeColor:I

    return-void
.end method

.method setStrokeWidth(F)V
    .locals 0

    iput p1, p0, mStrokeWidth:F

    return-void
.end method

.method setTrimPathEnd(F)V
    .locals 0

    iput p1, p0, mTrimPathEnd:F

    return-void
.end method

.method setTrimPathOffset(F)V
    .locals 0

    iput p1, p0, mTrimPathOffset:F

    return-void
.end method

.method setTrimPathStart(F)V
    .locals 0

    iput p1, p0, mTrimPathStart:F

    return-void
.end method
