.class Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VectorDrawableCompatState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCacheDirty:Z

.field mCachedAutoMirrored:Z

.field mCachedBitmap:Landroid/graphics/Bitmap;

.field mCachedRootAlpha:I

.field mCachedTint:Landroid/content/res/ColorStateList;

.field mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

.field mChangingConfigurations:I

.field mTempPaint:Landroid/graphics/Paint;

.field mTint:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, mTintMode:Landroid/graphics/PorterDuff$Mode;

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>()V

    iput-object v0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V
    .locals 3

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mTint:Landroid/content/res/ColorStateList;

    sget-object v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;->DEFAULT_TINT_MODE:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz p1, :cond_2

    iget v0, p1, mChangingConfigurations:I

    iput v0, p0, mChangingConfigurations:I

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v1, p1, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-direct {v0, v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)V

    iput-object v0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    iget-object v0, p1, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$000(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$000(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$002(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p1, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$100(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    new-instance v1, Landroid/graphics/Paint;

    iget-object v2, p1, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-static {v2}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$100(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    invoke-static {v0, v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->access$102(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    :cond_1
    iget-object v0, p1, mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, mTint:Landroid/content/res/ColorStateList;

    iget-object v0, p1, mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p1, p1, mAutoMirrored:Z

    iput-boolean p1, p0, mAutoMirrored:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public canReuseBitmap(II)Z
    .locals 1

    iget-object v0, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-ne p2, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public canReuseCache()Z
    .locals 2

    iget-boolean v0, p0, mCacheDirty:Z

    if-nez v0, :cond_0

    iget-object v0, p0, mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, mTint:Landroid/content/res/ColorStateList;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v1, p0, mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, mCachedAutoMirrored:Z

    iget-boolean v1, p0, mAutoMirrored:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, mCachedRootAlpha:I

    iget-object p0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public createCachedBitmapIfNeeded(II)V
    .locals 1

    iget-object v0, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, canReuseBitmap(II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x1

    iput-boolean p1, p0, mCacheDirty:Z

    :cond_1
    return-void
.end method

.method public drawCachedBitmapWithRootAlpha(Landroid/graphics/Canvas;Landroid/graphics/ColorFilter;Landroid/graphics/Rect;)V
    .locals 1

    invoke-virtual {p0, p2}, getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;

    move-result-object p2

    iget-object p0, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0, p3, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getChangingConfigurations()I
    .locals 0

    iget p0, p0, mChangingConfigurations:I

    return p0
.end method

.method public getPaint(Landroid/graphics/ColorFilter;)Landroid/graphics/Paint;
    .locals 2

    invoke-virtual {p0}, hasTranslucentRoot()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v0, p0, mTempPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mTempPaint:Landroid/graphics/Paint;

    iget-object v0, p0, mTempPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    :cond_1
    iget-object v0, p0, mTempPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object p0, p0, mTempPaint:Landroid/graphics/Paint;

    return-object p0
.end method

.method public hasTranslucentRoot()Z
    .locals 1

    iget-object p0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result p0

    const/16 v0, 0xff

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    new-instance v0, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {v0, p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 0

    new-instance p1, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;

    invoke-direct {p1, p0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat;-><init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VectorDrawableCompatState;)V

    return-object p1
.end method

.method public updateCacheStates()V
    .locals 1

    iget-object v0, p0, mTint:Landroid/content/res/ColorStateList;

    iput-object v0, p0, mCachedTint:Landroid/content/res/ColorStateList;

    iget-object v0, p0, mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object v0, p0, mCachedTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    invoke-virtual {v0}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->getRootAlpha()I

    move-result v0

    iput v0, p0, mCachedRootAlpha:I

    iget-boolean v0, p0, mAutoMirrored:Z

    iput-boolean v0, p0, mCachedAutoMirrored:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, mCacheDirty:Z

    return-void
.end method

.method public updateCachedBitmap(II)V
    .locals 2

    iget-object v0, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, mCachedBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, mVPathRenderer:Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/oneplus/support/vectordrawable/graphics/drawable/VectorDrawableCompat$VPathRenderer;->draw(Landroid/graphics/Canvas;IILandroid/graphics/ColorFilter;)V

    return-void
.end method
