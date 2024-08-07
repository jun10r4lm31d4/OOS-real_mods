.class public Lcom/oneplus/lib/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/lib/menu/ActionMenuView$ActionMenuChildView;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;,
        Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
    }
.end annotation


# static fields
.field private static final MAX_ICON_SIZE:I

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private mAllowTextWithIcon:Z

.field private mExpandedFormat:Z

.field private mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->abc_action_menu_icon_size:I

    sput v0, MAX_ICON_SIZE:I

    return-void
.end method

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
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, shouldAllowTextWithIcon()Z

    move-result v1

    iput-boolean v1, p0, mAllowTextWithIcon:Z

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->ActionMenuItemView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->ActionMenuItemView_android_minWidth:I

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, mMinWidth:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, MAX_ICON_SIZE:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, mMaxIconSize:I

    invoke-virtual {p0, p0}, setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v3, -0x1

    iput v3, p0, mSavedPaddingLeft:I

    invoke-virtual {p0, v2}, setSaveEnabled(Z)V

    return-void
.end method

.method private shouldAllowTextWithIcon()Z
    .locals 5

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    const/16 v3, 0x1e0

    if-ge v1, v3, :cond_2

    const/16 v4, 0x280

    if-lt v1, v4, :cond_0

    if-ge v2, v3, :cond_2

    :cond_0
    iget v3, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method private updateTextButtonVisibility()V
    .locals 5

    iget-object v0, p0, mTitle:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-object v2, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    iget-object v2, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, mAllowTextWithIcon:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, mExpandedFormat:Z

    if-eqz v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_3
    move-object v2, v1

    :goto_2
    invoke-virtual {p0, v2}, setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_4

    move-object v3, v1

    goto :goto_3

    :cond_4
    iget-object v3, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    :goto_3
    invoke-virtual {p0, v3}, setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_5
    invoke-virtual {p0, v2}, setContentDescription(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v3, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTooltipText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    iget-object v1, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_5
    invoke-static {p0, v1}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_7
    invoke-static {p0, v3}, Lcom/oneplus/lib/app/appcompat/TooltipCompat;->setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_6
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasText()Z
    .locals 1

    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, setId(I)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, setVisibility(I)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, setEnabled(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuItemView$ActionMenuItemForwardingListener;-><init>(Lcom/oneplus/lib/menu/ActionMenuItemView;)V

    iput-object v0, p0, mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    :cond_1
    return-void
.end method

.method public needsDividerAfter()Z
    .locals 1

    invoke-virtual {p0}, hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    invoke-virtual {p0}, hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    iget-object v1, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/oneplus/lib/menu/MenuItemImpl;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, shouldAllowTextWithIcon()Z

    move-result v0

    iput-boolean v0, p0, mAllowTextWithIcon:Z

    invoke-direct {p0}, updateTextButtonVisibility()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    invoke-virtual {p0}, hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v1, p0, mSavedPaddingLeft:I

    if-ltz v1, :cond_0

    invoke-virtual {p0}, getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v4

    invoke-super {p0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    if-ne v1, v4, :cond_1

    iget v4, p0, mMinWidth:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_0

    :cond_1
    iget v4, p0, mMinWidth:I

    :goto_0
    nop

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v1, v5, :cond_2

    iget v6, p0, mMinWidth:I

    if-lez v6, :cond_2

    if-ge v3, v4, :cond_2

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-super {p0, v5, p2}, Landroid/widget/TextView;->onMeasure(II)V

    :cond_2
    if-nez v0, :cond_3

    iget-object v5, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_3

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int v7, v5, v6

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mForwardingListener:Lcom/oneplus/lib/widget/ForwardingListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/ForwardingListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0

    return-void
.end method

.method public setChecked(Z)V
    .locals 0

    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1

    iget-boolean v0, p0, mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, mExpandedFormat:Z

    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->actionFormatChanged()V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iput-object p1, p0, mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p0, mMaxIconSize:I

    if-le v0, v2, :cond_0

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v0, p0, mMaxIconSize:I

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v1, v3

    :cond_0
    iget v2, p0, mMaxIconSize:I

    if-le v1, v2, :cond_1

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    iget v1, p0, mMaxIconSize:I

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, updateTextButtonVisibility()V

    return-void
.end method

.method public setItemInvoker(Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    iput-object p1, p0, mItemInvoker:Lcom/oneplus/lib/menu/MenuBuilder$ItemInvoker;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    iput p1, p0, mSavedPaddingLeft:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public setPopupCallback(Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;)V
    .locals 0

    iput-object p1, p0, mPopupCallback:Lcom/oneplus/lib/menu/ActionMenuItemView$PopupCallback;

    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, mTitle:Ljava/lang/CharSequence;

    invoke-direct {p0}, updateTextButtonVisibility()V

    return-void
.end method

.method public showsIcon()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
