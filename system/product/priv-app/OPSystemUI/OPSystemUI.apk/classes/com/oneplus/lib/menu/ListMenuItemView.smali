.class public Lcom/oneplus/lib/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuView$ItemView;


# static fields
.field private static DOUBLE_LIEN_HEIGHT:I

.field private static final ICON_SIZE:I

.field private static final MARGIN_LEFT2:I

.field private static final MARGIN_LEFT4:I


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mDoubleLineHeight:I

.field private mForceShowIcon:Z

.field private mIconSize:I

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

.field private mMarginLeft2:I

.field private mMarginLeft4:I

.field private mMenuType:I

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mShortcutView:Landroid/widget/TextView;

.field private mSubMenuArrow:Landroid/graphics/drawable/Drawable;

.field private mSubMenuArrowView:Landroid/widget/ImageView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleLayout:Landroid/widget/RelativeLayout;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_left2:I

    sput v0, MARGIN_LEFT2:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_margin_left4:I

    sput v0, MARGIN_LEFT4:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_icon_size_button:I

    sput v0, ICON_SIZE:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_list_item_height_two_line1:I

    sput v0, DOUBLE_LIEN_HEIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x10104f2

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->MenuView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, MARGIN_LEFT2:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, mMarginLeft2:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, MARGIN_LEFT4:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, mMarginLeft4:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, ICON_SIZE:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, mIconSize:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, mBackground:Landroid/graphics/drawable/Drawable;

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, mTextAppearance:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, mPreserveIconSpacing:Z

    iput-object p1, p0, mTextAppearanceContext:Landroid/content/Context;

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->MenuView_android_subMenuArrow:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, DOUBLE_LIEN_HEIGHT:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mDoubleLineHeight:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p0, p0, mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private insertCheckBox()V
    .locals 3

    invoke-direct {p0}, getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertIconView()V
    .locals 3

    invoke-direct {p0}, getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iget-object v0, p0, mTitleLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, mMarginLeft4:I

    iget v2, p0, mMarginLeft2:I

    sub-int/2addr v1, v2

    iget v2, p0, mIconSize:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget-object p0, p0, mTitleLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    invoke-direct {p0}, getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private setSubMenuArrowVisible(Z)V
    .locals 0

    iget-object p0, p0, mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getItemData()Lcom/oneplus/lib/menu/MenuItemImpl;
    .locals 0

    iget-object p0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    return-object p0
.end method

.method public initialize(Lcom/oneplus/lib/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    iput p2, p0, mMenuType:I

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getTitleForItemView(Lcom/oneplus/lib/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, setCheckable(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p2

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    invoke-virtual {p0, p2, v0}, setShortcut(ZC)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->isEnabled()Z

    move-result p2

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->hasSubMenu()Z

    move-result p2

    invoke-direct {p0, p2}, setSubMenuArrowVisible(Z)V

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/oneplus/commonctrl/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mTitleView:Landroid/widget/TextView;

    iget v0, p0, mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mShortcutView:Landroid/widget/TextView;

    sget v0, Lcom/oneplus/commonctrl/R$id;->submenuarrow:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mSubMenuArrowView:Landroid/widget/ImageView;

    iget-object v0, p0, mSubMenuArrowView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v1, p0, mSubMenuArrow:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    sget v0, Lcom/oneplus/commonctrl/R$id;->title_layout:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, mTitleLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, mTitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 p2, 0x2

    if-lt p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, mDoubleLineHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :cond_1
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, insertRadioButton()V

    :cond_1
    iget-object v0, p0, mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0

    :cond_2
    iget-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    invoke-direct {p0}, insertCheckBox()V

    :cond_3
    iget-object v0, p0, mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    const/16 v2, 0x8

    if-eqz p1, :cond_6

    iget-object p0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    if-eqz p1, :cond_4

    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    move p0, v2

    :goto_1
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p1

    if-eq p1, p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_5
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result p0

    if-eq p0, v2, :cond_8

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, mCheckBox:Landroid/widget/CheckBox;

    if-eqz p1, :cond_7

    invoke-virtual {p1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_7
    iget-object p0, p0, mRadioButton:Landroid/widget/RadioButton;

    if-eqz p0, :cond_8

    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, mForceShowIcon:Z

    iput-boolean p1, p0, mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    invoke-direct {p0}, insertIconView()V

    :cond_4
    if-nez p1, :cond_6

    iget-boolean v2, p0, mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/oneplus/lib/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    iget-object p2, p0, mShortcutView:Landroid/widget/TextView;

    iget-object v0, p0, mItemData:Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    iget-object p0, p0, mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p0, p0, mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
