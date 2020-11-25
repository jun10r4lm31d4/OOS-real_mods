.class public Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;
.super Landroid/view/ViewGroup;
.source "ActionBarOverlayLayout.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/DecorContentParent;
.implements Lcom/oneplus/support/core/view/NestedScrollingParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;,
        Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ATTRS:[I

.field private static final TAG:Ljava/lang/String; = "ActionBarOverlayLayout"


# instance fields
.field private final ACTION_BAR_ANIMATE_DELAY:I

.field private mActionBarHeight:I

.field mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

.field private mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

.field private final mAddActionBarHideOffset:Ljava/lang/Runnable;

.field mAnimatingForFling:Z

.field private final mBaseContentInsets:Landroid/graphics/Rect;

.field private final mBaseInnerInsets:Landroid/graphics/Rect;

.field private mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

.field private final mContentInsets:Landroid/graphics/Rect;

.field mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

.field private mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

.field private mHasNonEmbeddedTabs:Z

.field private mHideOnContentScroll:Z

.field private mHideOnContentScrollReference:I

.field private mIgnoreWindowContentOverlay:Z

.field private final mInnerInsets:Landroid/graphics/Rect;

.field private final mLastBaseContentInsets:Landroid/graphics/Rect;

.field private final mLastInnerInsets:Landroid/graphics/Rect;

.field private mLastSystemUiVisibility:I

.field private mOverlayMode:Z

.field private final mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

.field private final mRemoveActionBarHideOffset:Ljava/lang/Runnable;

.field final mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

.field private mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

.field private mWindowVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, ATTRS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10102eb
        0x1010059
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, mWindowVisibility:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mContentInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mInnerInsets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mLastInnerInsets:Landroid/graphics/Rect;

    const/16 v0, 0x258

    iput v0, p0, ACTION_BAR_ANIMATE_DELAY:I

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$1;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object v0, p0, mTopAnimatorListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$2;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$3;-><init>(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;)V

    iput-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, init(Landroid/content/Context;)V

    new-instance v0, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    return-void
.end method

.method private addActionBarHideOffset()V
    .locals 1

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    if-eqz p3, :cond_0

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    iget v3, p2, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_0

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    :cond_0
    if-eqz p4, :cond_1

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    iget v3, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, v3, :cond_1

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->top:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    :cond_1
    if-eqz p6, :cond_2

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    if-eq v2, v3, :cond_2

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->right:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    :cond_2
    if-eqz p5, :cond_3

    iget v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    iget v3, p2, Landroid/graphics/Rect;->bottom:I

    if-eq v2, v3, :cond_3

    const/4 v0, 0x1

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    iput v2, v1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    :cond_3
    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 3

    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, ATTRS:[I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, mActionBarHeight:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {p0, v3}, setWillNotDraw(Z)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, mIgnoreWindowContentOverlay:Z

    invoke-static {p1}, Lcom/oneplus/support/core/widget/ScrollerCompat;->create(Landroid/content/Context;)Lcom/oneplus/support/core/widget/ScrollerCompat;

    move-result-object v1

    iput-object v1, p0, mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    return-void
.end method

.method private postAddActionBarHideOffset()V
    .locals 3

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postRemoveActionBarHideOffset()V
    .locals 3

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {p0, v0, v1, v2}, postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private removeActionBarHideOffset()V
    .locals 1

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private shouldHideActionBarOnFling(FF)Z
    .locals 9

    iget-object v0, p0, mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    float-to-int v4, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, -0x80000000

    const v8, 0x7fffffff

    invoke-virtual/range {v0 .. v8}, Lcom/oneplus/support/core/widget/ScrollerCompat;->fling(IIIIIIII)V

    iget-object v0, p0, mFlingEstimator:Lcom/oneplus/support/core/widget/ScrollerCompat;

    invoke-virtual {v0}, Lcom/oneplus/support/core/widget/ScrollerCompat;->getFinalY()I

    move-result v0

    iget-object v1, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public canShowOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->canShowOverflowMenu()Z

    move-result v0

    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    return v0
.end method

.method public dismissPopups()V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->dismissPopupMenus()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, mIgnoreWindowContentOverlay:Z

    if-nez v0, :cond_1

    iget-object v0, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v2}, Lcom/oneplus/support/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    float-to-int v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    nop

    iget-object v2, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getWidth()I

    move-result v3

    iget-object v4, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v1, p0, mWindowContentOverlay:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 11

    invoke-virtual {p0}, pullChildren()V

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v1, v0, 0x100

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v10, p1

    iget-object v4, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, p0

    move-object v5, v10

    invoke-direct/range {v3 .. v9}, applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    move-result v3

    iget-object v4, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v4, p0, mBaseInnerInsets:Landroid/graphics/Rect;

    iget-object v5, p0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-static {p0, v4, v5}, Lcom/oneplus/lib/widget/util/ViewUtils;->computeFitSystemWindows(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    iget-object v4, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    iget-object v4, p0, mLastBaseContentInsets:Landroid/graphics/Rect;

    iget-object v5, p0, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p0}, requestLayout()V

    :cond_2
    return v2
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    invoke-virtual {p0}, generateDefaultLayoutParams()Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getActionBarHideOffset()I
    .locals 1

    iget-object v0, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v0

    float-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object v0, p0, mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method haltActionBarHideOffsetAnimations()V
    .locals 1

    iget-object v0, p0, mRemoveActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, mAddActionBarHideOffset:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, mCurrentActionBarTopAnimator:Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorCompat;->cancel()V

    :cond_0
    return-void
.end method

.method public hasIcon()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hideOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hideOverflowMenu()Z

    move-result v0

    return v0
.end method

.method public initFeature(I)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setOverlayMode(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->initIndeterminateProgress()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->initProgress()V

    nop

    :goto_0
    return-void
.end method

.method public isHideOnContentScrollEnabled()Z
    .locals 1

    iget-boolean v0, p0, mHideOnContentScroll:Z

    return v0
.end method

.method public isInOverlayMode()Z
    .locals 1

    iget-boolean v0, p0, mOverlayMode:Z

    return v0
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowPending()Z

    move-result v0

    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->isOverflowMenuShowing()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 15

    invoke-virtual {p0}, getChildCount()I

    move-result v0

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v1

    sub-int v2, p4, p2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int v4, p5, p3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    move-object v6, p0

    invoke-virtual {p0, v5}, getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iget v11, v8, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v1

    iget v12, v8, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v12, v3

    add-int v13, v11, v9

    add-int v14, v12, v10

    invoke-virtual {v7, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move-object v6, p0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v7, p0

    invoke-virtual/range {p0 .. p0}, pullChildren()V

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredWidth()I

    move-result v0

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v8

    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v0

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v0, v1

    iget v1, v12, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v0

    invoke-static {v9, v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->combineMeasuredStates(II)I

    move-result v9

    invoke-static/range {p0 .. p0}, Lcom/oneplus/support/core/view/ViewCompat;->getWindowSystemUiVisibility(Landroid/view/View;)I

    move-result v14

    and-int/lit16 v0, v14, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v15, v0

    if-eqz v15, :cond_2

    iget v10, v7, mActionBarHeight:I

    iget-boolean v0, v7, mHasNonEmbeddedTabs:Z

    if-eqz v0, :cond_3

    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getTabContainer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, v7, mActionBarHeight:I

    add-int/2addr v10, v1

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    iget-object v0, v7, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getMeasuredHeight()I

    move-result v10

    :cond_3
    :goto_1
    iget-object v0, v7, mContentInsets:Landroid/graphics/Rect;

    iget-object v1, v7, mBaseContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, mInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, mBaseInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v0, v7, mOverlayMode:Z

    if-nez v0, :cond_4

    if-nez v15, :cond_4

    iget-object v0, v7, mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, mContentInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_4
    iget-object v0, v7, mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v10

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v7, mInnerInsets:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v11

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    :goto_2
    iget-object v1, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v2, v7, mContentInsets:Landroid/graphics/Rect;

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, applyInsets(Landroid/view/View;Landroid/graphics/Rect;ZZZZ)Z

    iget-object v0, v7, mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, v7, mLastInnerInsets:Landroid/graphics/Rect;

    iget-object v1, v7, mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iget-object v1, v7, mInnerInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->dispatchFitSystemWindows(Landroid/graphics/Rect;)V

    :cond_5
    iget-object v1, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, measureChildWithMargins(Landroid/view/View;IIII)V

    iget-object v0, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;

    iget-object v1, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMeasuredWidth()I

    move-result v1

    iget v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    invoke-static {v8, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;->getMeasuredHeight()I

    move-result v2

    iget v3, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v3

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, v7, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    invoke-static {v3}, Lcom/oneplus/support/core/view/ViewCompat;->getMeasuredState(Landroid/view/View;)I

    move-result v3

    invoke-static {v9, v3}, Lcom/oneplus/lib/widget/util/ViewUtils;->combineMeasuredStates(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v1, v4

    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    add-int/2addr v2, v4

    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumHeight()I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual/range {p0 .. p0}, getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    move/from16 v4, p1

    invoke-static {v1, v4, v3}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v5

    shl-int/lit8 v6, v3, 0x10

    move/from16 v8, p2

    invoke-static {v2, v8, v6}, Lcom/oneplus/support/core/view/ViewCompat;->resolveSizeAndState(III)I

    move-result v6

    invoke-virtual {v7, v5, v6}, setMeasuredDimension(II)V

    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .locals 1

    iget-boolean v0, p0, mHideOnContentScroll:Z

    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, p2, p3}, shouldHideActionBarOnFling(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, addActionBarHideOffset()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, removeActionBarHideOffset()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mAnimatingForFling:Z

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .locals 0

    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .locals 1

    iget v0, p0, mHideOnContentScrollReference:I

    add-int/2addr v0, p3

    iput v0, p0, mHideOnContentScrollReference:I

    iget v0, p0, mHideOnContentScrollReference:I

    invoke-virtual {p0, v0}, setActionBarHideOffset(I)V

    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, mParentHelper:Lcom/oneplus/support/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {p0}, getActionBarHideOffset()I

    move-result v0

    iput v0, p0, mHideOnContentScrollReference:I

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStarted()V

    :cond_0
    return-void
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .locals 1

    and-int/lit8 v0, p3, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, mHideOnContentScroll:Z

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, mHideOnContentScroll:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, mAnimatingForFling:Z

    if-nez v0, :cond_1

    iget v0, p0, mHideOnContentScrollReference:I

    iget-object v1, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v1

    if-gt v0, v1, :cond_0

    invoke-direct {p0}, postRemoveActionBarHideOffset()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, postAddActionBarHideOffset()V

    :cond_1
    :goto_0
    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onContentScrollStopped()V

    :cond_2
    return-void
.end method

.method public onWindowSystemUiVisibilityChanged(I)V
    .locals 6

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowSystemUiVisibilityChanged(I)V

    :cond_0
    invoke-virtual {p0}, pullChildren()V

    iget v0, p0, mLastSystemUiVisibility:I

    xor-int/2addr v0, p1

    iput p1, p0, mLastSystemUiVisibility:I

    and-int/lit8 v1, p1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    and-int/lit16 v4, p1, 0x100

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_1

    :cond_2
    move v4, v3

    :goto_1
    iget-object v5, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v5, :cond_6

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_2
    invoke-interface {v5, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->enableContentAnimations(Z)V

    if-nez v1, :cond_5

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v2, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->hideForSystem()V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v2, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-interface {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->showForSystem()V

    :cond_6
    :goto_4
    and-int/lit16 v2, v0, 0x100

    if-eqz v2, :cond_7

    iget-object v2, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v2, :cond_7

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_7
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowVisibilityChanged(I)V

    iput p1, p0, mWindowVisibility:I

    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    :cond_0
    return-void
.end method

.method pullChildren()V
    .locals 1

    iget-object v0, p0, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    if-nez v0, :cond_0

    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_activity_content:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    iput-object v0, p0, mContent:Lcom/oneplus/lib/app/appcompat/ContentFrameLayout;

    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_container:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iput-object v0, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    :cond_0
    return-void
.end method

.method public restoreToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->restoreHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public saveToolbarHierarchyState(Landroid/util/SparseArray;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public setActionBarHideOffset(I)V
    .locals 3

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    iget-object v0, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v1, p0, mActionBarTop:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    neg-int v2, p1

    int-to-float v2, v2

    invoke-static {v1, v2}, Lcom/oneplus/support/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    return-void
.end method

.method public setActionBarVisibilityCallback(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V
    .locals 2

    iput-object p1, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    invoke-virtual {p0}, getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mActionBarVisibilityCallback:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;

    iget v1, p0, mWindowVisibility:I

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;->onWindowVisibilityChanged(I)V

    iget v0, p0, mLastSystemUiVisibility:I

    if-eqz v0, :cond_0

    iget v0, p0, mLastSystemUiVisibility:I

    invoke-virtual {p0, v0}, onWindowSystemUiVisibilityChanged(I)V

    invoke-static {p0}, Lcom/oneplus/support/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHasNonEmbeddedTabs(Z)V
    .locals 0

    iput-boolean p1, p0, mHasNonEmbeddedTabs:Z

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, mHideOnContentScroll:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, mHideOnContentScroll:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, haltActionBarHideOffsetAnimations()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setActionBarHideOffset(I)V

    :cond_0
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(I)V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setLogo(I)V

    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenu(Landroid/view/Menu;Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    return-void
.end method

.method public setMenuPrepared()V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuPrepared()V

    return-void
.end method

.method public setOverlayMode(Z)V
    .locals 2

    iput-boolean p1, p0, mOverlayMode:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, mIgnoreWindowContentOverlay:Z

    return-void
.end method

.method public setShowingForActionMode(Z)V
    .locals 0

    return-void
.end method

.method public setUiOptions(I)V
    .locals 0

    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowCallback(Landroid/view/Window$Callback;)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, pullChildren()V

    iget-object v0, p0, mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->showOverflowMenu()Z

    move-result v0

    return v0
.end method