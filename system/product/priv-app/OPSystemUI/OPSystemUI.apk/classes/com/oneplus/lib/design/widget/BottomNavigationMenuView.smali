.class public Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;
.super Landroid/widget/LinearLayout;
.source "BottomNavigationMenuView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView;
.implements Lcom/oneplus/lib/design/widget/Badge;


# static fields
.field private static final CHECKED_STATE_SET:[I

.field private static final DISABLED_STATE_SET:[I


# instance fields
.field private final activeItemMaxWidth:I

.field private final activeItemMinWidth:I

.field private buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

.field private final inactiveItemMaxWidth:I

.field private final inactiveItemMinWidth:I

.field private itemBackground:Landroid/graphics/drawable/Drawable;

.field private itemBackgroundRes:I

.field private final itemHeight:I

.field private itemHorizontalTranslationEnabled:Z

.field private itemIconSize:I

.field private itemIconTint:Landroid/content/res/ColorStateList;

.field private final itemPool:Lcom/oneplus/support/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/core/util/Pools$Pool<",
            "Lcom/oneplus/lib/design/widget/BottomNavigationItemView;",
            ">;"
        }
    .end annotation
.end field

.field private itemTextAppearanceActive:I

.field private itemTextAppearanceInactive:I

.field private final itemTextColorDefault:Landroid/content/res/ColorStateList;

.field private itemTextColorFromUser:Landroid/content/res/ColorStateList;

.field private labelVisibilityMode:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private final onClickListener:Landroid/view/View$OnClickListener;

.field private presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

.field private selectedItemId:I

.field private selectedItemPosition:I

.field private final set:Landroid/transition/TransitionSet;

.field private tempChildWidths:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x10100a0

    aput v3, v1, v2

    sput-object v1, CHECKED_STATE_SET:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v2

    sput-object v0, DISABLED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Lcom/oneplus/support/core/util/Pools$SynchronizedPool;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Lcom/oneplus/support/core/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object p1, p0, itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    const/4 p1, 0x0

    iput p1, p0, selectedItemId:I

    iput p1, p0, selectedItemPosition:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, inactiveItemMaxWidth:I

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, inactiveItemMinWidth:I

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_max_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, activeItemMaxWidth:I

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->design_bottom_navigation_active_item_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, activeItemMinWidth:I

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_design_bottom_navigation_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, itemHeight:I

    const v0, 0x1010038

    invoke-virtual {p0, v0}, createDefaultColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, itemTextColorDefault:Landroid/content/res/ColorStateList;

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    iput-object v0, p0, set:Landroid/transition/TransitionSet;

    iget-object v0, p0, set:Landroid/transition/TransitionSet;

    invoke-virtual {v0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    iget-object p1, p0, set:Landroid/transition/TransitionSet;

    const-wide/16 v0, 0x73

    invoke-virtual {p1, v0, v1}, Landroid/transition/TransitionSet;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object p1, p0, set:Landroid/transition/TransitionSet;

    new-instance v0, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v0}, Lcom/oneplus/support/core/view/animation/FastOutSlowInInterpolator;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/transition/TransitionSet;

    iget-object p1, p0, set:Landroid/transition/TransitionSet;

    new-instance v0, Lcom/oneplus/lib/design/widget/TextScale;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/TextScale;-><init>()V

    invoke-virtual {p1, v0}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    new-instance p1, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;

    invoke-direct {p1, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView$1;-><init>(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V

    iput-object p1, p0, onClickListener:Landroid/view/View$OnClickListener;

    new-array p1, p2, [I

    iput-object p1, p0, tempChildWidths:[I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
    .locals 0

    iget-object p0, p0, presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)Lcom/oneplus/lib/menu/MenuBuilder;
    .locals 0

    iget-object p0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-object p0
.end method

.method private createLayoutParamsForItems()Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    new-instance p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    return-object p0
.end method

.method private getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;
    .locals 1

    iget-object v0, p0, itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    invoke-interface {v0}, Lcom/oneplus/support/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;-><init>(Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method private isShifting(II)Z
    .locals 2

    const/4 p0, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    if-le p2, p1, :cond_1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    return p0
.end method


# virtual methods
.method public buildMenuView()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    if-eqz v4, :cond_0

    iget-object v5, p0, itemPool:Lcom/oneplus/support/core/util/Pools$Pool;

    invoke-interface {v5, v4}, Lcom/oneplus/support/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    if-nez v0, :cond_2

    iput v1, p0, selectedItemId:I

    iput v1, p0, selectedItemPosition:I

    const/4 v0, 0x0

    iput-object v0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    return-void

    :cond_2
    iget-object v0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    new-array v0, v0, [Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    iput-object v0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    iget v0, p0, labelVisibilityMode:I

    iget-object v2, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p0, v0, v2}, isShifting(II)Z

    move-result v0

    move v2, v1

    :goto_1
    iget-object v3, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_4

    iget-object v3, p0, presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object v3, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    iget-object v3, p0, presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    invoke-direct {p0}, getNewItem()Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    move-result-object v3

    iget-object v4, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aput-object v3, v4, v2

    iget-object v4, p0, itemIconTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    iget v4, p0, itemIconSize:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    iget-object v4, p0, itemTextColorDefault:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v4, p0, itemTextAppearanceInactive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    iget v4, p0, itemTextAppearanceActive:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, itemTextColorFromUser:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v4, p0, itemBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    :cond_3
    iget v4, p0, itemBackgroundRes:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    :goto_2
    invoke-virtual {v3, v0}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    iget v4, p0, labelVisibilityMode:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3, v4, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemPosition(I)V

    iget-object v4, p0, onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, createLayoutParamsForItems()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget-object v0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    sub-int/2addr v0, v4

    iget v1, p0, selectedItemPosition:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, selectedItemPosition:I

    iget-object v0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget p0, p0, selectedItemPosition:I

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public createDefaultColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 8

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-static {p1, v3}, Lcom/oneplus/lib/app/appcompat/AppCompatResources;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    sget v3, Lcom/oneplus/commonctrl/R$attr;->colorPrimary:I

    invoke-virtual {p0, v3, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v0

    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v3, 0x3

    new-array v4, v3, [[I

    sget-object v5, DISABLED_STATE_SET:[I

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, CHECKED_STATE_SET:[I

    aput-object v5, v4, v2

    sget-object v5, Landroid/widget/LinearLayout;->EMPTY_STATE_SET:[I

    const/4 v7, 0x2

    aput-object v5, v4, v7

    new-array v3, v3, [I

    sget-object v5, DISABLED_STATE_SET:[I

    invoke-virtual {p1, v5, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v3, v6

    aput p0, v3, v2

    aput v0, v3, v7

    invoke-direct {v1, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v1
.end method

.method public getLabelVisibilityMode()I
    .locals 0

    iget p0, p0, labelVisibilityMode:I

    return p0
.end method

.method public getSelectedItemId()I
    .locals 0

    iget p0, p0, selectedItemId:I

    return p0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    iput-object p1, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    return-void
.end method

.method public isItemHorizontalTranslationEnabled()Z
    .locals 0

    iget-boolean p0, p0, itemHorizontalTranslationEnabled:Z

    return p0
.end method

.method public setIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, itemIconTint:Landroid/content/res/ColorStateList;

    iget-object p0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconTintList(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemBackgroundRes(I)V
    .locals 3

    iput p1, p0, itemBackgroundRes:I

    iget-object p0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setItemBackground(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemHorizontalTranslationEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, itemHorizontalTranslationEnabled:Z

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 3

    iput p1, p0, itemIconSize:I

    iget-object p0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setIconSize(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setItemTextAppearanceActive(I)V
    .locals 5

    iput p1, p0, itemTextAppearanceActive:I

    iget-object v0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceActive(I)V

    iget-object v4, p0, itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextAppearanceInactive(I)V
    .locals 5

    iput p1, p0, itemTextAppearanceInactive:I

    iget-object v0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextAppearanceInactive(I)V

    iget-object v4, p0, itemTextColorFromUser:Landroid/content/res/ColorStateList;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    iput-object p1, p0, itemTextColorFromUser:Landroid/content/res/ColorStateList;

    iget-object p0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz p0, :cond_0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setLabelVisibilityMode(I)V
    .locals 0

    iput p1, p0, labelVisibilityMode:I

    return-void
.end method

.method public setPresenter(Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;)V
    .locals 0

    iput-object p1, p0, presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    return-void
.end method

.method tryRestoreNotifications(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "oneplus:menu:notification"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    instance-of v4, v3, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->bindNotification(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method tryRestoreSelectedItemId(I)V
    .locals 4

    iget-object v0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    if-ne p1, v3, :cond_0

    iput p1, p0, selectedItemId:I

    iput v1, p0, selectedItemPosition:I

    const/4 p0, 0x1

    invoke-interface {v2, p0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method trySaveNotifications(Landroid/os/Bundle;)V
    .locals 5

    iget-object v0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-eqz v0, :cond_2

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getNotification()Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "oneplus:menu:notification"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_2
    return-void
.end method

.method public updateMenuView()V
    .locals 6

    iget-object v0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_5

    iget-object v1, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->size()I

    move-result v0

    iget-object v1, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, buildMenuView()V

    return-void

    :cond_1
    iget v1, p0, selectedItemId:I

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    iput v4, p0, selectedItemId:I

    iput v3, p0, selectedItemPosition:I

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, selectedItemId:I

    if-eq v1, v3, :cond_4

    iget-object v1, p0, set:Landroid/transition/TransitionSet;

    invoke-static {p0, v1}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :cond_4
    iget v1, p0, labelVisibilityMode:I

    iget-object v3, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {p0, v1, v3}, isShifting(II)Z

    move-result v1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_5

    iget-object v4, p0, presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    iget-object v4, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget v5, p0, labelVisibilityMode:I

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setLabelVisibilityMode(I)V

    iget-object v4, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->setShifting(Z)V

    iget-object v4, p0, buttons:[Lcom/oneplus/lib/design/widget/BottomNavigationItemView;

    aget-object v4, v4, v3

    iget-object v5, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v5, v3}, Lcom/oneplus/lib/menu/MenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v4, v5, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    iget-object v4, p0, presenter:Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;->setUpdateSuspended(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    return-void
.end method
