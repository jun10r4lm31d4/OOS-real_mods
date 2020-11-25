.class public Lcom/oneplus/lib/widget/HintSearchView;
.super Landroid/widget/LinearLayout;
.source "HintSearchView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mHintText:Ljava/lang/String;

.field private mHintView:Landroid/widget/TextView;

.field private mIconSearch:Landroid/widget/ImageView;

.field private mOptionIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mOptionIconView:Landroid/widget/ImageView;

.field private mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSearchIconTintColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->hintSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->op_persistent_search_view:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setOrientation(I)V

    invoke-virtual {p0, v2}, setFocusable(Z)V

    invoke-virtual {p0, v2}, setClickable(Z)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->Oneplus_Widget_Desgin_HintSearchView:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_android_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_optionIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mOptionIconDrawable:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_android_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mHintText:Ljava/lang/String;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_iconTintColor:I

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_icon_color_active_default:I

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, mSearchIconTintColor:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->HintSearchView_android_textColorHint:I

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$color;->oneplus_contorl_text_color_hint_light:I

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    sget v2, Lcom/oneplus/commonctrl/R$id;->persistent_search_hint:I

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, mHintView:Landroid/widget/TextView;

    sget v2, Lcom/oneplus/commonctrl/R$id;->persistent_search_icon1:I

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, mIconSearch:Landroid/widget/ImageView;

    sget v2, Lcom/oneplus/commonctrl/R$id;->persistent_search_icon2:I

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, mOptionIconView:Landroid/widget/ImageView;

    iget-object v2, p0, mHintView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, mHintText:Ljava/lang/String;

    invoke-virtual {p0, v2}, setHintText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v3, p0, mSearchIconTintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_0
    iget-object v2, p0, mSearchIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, mOptionIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, setOptionIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public setHintText(I)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, mHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setHintText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setHintText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, mHintView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setOptionIcon(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, mOptionIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setOptionIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOptionIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, mOptionIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSearchIcon(I)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, mIconSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setSearchIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setSearchIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, mIconSearch:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
