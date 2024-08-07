.class Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView$TabView;
.super Landroid/widget/LinearLayout;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TabView"
.end annotation


# instance fields
.field private final BG_ATTRS:[I

.field private mCustomView:Landroid/view/View;

.field private mIconView:Landroid/widget/ImageView;

.field private mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

.field private mTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;Landroid/content/Context;Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;Z)V
    .locals 3

    iput-object p1, p0, this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    sget p1, Lcom/oneplus/commonctrl/R$attr;->actionBarTabStyle:I

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const/4 v1, 0x0

    const v2, 0x10100d4

    aput v2, p1, v1

    iput-object p1, p0, BG_ATTRS:[I

    iput-object p3, p0, mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    iget-object p1, p0, BG_ATTRS:[I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarTabStyle:I

    invoke-static {p2, v0, p1, v2, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Lcom/oneplus/lib/app/appcompat/TintTypedArray;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/app/appcompat/TintTypedArray;->recycle()V

    if-eqz p4, :cond_1

    const v0, 0x800013

    invoke-virtual {p0, v0}, setGravity(I)V

    :cond_1
    invoke-virtual {p0}, update()V

    return-void
.end method


# virtual methods
.method public bindTab(Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;)V
    .locals 0

    iput-object p1, p0, mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {p0}, update()V

    return-void
.end method

.method public getTab()Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;
    .locals 1

    iget-object v0, p0, mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    return-object v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-class v0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const-class v0, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, getLocationOnScreen([I)V

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, getWidth()I

    move-result v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v5, p0, mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {v5}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    aget v6, v0, v6

    div-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    sub-int/2addr v6, v7

    const/16 v7, 0x31

    invoke-virtual {v5, v7, v6, v3}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    const/4 v6, 0x1

    return v6
.end method

.method public onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v0, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v1, v1, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    iget v0, v0, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->mMaxTabWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, v0, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    invoke-virtual {p0}, isSelected()Z

    move-result v0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, sendAccessibilityEvent(I)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 12

    iget-object v0, p0, mTab:Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_1

    if-eqz v4, :cond_0

    move-object v5, v4

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0, v1}, addView(Landroid/view/View;)V

    :cond_1
    iput-object v1, p0, mCustomView:Landroid/view/View;

    iget-object v5, p0, mTextView:Landroid/widget/TextView;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v5, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    goto/16 :goto_2

    :cond_4
    iget-object v4, p0, mCustomView:Landroid/view/View;

    if-eqz v4, :cond_5

    invoke-virtual {p0, v4}, removeView(Landroid/view/View;)V

    iput-object v3, p0, mCustomView:Landroid/view/View;

    :cond_5
    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v8, 0x0

    if-eqz v4, :cond_7

    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    if-nez v9, :cond_6

    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v6, v10, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v9, v8}, addView(Landroid/view/View;I)V

    iput-object v9, p0, mIconView:Landroid/widget/ImageView;

    :cond_6
    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_7
    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v9, :cond_8

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v9, p0, mIconView:Landroid/widget/ImageView;

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_a

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    if-nez v2, :cond_9

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    sget v11, Lcom/oneplus/commonctrl/R$attr;->actionBarTabTextStyle:I

    invoke-direct {v2, v10, v3, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v10, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v7, v10

    iput v6, v7, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v2}, addView(Landroid/view/View;)V

    iput-object v2, p0, mTextView:Landroid/widget/TextView;

    :cond_9
    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_a
    iget-object v6, p0, mTextView:Landroid/widget/TextView;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    :goto_1
    iget-object v2, p0, mIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_c

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_c
    if-nez v9, :cond_d

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBar$Tab;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {p0, p0}, setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    :cond_d
    invoke-virtual {p0, v3}, setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0, v8}, setLongClickable(Z)V

    :goto_2
    return-void
.end method
