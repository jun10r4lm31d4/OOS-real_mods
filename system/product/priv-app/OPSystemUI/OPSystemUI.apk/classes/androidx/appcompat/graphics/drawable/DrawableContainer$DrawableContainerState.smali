.class abstract Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "DrawableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/graphics/drawable/DrawableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "DrawableContainerState"
.end annotation


# instance fields
.field mAutoMirrored:Z

.field mCanConstantState:Z

.field mChangingConfigurations:I

.field mCheckedConstantSize:Z

.field mCheckedConstantState:Z

.field mCheckedOpacity:Z

.field mCheckedPadding:Z

.field mCheckedStateful:Z

.field mChildrenChangingConfigurations:I

.field mColorFilter:Landroid/graphics/ColorFilter;

.field mConstantHeight:I

.field mConstantMinimumHeight:I

.field mConstantMinimumWidth:I

.field mConstantPadding:Landroid/graphics/Rect;

.field mConstantSize:Z

.field mConstantWidth:I

.field mDensity:I

.field mDither:Z

.field mDrawableFutures:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field mDrawables:[Landroid/graphics/drawable/Drawable;

.field mEnterFadeDuration:I

.field mExitFadeDuration:I

.field mHasColorFilter:Z

.field mHasTintList:Z

.field mHasTintMode:Z

.field mLayoutDirection:I

.field mMutated:Z

.field mNumChildren:I

.field mOpacity:I

.field final mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

.field mSourceRes:Landroid/content/res/Resources;

.field mStateful:Z

.field mTintList:Landroid/content/res/ColorStateList;

.field mTintMode:Landroid/graphics/PorterDuff$Mode;

.field mVariablePadding:Z


# direct methods
.method constructor <init>(Landroidx/appcompat/graphics/drawable/DrawableContainer$DrawableContainerState;Landroidx/appcompat/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    const/16 v0, 0xa0

    iput v0, p0, mDensity:I

    const/4 v0, 0x0

    iput-boolean v0, p0, mVariablePadding:Z

    iput-boolean v0, p0, mConstantSize:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, mDither:Z

    iput v0, p0, mEnterFadeDuration:I

    iput v0, p0, mExitFadeDuration:I

    iput-object p2, p0, mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    if-eqz p3, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, mSourceRes:Landroid/content/res/Resources;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, mSourceRes:Landroid/content/res/Resources;

    if-eqz p1, :cond_2

    iget p2, p1, mDensity:I

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    invoke-static {p3, p2}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result p2

    iput p2, p0, mDensity:I

    if-eqz p1, :cond_a

    iget p2, p1, mChangingConfigurations:I

    iput p2, p0, mChangingConfigurations:I

    iget p2, p1, mChildrenChangingConfigurations:I

    iput p2, p0, mChildrenChangingConfigurations:I

    iput-boolean v1, p0, mCheckedConstantState:Z

    iput-boolean v1, p0, mCanConstantState:Z

    iget-boolean p2, p1, mVariablePadding:Z

    iput-boolean p2, p0, mVariablePadding:Z

    iget-boolean p2, p1, mConstantSize:Z

    iput-boolean p2, p0, mConstantSize:Z

    iget-boolean p2, p1, mDither:Z

    iput-boolean p2, p0, mDither:Z

    iget-boolean p2, p1, mMutated:Z

    iput-boolean p2, p0, mMutated:Z

    iget p2, p1, mLayoutDirection:I

    iput p2, p0, mLayoutDirection:I

    iget p2, p1, mEnterFadeDuration:I

    iput p2, p0, mEnterFadeDuration:I

    iget p2, p1, mExitFadeDuration:I

    iput p2, p0, mExitFadeDuration:I

    iget-boolean p2, p1, mAutoMirrored:Z

    iput-boolean p2, p0, mAutoMirrored:Z

    iget-object p2, p1, mColorFilter:Landroid/graphics/ColorFilter;

    iput-object p2, p0, mColorFilter:Landroid/graphics/ColorFilter;

    iget-boolean p2, p1, mHasColorFilter:Z

    iput-boolean p2, p0, mHasColorFilter:Z

    iget-object p2, p1, mTintList:Landroid/content/res/ColorStateList;

    iput-object p2, p0, mTintList:Landroid/content/res/ColorStateList;

    iget-object p2, p1, mTintMode:Landroid/graphics/PorterDuff$Mode;

    iput-object p2, p0, mTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-boolean p2, p1, mHasTintList:Z

    iput-boolean p2, p0, mHasTintList:Z

    iget-boolean p2, p1, mHasTintMode:Z

    iput-boolean p2, p0, mHasTintMode:Z

    iget p2, p1, mDensity:I

    iget p3, p0, mDensity:I

    if-ne p2, p3, :cond_4

    iget-boolean p2, p1, mCheckedPadding:Z

    if-eqz p2, :cond_3

    new-instance p2, Landroid/graphics/Rect;

    iget-object p3, p1, mConstantPadding:Landroid/graphics/Rect;

    invoke-direct {p2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, mConstantPadding:Landroid/graphics/Rect;

    iput-boolean v1, p0, mCheckedPadding:Z

    :cond_3
    iget-boolean p2, p1, mCheckedConstantSize:Z

    if-eqz p2, :cond_4

    iget p2, p1, mConstantWidth:I

    iput p2, p0, mConstantWidth:I

    iget p2, p1, mConstantHeight:I

    iput p2, p0, mConstantHeight:I

    iget p2, p1, mConstantMinimumWidth:I

    iput p2, p0, mConstantMinimumWidth:I

    iget p2, p1, mConstantMinimumHeight:I

    iput p2, p0, mConstantMinimumHeight:I

    iput-boolean v1, p0, mCheckedConstantSize:Z

    :cond_4
    iget-boolean p2, p1, mCheckedOpacity:Z

    if-eqz p2, :cond_5

    iget p2, p1, mOpacity:I

    iput p2, p0, mOpacity:I

    iput-boolean v1, p0, mCheckedOpacity:Z

    :cond_5
    iget-boolean p2, p1, mCheckedStateful:Z

    if-eqz p2, :cond_6

    iget-boolean p2, p1, mStateful:Z

    iput-boolean p2, p0, mStateful:Z

    iput-boolean v1, p0, mCheckedStateful:Z

    :cond_6
    iget-object p2, p1, mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length p3, p2

    new-array p3, p3, [Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    iget p3, p1, mNumChildren:I

    iput p3, p0, mNumChildren:I

    iget-object p1, p1, mDrawableFutures:Landroid/util/SparseArray;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, mDrawableFutures:Landroid/util/SparseArray;

    goto :goto_2

    :cond_7
    new-instance p1, Landroid/util/SparseArray;

    iget p3, p0, mNumChildren:I

    invoke-direct {p1, p3}, Landroid/util/SparseArray;-><init>(I)V

    iput-object p1, p0, mDrawableFutures:Landroid/util/SparseArray;

    :goto_2
    iget p1, p0, mNumChildren:I

    :goto_3
    if-ge v0, p1, :cond_b

    aget-object p3, p2, v0

    if-eqz p3, :cond_9

    aget-object p3, p2, v0

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    if-eqz p3, :cond_8

    iget-object v1, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_8
    iget-object p3, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v1, p2, v0

    aput-object v1, p3, v0

    :cond_9
    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_a
    const/16 p1, 0xa

    new-array p1, p1, [Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    iput v0, p0, mNumChildren:I

    :cond_b
    return-void
.end method

.method private createAllFutures()V
    .locals 6

    iget-object v0, p0, mDrawableFutures:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v4, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v4, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, mDrawableFutures:Landroid/util/SparseArray;

    :cond_1
    return-void
.end method

.method private prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget v0, p0, mLayoutDirection:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-object p1
.end method


# virtual methods
.method public final addChild(Landroid/graphics/drawable/Drawable;)I
    .locals 4

    iget v0, p0, mNumChildren:I

    iget-object v1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p0, v0, v1}, growArray(II)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    iget-object v3, p0, mOwner:Landroidx/appcompat/graphics/drawable/DrawableContainer;

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v3, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object p1, v3, v0

    iget v3, p0, mNumChildren:I

    add-int/2addr v3, v1

    iput v3, p0, mNumChildren:I

    iget v1, p0, mChildrenChangingConfigurations:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result p1

    or-int/2addr p1, v1

    iput p1, p0, mChildrenChangingConfigurations:I

    invoke-virtual {p0}, invalidateCache()V

    const/4 p1, 0x0

    iput-object p1, p0, mConstantPadding:Landroid/graphics/Rect;

    iput-boolean v2, p0, mCheckedPadding:Z

    iput-boolean v2, p0, mCheckedConstantSize:Z

    iput-boolean v2, p0, mCheckedConstantState:Z

    return v0
.end method

.method final applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5

    if-eqz p1, :cond_2

    invoke-direct {p0}, createAllFutures()V

    iget v0, p0, mNumChildren:I

    iget-object v1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->applyTheme(Landroid/content/res/Resources$Theme;)V

    iget v3, p0, mChildrenChangingConfigurations:I

    aget-object v4, v1, v2

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p0, mChildrenChangingConfigurations:I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p0, p1}, updateDensity(Landroid/content/res/Resources;)V

    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    iget v0, p0, mNumChildren:I

    iget-object v1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, v1, v3

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_0
    iget-object v4, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable$ConstantState;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable$ConstantState;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public declared-synchronized canConstantState()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mCheckedConstantState:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, mCanConstantState:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-direct {p0}, createAllFutures()V

    const/4 v0, 0x1

    iput-boolean v0, p0, mCheckedConstantState:Z

    iget v1, p0, mNumChildren:I

    iget-object v2, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_2

    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v5

    if-nez v5, :cond_1

    iput-boolean v3, p0, mCanConstantState:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_2
    iput-boolean v0, p0, mCanConstantState:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final clearMutated()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, mMutated:Z

    return-void
.end method

.method protected computeConstantSize()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, mCheckedConstantSize:Z

    invoke-direct {p0}, createAllFutures()V

    iget v0, p0, mNumChildren:I

    iget-object v1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    iput v2, p0, mConstantHeight:I

    iput v2, p0, mConstantWidth:I

    const/4 v2, 0x0

    iput v2, p0, mConstantMinimumHeight:I

    iput v2, p0, mConstantMinimumWidth:I

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, v1, v2

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget v5, p0, mConstantWidth:I

    if-le v4, v5, :cond_0

    iput v4, p0, mConstantWidth:I

    :cond_0
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    iget v5, p0, mConstantHeight:I

    if-le v4, v5, :cond_1

    iput v4, p0, mConstantHeight:I

    :cond_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v4

    iget v5, p0, mConstantMinimumWidth:I

    if-le v4, v5, :cond_2

    iput v4, p0, mConstantMinimumWidth:I

    :cond_2
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v3

    iget v4, p0, mConstantMinimumHeight:I

    if-le v3, v4, :cond_3

    iput v3, p0, mConstantMinimumHeight:I

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method final getCapacity()I
    .locals 0

    iget-object p0, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    array-length p0, p0

    return p0
.end method

.method public getChangingConfigurations()I
    .locals 1

    iget v0, p0, mChangingConfigurations:I

    iget p0, p0, mChildrenChangingConfigurations:I

    or-int/2addr p0, v0

    return p0
.end method

.method public final getChild(I)Landroid/graphics/drawable/Drawable;
    .locals 4

    iget-object v0, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, mDrawableFutures:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v2, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable$ConstantState;

    iget-object v3, p0, mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {p0, v2}, prepareDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    aput-object v2, v3, p1

    iget-object p1, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->removeAt(I)V

    iget-object p1, p0, mDrawableFutures:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_1

    iput-object v1, p0, mDrawableFutures:Landroid/util/SparseArray;

    :cond_1
    return-object v2

    :cond_2
    return-object v1
.end method

.method public final getChildCount()I
    .locals 0

    iget p0, p0, mNumChildren:I

    return p0
.end method

.method public final getConstantHeight()I
    .locals 1

    iget-boolean v0, p0, mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, computeConstantSize()V

    :cond_0
    iget p0, p0, mConstantHeight:I

    return p0
.end method

.method public final getConstantMinimumHeight()I
    .locals 1

    iget-boolean v0, p0, mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, computeConstantSize()V

    :cond_0
    iget p0, p0, mConstantMinimumHeight:I

    return p0
.end method

.method public final getConstantMinimumWidth()I
    .locals 1

    iget-boolean v0, p0, mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, computeConstantSize()V

    :cond_0
    iget p0, p0, mConstantMinimumWidth:I

    return p0
.end method

.method public final getConstantPadding()Landroid/graphics/Rect;
    .locals 8

    iget-boolean v0, p0, mVariablePadding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, mConstantPadding:Landroid/graphics/Rect;

    if-nez v0, :cond_8

    iget-boolean v0, p0, mCheckedPadding:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, createAllFutures()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, mNumChildren:I

    iget-object v3, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    move-object v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v2, :cond_7

    aget-object v6, v3, v1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_6

    if-nez v5, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_2
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    if-le v6, v7, :cond_3

    iput v6, v5, Landroid/graphics/Rect;->left:I

    :cond_3
    iget v6, v0, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-le v6, v7, :cond_4

    iput v6, v5, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v7, v5, Landroid/graphics/Rect;->right:I

    if-le v6, v7, :cond_5

    iput v6, v5, Landroid/graphics/Rect;->right:I

    :cond_5
    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    iget v7, v5, Landroid/graphics/Rect;->bottom:I

    if-le v6, v7, :cond_6

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, mCheckedPadding:Z

    iput-object v5, p0, mConstantPadding:Landroid/graphics/Rect;

    return-object v5

    :cond_8
    :goto_1
    iget-object p0, p0, mConstantPadding:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getConstantWidth()I
    .locals 1

    iget-boolean v0, p0, mCheckedConstantSize:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, computeConstantSize()V

    :cond_0
    iget p0, p0, mConstantWidth:I

    return p0
.end method

.method public final getOpacity()I
    .locals 6

    iget-boolean v0, p0, mCheckedOpacity:Z

    if-eqz v0, :cond_0

    iget p0, p0, mOpacity:I

    return p0

    :cond_0
    invoke-direct {p0}, createAllFutures()V

    iget v0, p0, mNumChildren:I

    iget-object v1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    if-lez v0, :cond_1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    :goto_0
    const/4 v3, 0x1

    move v4, v2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_2

    aget-object v5, v1, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v5

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput v4, p0, mOpacity:I

    iput-boolean v3, p0, mCheckedOpacity:Z

    return v4
.end method

.method public growArray(II)V
    .locals 2

    new-array p2, p2, [Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p2, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method invalidateCache()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, mCheckedOpacity:Z

    iput-boolean v0, p0, mCheckedStateful:Z

    return-void
.end method

.method public final isConstantSize()Z
    .locals 0

    iget-boolean p0, p0, mConstantSize:Z

    return p0
.end method

.method abstract mutate()V
.end method

.method public final setConstantSize(Z)V
    .locals 0

    iput-boolean p1, p0, mConstantSize:Z

    return-void
.end method

.method public final setEnterFadeDuration(I)V
    .locals 0

    iput p1, p0, mEnterFadeDuration:I

    return-void
.end method

.method public final setExitFadeDuration(I)V
    .locals 0

    iput p1, p0, mExitFadeDuration:I

    return-void
.end method

.method final setLayoutDirection(II)Z
    .locals 7

    iget v0, p0, mNumChildren:I

    iget-object v1, p0, mDrawables:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v5, v1, v3

    if-eqz v5, :cond_1

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-lt v5, v6, :cond_0

    aget-object v5, v1, v3

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v2

    :goto_1
    if-ne v3, p2, :cond_1

    move v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iput p1, p0, mLayoutDirection:I

    return v4
.end method

.method public final setVariablePadding(Z)V
    .locals 0

    iput-boolean p1, p0, mVariablePadding:Z

    return-void
.end method

.method final updateDensity(Landroid/content/res/Resources;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, mSourceRes:Landroid/content/res/Resources;

    iget v0, p0, mDensity:I

    invoke-static {p1, v0}, Landroidx/appcompat/graphics/drawable/DrawableContainer;->resolveDensity(Landroid/content/res/Resources;I)I

    move-result p1

    iget v0, p0, mDensity:I

    iput p1, p0, mDensity:I

    if-eq v0, p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, mCheckedConstantSize:Z

    iput-boolean p1, p0, mCheckedPadding:Z

    :cond_0
    return-void
.end method