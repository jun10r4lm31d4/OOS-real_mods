.class public Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.super Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;,
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;,
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;,
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;,
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;,
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;,
        Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;
    }
.end annotation


# static fields
.field static final DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;


# instance fields
.field private mAllowCaching:Z

.field private mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mMutated:Z

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFloats:[F

.field private final mTmpMatrix:Landroid/graphics/Matrix;

.field private mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    sput-object v0, DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, mAllowCaching:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, mTmpFloats:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpBounds:Landroid/graphics/Rect;

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-direct {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>()V

    iput-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, mAllowCaching:Z

    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, mTmpFloats:[F

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, mTmpMatrix:Landroid/graphics/Matrix;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTmpBounds:Landroid/graphics/Rect;

    iput-object p1, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v1, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p1, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v0, v1, p1}, updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method static applyAlpha(IF)I
    .locals 2

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method public static create(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
    .locals 6

    const-string v0, "parser error"

    const-string v1, "VectorDrawableCompat"

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, <init>()V

    invoke-static {p0, p1, p2}, Lcom/oneplus/support/core/content/res/ResourcesCompat;->getDrawable(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    iget-object p1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    iput-object p0, v0, mCachedConstantStateDelegate:Landroid/graphics/drawable/Drawable$ConstantState;

    return-object v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v4, :cond_2

    invoke-static {p0, p1, v2, p2}, createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "No start tag found"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0}, <init>()V

    invoke-virtual {v0, p0, p1, p2, p3}, inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-object v0
.end method

.method private inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    iget-object v2, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootGroup:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    move v5, v4

    :goto_0
    if-eq v2, v4, :cond_8

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    const/4 v7, 0x3

    if-ge v6, v3, :cond_0

    if-eq v2, v7, :cond_8

    :cond_0
    const/4 v6, 0x2

    const-string v8, "group"

    if-ne v2, v6, :cond_6

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    const-string v7, "path"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;

    invoke-direct {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;-><init>()V

    invoke-virtual {v2, p1, p3, p4, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VFullPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v5, v6, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->getPathName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->getPathName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 v5, 0x0

    iget v6, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v2, v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto :goto_1

    :cond_2
    const-string v7, "clip-path"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;

    invoke-direct {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;-><init>()V

    invoke-virtual {v2, p1, p3, p4, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v6, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->getPathName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->getPathName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget v6, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v2, v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mChangingConfigurations:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto :goto_1

    :cond_4
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;

    invoke-direct {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;-><init>()V

    invoke-virtual {v2, p1, p3, p4, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V

    iget-object v6, v6, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->getGroupName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v2}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v6, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget v2, v2, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VGroup;->mChangingConfigurations:I

    or-int/2addr v2, v6

    iput v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    goto :goto_1

    :cond_6
    if-ne v2, v7, :cond_7

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    :cond_7
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto/16 :goto_0

    :cond_8
    if-nez v5, :cond_9

    return-void

    :cond_9
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "no path defined"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private needMirroring()Z
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, isAutoMirrored()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->getLayoutDirection(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    if-ne p0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method private static parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    return-object p1

    :pswitch_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_0
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_1
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :cond_2
    sget-object p0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object p0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    const-string/jumbo v1, "tintMode"

    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-static {p1, p2, v1, v2, v3}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedInt(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;II)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v1, v2}, parseTintModeCompat(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    :cond_0
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    const-string v3, "autoMirrored"

    invoke-static {p1, p2, v3, v1, v2}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedBoolean(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    const/4 p0, 0x7

    iget v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const-string/jumbo v2, "viewportWidth"

    invoke-static {p1, p2, v2, p0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p0

    iput p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const/16 p0, 0x8

    iget v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    const-string/jumbo v2, "viewportHeight"

    invoke-static {p1, p2, v2, p0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p0

    iput p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    iget p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportWidth:F

    const/4 v1, 0x0

    cmpg-float p0, p0, v1

    if-lez p0, :cond_5

    iget p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mViewportHeight:F

    cmpg-float p0, p0, v1

    if-lez p0, :cond_4

    const/4 p0, 0x3

    iget v2, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    iput p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    const/4 p0, 0x2

    iget v2, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    invoke-virtual {p1, p0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    iput p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    iget p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    cmpg-float p0, p0, v1

    if-lez p0, :cond_3

    iget p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    cmpg-float p0, p0, v1

    if-lez p0, :cond_2

    const/4 p0, 0x4

    invoke-virtual {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getAlpha()F

    move-result v1

    const-string v2, "alpha"

    invoke-static {p1, p2, v2, p0, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->getNamedFloat(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;IF)F

    move-result p0

    invoke-virtual {v0, p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    iput-object p0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mRootName:Ljava/lang/String;

    iget-object p1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/support/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires height > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires width > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportHeight > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "<vector> tag requires viewportWidth > 0"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->applyTheme(Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public canApplyTheme()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->canApplyTheme(Landroid/graphics/drawable/Drawable;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic clearColorFilter()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->clearColorFilter()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    iget-object v0, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_9

    iget-object v0, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    iget-object v0, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    :cond_2
    iget-object v1, p0, mTmpMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, p0, mTmpMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, mTmpFloats:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object v1, p0, mTmpFloats:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget-object v3, p0, mTmpFloats:[F

    const/4 v4, 0x4

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, mTmpFloats:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget-object v5, p0, mTmpFloats:[F

    const/4 v6, 0x3

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    const/high16 v7, 0x3f800000    # 1.0f

    if-nez v4, :cond_3

    cmpl-float v4, v5, v6

    if-eqz v4, :cond_4

    :cond_3
    move v1, v7

    move v3, v1

    :cond_4
    iget-object v4, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v1, v4

    iget-object v4, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v3, v4

    const/16 v4, 0x800

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-lez v1, :cond_9

    if-gtz v3, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    iget-object v5, p0, mTmpBounds:Landroid/graphics/Rect;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    invoke-virtual {p1, v8, v5}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, needMirroring()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {p1, v5, v7}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_6
    iget-object v5, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v2, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->createCachedBitmapIfNeeded(II)V

    iget-boolean v2, p0, mAllowCaching:Z

    if-nez v2, :cond_7

    iget-object v2, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    goto :goto_0

    :cond_7
    iget-object v2, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->canReuseCache()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v2, v1, v3}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCachedBitmap(II)V

    iget-object v1, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->updateCacheStates()V

    :cond_8
    :goto_0
    iget-object v1, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object p0, p0, mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v0, p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    :goto_1
    return-void
.end method

.method public getAlpha()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->getAlpha(Landroid/graphics/drawable/Drawable;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v0

    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->getChangingConfigurations()I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method public bridge synthetic getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    return-object p0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableDelegateState;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    return-object p0

    :cond_0
    iget-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-virtual {p0}, getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    return-object p0
.end method

.method public bridge synthetic getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseHeight:F

    float-to-int p0, p0

    return p0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mBaseWidth:F

    float-to-int p0, p0

    return p0
.end method

.method public bridge synthetic getMinimumHeight()I
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumHeight()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getMinimumWidth()I
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getMinimumWidth()I

    move-result p0

    return p0
.end method

.method public getOpacity()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x3

    return p0
.end method

.method public bridge synthetic getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic getState()[I
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getState()[I

    move-result-object p0

    return-object p0
.end method

.method getTargetByName(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->mVGTargetsMap:Lcom/oneplus/support/collection/ArrayMap;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTransparentRegion()Landroid/graphics/Region;
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object p0

    return-object p0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->inflate(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    return-void

    :cond_0
    iget-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    new-instance v1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    iput-object v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    sget-object v1, Lcom/oneplus/support/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_TYPE_ARRAY:[I

    invoke-static {p1, p4, p3, v1}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-direct {p0, v1, p2}, updateStateFromTypedArray(Landroid/content/res/TypedArray;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, getChangingConfigurations()I

    move-result v1

    iput v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mChangingConfigurations:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mCacheDirty:Z

    invoke-direct {p0, p1, p2, p3, p4}, inflateInternal(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    iget-object p1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object p2, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object p3, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, p2, p3}, updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    return-void
.end method

.method public invalidateSelf()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public isAutoMirrored()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-boolean p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    return p0
.end method

.method public isStateful()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic jumpToCurrentState()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->jumpToCurrentState()V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    return-object p0

    :cond_0
    iget-boolean v0, p0, mMutated:Z

    if-nez v0, :cond_1

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_1

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    invoke-direct {v0, v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    iput-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    const/4 v0, 0x1

    iput-boolean v0, p0, mMutated:Z

    :cond_1
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p1, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_1

    iget-object v1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, v1, v0, p1}, updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, invalidateSelf()V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleSelf(Ljava/lang/Runnable;J)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method setAllowCaching(Z)V
    .locals 0

    iput-boolean p1, p0, mAllowCaching:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void

    :cond_0
    iget-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->setRootAlpha(I)V

    invoke-virtual {p0}, invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setAutoMirrored(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setAutoMirrored(Landroid/graphics/drawable/Drawable;Z)V

    return-void

    :cond_0
    iget-object p0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iput-boolean p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mAutoMirrored:Z

    return-void
.end method

.method public bridge synthetic setChangingConfigurations(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->setChangingConfigurations(I)V

    return-void
.end method

.method public bridge synthetic setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void

    :cond_0
    iput-object p1, p0, mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0}, invalidateSelf()V

    return-void
.end method

.method public bridge synthetic setFilterBitmap(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->setFilterBitmap(Z)V

    return-void
.end method

.method public bridge synthetic setHotspot(FF)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspot(FF)V

    return-void
.end method

.method public bridge synthetic setHotspotBounds(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->setHotspotBounds(IIII)V

    return-void
.end method

.method public bridge synthetic setState([I)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->setState([I)Z

    move-result p0

    return p0
.end method

.method public setTint(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, setTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintList(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    return-void

    :cond_0
    iget-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, v1, p1, v0}, updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Lcom/oneplus/support/core/graphics/drawable/DrawableCompat;->setTintMode(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    return-void

    :cond_0
    iget-object v0, p0, mVectorState:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;

    iget-object v1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eq v1, p1, :cond_1

    iput-object p1, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    iget-object v0, v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v1, v0, p1}, updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object p1

    iput-object p1, p0, mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0}, invalidateSelf()V

    :cond_1
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p0

    return p0
.end method

.method public unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCommon;->mDelegateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method

.method updateTintFilter(Landroid/graphics/PorterDuffColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, getState()[I

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {p1, p0, p3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    return-object p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
