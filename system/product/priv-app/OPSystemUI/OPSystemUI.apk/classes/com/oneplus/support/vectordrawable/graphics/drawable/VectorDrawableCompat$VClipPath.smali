.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;
.super Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VClipPath"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VClipPath;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;)V

    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mPathName:Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/oneplus/support/core/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPath;->mNodes:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    :cond_1
    return-void
.end method


# virtual methods
.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1

    const-string v0, "pathData"

    invoke-static {p4, v0}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->hasAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    :cond_0
    sget-object p4, Lcom/oneplus/support/vectordrawable/graphics/drawable/AndroidResources;->STYLEABLE_VECTOR_DRAWABLE_CLIP_PATH:[I

    invoke-static {p1, p3, p2, p4}, Lcom/oneplus/support/core/content/res/TypedArrayUtils;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-direct {p0, p1}, updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public isClipPath()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
