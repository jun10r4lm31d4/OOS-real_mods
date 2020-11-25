.class public Lcom/oneplus/lib/design/widget/BadgeView;
.super Landroid/view/View;
.source "BadgeView.java"


# instance fields
.field private mBackgroundColor:I

.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mDefaultSize:I

.field private final mDefaultSizeIndeterminate:I

.field private final mDefaultTextPadding:I

.field private final mDefaultTextSize:I

.field private mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextHeight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private mTextWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_mini_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mDefaultSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_size_indeterminate:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mDefaultSizeIndeterminate:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mDefaultTextSize:I

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$dimen;->bottom_navigation_badge_text_horizontal_padding:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, mDefaultTextPadding:I

    new-instance p1, Landroid/text/TextPaint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, mTextPaint:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, mBackgroundPaint:Landroid/graphics/Paint;

    iget-object p1, p0, mTextPaint:Landroid/graphics/Paint;

    iget p2, p0, mDefaultTextSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object p0, p0, mTextPaint:Landroid/graphics/Paint;

    sget-object p1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method


# virtual methods
.method bindNotification(Lcom/oneplus/lib/design/widget/BottomNavigationNotification;)V
    .locals 4

    iput-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    iget-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getNumber()I

    move-result p1

    const/16 v0, 0x63

    if-le p1, v0, :cond_0

    const-string p1, "99+"

    goto :goto_0

    :cond_0
    iget-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, mText:Ljava/lang/String;

    iget-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isUseDefaultTextColor()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$color;->bottom_navigation_badge_text_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_1

    :cond_1
    iget-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getTextColor()I

    move-result p1

    :goto_1
    iput p1, p0, mTextColor:I

    iget-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isUseDefaultBackgroundColor()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/oneplus/commonctrl/R$color;->bottom_navigation_badge_background_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    goto :goto_2

    :cond_2
    iget-object p1, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    invoke-virtual {p1}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->getBackgroundColor()I

    move-result p1

    :goto_2
    iput p1, p0, mBackgroundColor:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    iput v0, p0, mTextWidth:F

    iget-object v0, p0, mTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v3, v2, p1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p0, mTextHeight:F

    iget-object p1, p0, mTextPaint:Landroid/graphics/Paint;

    iget v0, p0, mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object p1, p0, mBackgroundPaint:Landroid/graphics/Paint;

    iget v0, p0, mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getNotification()Lcom/oneplus/lib/design/widget/BottomNavigationNotification;
    .locals 0

    iget-object p0, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    return-object p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isIndeterminate()Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    iget v3, p0, mDefaultSizeIndeterminate:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object p0, p0, mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v9, v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v10, v0, v1

    iget-object v11, p0, mBackgroundPaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, mText:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget v1, p0, mTextHeight:F

    const v4, 0x400a3d71    # 2.16f

    div-float/2addr v1, v4

    add-float/2addr v3, v1

    iget-object p0, p0, mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-object v0, p0, mNotification:Lcom/oneplus/lib/design/widget/BottomNavigationNotification;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationNotification;->isIndeterminate()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, mTextWidth:F

    iget p2, p0, mDefaultTextPadding:I

    mul-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    add-float/2addr p1, p2

    :goto_0
    iget p2, p0, mDefaultSize:I

    int-to-float p2, p2

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-int p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    iget v0, p0, mDefaultSize:I

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    :goto_1
    return-void
.end method
