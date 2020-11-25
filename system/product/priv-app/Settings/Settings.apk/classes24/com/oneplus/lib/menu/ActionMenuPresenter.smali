.class public Lcom/oneplus/lib/menu/ActionMenuPresenter;
.super Lcom/oneplus/lib/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;,
        Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

.field mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

.field private mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

.field private mPendingOverflowIconSet:Z

.field private mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

.field mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_layout:I

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mActionButtonGroups:Landroid/util/SparseBooleanArray;

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object v0, p0, mPopupPresenterCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$PopupPresenterCallback;

    return-void
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .locals 6

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/oneplus/lib/menu/MenuView$ItemView;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Lcom/oneplus/lib/menu/MenuView$ItemView;

    invoke-interface {v5}, Lcom/oneplus/lib/menu/MenuView$ItemView;->getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public bindItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Lcom/oneplus/lib/menu/MenuView$ItemView;)V
    .locals 3

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lcom/oneplus/lib/menu/MenuView$ItemView;->initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuView;

    move-object v1, p2

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuItemView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setItemInvoker(Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;)V

    iget-object v2, p0, mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_0

    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    iput-object v2, p0, mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    :cond_0
    iget-object v2, p0, mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuItemView;->setPopupCallback(Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;)V

    return-void
.end method

.method public dismissPopupMenus()Z
    .locals 2

    invoke-virtual {p0}, hideOverflowMenu()Z

    move-result v0

    invoke-virtual {p0}, hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .locals 2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v1, :cond_0

    iget-object v1, v0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, v0, mMaxItems:I

    iget v4, v0, mActionItemWidthLimit:I

    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-object v7, v0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v2, :cond_4

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v11, 0x1

    :goto_2
    iget-boolean v14, v0, mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_3

    invoke-virtual {v13}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_3

    const/4 v3, 0x0

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v12, v0, mReserveOverflow:Z

    if-eqz v12, :cond_6

    if-nez v11, :cond_5

    add-int v12, v8, v9

    if-le v12, v3, :cond_6

    :cond_5
    add-int/lit8 v3, v3, -0x1

    :cond_6
    sub-int/2addr v3, v8

    iget-object v12, v0, mActionButtonGroups:Landroid/util/SparseBooleanArray;

    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-boolean v15, v0, mStrictWidthLimit:Z

    if-eqz v15, :cond_7

    iget v15, v0, mMinCellSize:I

    div-int v14, v4, v15

    rem-int v16, v4, v15

    div-int v17, v16, v14

    add-int v13, v15, v17

    :cond_7
    const/4 v15, 0x0

    :goto_3
    if-ge v15, v2, :cond_21

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v17

    if-eqz v17, :cond_c

    move/from16 v17, v2

    iget-object v2, v0, mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v5, v2, v7}, getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    move/from16 v19, v8

    iget-object v8, v0, mScrapActionButtonView:Landroid/view/View;

    if-nez v8, :cond_8

    iput-object v2, v0, mScrapActionButtonView:Landroid/view/View;

    :cond_8
    iget-boolean v8, v0, mStrictWidthLimit:Z

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    invoke-static {v2, v13, v14, v6, v8}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    sub-int v14, v14, v20

    goto :goto_4

    :cond_9
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    :goto_4
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    sub-int/2addr v4, v8

    if-nez v10, :cond_a

    move v10, v8

    :cond_a
    move-object/from16 v20, v2

    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    if-eqz v2, :cond_b

    move/from16 v21, v4

    const/4 v4, 0x1

    invoke-virtual {v12, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_5

    :cond_b
    move/from16 v21, v4

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v5, v4}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    move-object/from16 v22, v7

    move/from16 v4, v21

    const/4 v0, 0x0

    move-object/from16 v21, v1

    goto/16 :goto_f

    :cond_c
    move/from16 v17, v2

    move/from16 v19, v8

    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v5}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    if-gtz v3, :cond_e

    if-eqz v8, :cond_d

    goto :goto_6

    :cond_d
    move/from16 v20, v3

    goto :goto_7

    :cond_e
    :goto_6
    if-lez v4, :cond_10

    move/from16 v20, v3

    iget-boolean v3, v0, mStrictWidthLimit:Z

    if-eqz v3, :cond_f

    if-lez v14, :cond_11

    :cond_f
    const/4 v3, 0x1

    goto :goto_8

    :cond_10
    move/from16 v20, v3

    :cond_11
    :goto_7
    const/4 v3, 0x0

    :goto_8
    if-eqz v3, :cond_19

    move/from16 v21, v3

    iget-object v3, v0, mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v5, v3, v7}, getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    move-object/from16 v22, v7

    iget-object v7, v0, mScrapActionButtonView:Landroid/view/View;

    if-nez v7, :cond_12

    iput-object v3, v0, mScrapActionButtonView:Landroid/view/View;

    :cond_12
    iget-boolean v7, v0, mStrictWidthLimit:Z

    if-eqz v7, :cond_14

    const/4 v7, 0x0

    invoke-static {v3, v13, v14, v6, v7}, Lcom/oneplus/lib/menu/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v23

    sub-int v14, v14, v23

    if-nez v23, :cond_13

    const/4 v7, 0x0

    move/from16 v21, v7

    :cond_13
    goto :goto_9

    :cond_14
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int/2addr v4, v7

    if-nez v10, :cond_15

    move v10, v7

    :cond_15
    move-object/from16 v23, v3

    iget-boolean v3, v0, mStrictWidthLimit:Z

    if-eqz v3, :cond_17

    if-ltz v4, :cond_16

    const/4 v3, 0x1

    goto :goto_a

    :cond_16
    const/4 v3, 0x0

    :goto_a
    and-int v3, v21, v3

    goto :goto_c

    :cond_17
    add-int v3, v4, v10

    if-lez v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    const/4 v3, 0x0

    :goto_b
    and-int v3, v21, v3

    goto :goto_c

    :cond_19
    move/from16 v21, v3

    move-object/from16 v22, v7

    :goto_c
    if-eqz v3, :cond_1a

    if-eqz v2, :cond_1a

    const/4 v7, 0x1

    invoke-virtual {v12, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v21, v1

    goto :goto_e

    :cond_1a
    if-eqz v8, :cond_1e

    const/4 v7, 0x0

    invoke-virtual {v12, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v7, 0x0

    :goto_d
    if-ge v7, v15, :cond_1d

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    move-object/from16 v21, v1

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, v2, :cond_1c

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-eqz v1, :cond_1b

    add-int/lit8 v20, v20, 0x1

    :cond_1b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    :cond_1c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    goto :goto_d

    :cond_1d
    move-object/from16 v21, v1

    goto :goto_e

    :cond_1e
    move-object/from16 v21, v1

    :goto_e
    if-eqz v3, :cond_1f

    add-int/lit8 v20, v20, -0x1

    :cond_1f
    invoke-virtual {v5, v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    move/from16 v3, v20

    const/4 v0, 0x0

    goto :goto_f

    :cond_20
    move-object/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v22, v7

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->setIsActionButton(Z)V

    :goto_f
    add-int/lit8 v15, v15, 0x1

    move v5, v0

    move/from16 v2, v17

    move/from16 v8, v19

    move-object/from16 v1, v21

    move-object/from16 v7, v22

    move-object/from16 v0, p0

    goto/16 :goto_3

    :cond_21
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getItemView(Lcom/oneplus/lib/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object v1, p3

    check-cast v1, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v1

    if-eq v0, v1, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setPresenter(Lcom/oneplus/lib/menu/ActionMenuPresenter;)V

    :cond_0
    return-object v1
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v0, p0, mPendingOverflowIconSet:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideOverflowMenu()Z
    .locals 3

    iget-object v0, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    return v1

    :cond_0
    iget-object v0, p0, mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->dismiss()V

    return v1

    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public hideSubMenus()Z
    .locals 1

    iget-object v0, p0, mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 7

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object v1

    iget-boolean v2, p0, mReserveOverflowSet:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, mReserveOverflow:Z

    :cond_0
    iget-boolean v2, p0, mWidthLimitSet:Z

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, mWidthLimit:I

    :cond_1
    iget-boolean v2, p0, mMaxItemsSet:Z

    if-nez v2, :cond_2

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, mMaxItems:I

    :cond_2
    iget v2, p0, mWidthLimit:I

    iget-boolean v3, p0, mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v3, :cond_4

    new-instance v3, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-boolean v3, p0, mPendingOverflowIconSet:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-object v3, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v6, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    iput-boolean v5, p0, mPendingOverflowIconSet:Z

    :cond_3
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    iget-object v5, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v5, v3, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->measure(II)V

    :cond_4
    iget-object v3, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_5
    iput-object v4, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    :goto_0
    iput v2, p0, mActionItemWidthLimit:I

    const/high16 v3, 0x42400000    # 48.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v3

    float-to-int v3, v5

    iput v3, p0, mMinCellSize:I

    iput-object v4, p0, mScrapActionButtonView:Landroid/view/View;

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 1

    iget-object v0, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_1

    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .locals 1

    iget-object v0, p0, mOverflowPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverflowReserved()Z
    .locals 1

    iget-boolean v0, p0, mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0

    invoke-virtual {p0}, dismissPopupMenus()Z

    invoke-super {p0, p1, p2}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-boolean v0, p0, mMaxItemsSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/ActionBarPolicy;->getMaxActionButtons()I

    move-result v0

    iput v0, p0, mMaxItems:I

    :cond_0
    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->onItemsChanged(Z)V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    instance-of v0, p1, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    iget v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1

    iget-object v1, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget v2, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/menu/SubMenuBuilder;

    invoke-virtual {p0, v2}, onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    :cond_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;-><init>()V

    iget v1, p0, mOpenSubMenuId:I

    iput v1, v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$SavedState;->openSubMenuId:I

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/lib/menu/SubMenuBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, mOpenSubMenuId:I

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/SubMenuBuilder;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {p1, v4}, Lcom/oneplus/lib/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    new-instance v4, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-direct {v4, p0, v5, p1, v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/SubMenuBuilder;Landroid/view/View;)V

    iput-object v4, p0, mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v4, p0, mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4, v1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    iget-object v4, p0, mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    const v5, 0x800005

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->setGravity(I)V

    iget-object v4, p0, mActionButtonPopup:Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v4}, Lcom/oneplus/lib/menu/ActionMenuPresenter$ActionButtonSubmenu;->showSubMenu()V

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    const/4 v4, 0x1

    return v4
.end method

.method public onSubUiVisibilityChanged(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->close(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .locals 0

    iput-boolean p1, p0, mExpandedActionViewsExclusive:Z

    return-void
.end method

.method public setItemLimit(I)V
    .locals 1

    iput p1, p0, mMaxItems:I

    const/4 v0, 0x1

    iput-boolean v0, p0, mMaxItemsSet:Z

    return-void
.end method

.method public setMenuView(Lcom/oneplus/lib/menu/ActionMenuView;)V
    .locals 1

    iput-object p1, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/ActionMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mPendingOverflowIconSet:Z

    iput-object p1, p0, mPendingOverflowIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void
.end method

.method public setReserveOverflow(Z)V
    .locals 1

    iput-boolean p1, p0, mReserveOverflow:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, mReserveOverflowSet:Z

    return-void
.end method

.method public setWidthLimit(IZ)V
    .locals 1

    iput p1, p0, mWidthLimit:I

    iput-boolean p2, p0, mStrictWidthLimit:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, mWidthLimitSet:Z

    return-void
.end method

.method public shouldIncludeItem(ILcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .locals 7

    iget-boolean v0, p0, mReserveOverflow:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_0

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_0

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v5, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;Z)V

    new-instance v1, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    iget-object v1, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, mPostedOpenRunnable:Lcom/oneplus/lib/menu/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .locals 6

    invoke-super {p0, p1}, Lcom/oneplus/lib/menu/BaseMenuPresenter;->updateMenuView(Z)V

    iget-object v0, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getSupportActionProvider()Lcom/oneplus/lib/widget/ActionProvider;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, p0}, Lcom/oneplus/lib/widget/ActionProvider;->setSubUiVisibilityListener(Lcom/oneplus/lib/widget/ActionProvider$SubUiVisibilityListener;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_2

    iget-object v0, p0, mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x0

    iget-boolean v2, p0, mReserveOverflow:Z

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v3

    xor-int/2addr v3, v4

    move v1, v3

    goto :goto_2

    :cond_3
    if-lez v2, :cond_4

    move v3, v4

    :cond_4
    move v1, v3

    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    iget-object v2, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-nez v2, :cond_6

    new-instance v2, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    iget-object v3, p0, mSystemContext:Landroid/content/Context;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;-><init>(Lcom/oneplus/lib/menu/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v2, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    :cond_6
    iget-object v2, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-eq v2, v3, :cond_9

    if-eqz v2, :cond_7

    iget-object v3, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_7
    iget-object v3, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v3, Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v4, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/ActionMenuView;->generateOverflowButtonLayoutParams()Lcom/oneplus/lib/menu/ActionMenuView$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/menu/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_3

    :cond_8
    iget-object v2, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    iget-object v3, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    if-ne v2, v3, :cond_9

    iget-object v2, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, mOverflowButton:Lcom/oneplus/lib/menu/ActionMenuPresenter$OverflowMenuButton;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_9
    :goto_3
    nop

    :goto_4
    iget-object v2, p0, mMenuView:Lcom/oneplus/lib/menu/MenuView;

    check-cast v2, Lcom/oneplus/lib/menu/ActionMenuView;

    iget-boolean v3, p0, mReserveOverflow:Z

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowReserved(Z)V

    return-void
.end method