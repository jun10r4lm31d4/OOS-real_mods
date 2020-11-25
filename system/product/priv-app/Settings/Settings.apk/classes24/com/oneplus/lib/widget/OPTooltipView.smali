.class public Lcom/oneplus/lib/widget/OPTooltipView;
.super Landroid/widget/LinearLayout;
.source "OPTooltipView.java"


# static fields
.field public static final BOTTOM_DIRECTION:I = 0x4

.field private static final CONTAINER_BACKGROUND_COLOR_ALPHA:F = 0.87f

.field public static final LEFT_DIRECTION:I = 0x1

.field public static final RIGHT_DIRECTION:I = 0x2

.field public static final TOP_DIRECTION:I = 0x3


# instance fields
.field private color:I

.field private mArrowHeight:I

.field private mArrowPath:Landroid/graphics/Path;

.field private mArrowWidth:I

.field private mBody:Landroid/graphics/RectF;

.field private mButton1:Landroid/widget/Button;

.field private mButton2:Landroid/widget/Button;

.field private mContentView:Landroid/widget/LinearLayout;

.field private mDirection:I

.field private mMessage:Landroid/widget/TextView;

.field private mPaint:Landroid/graphics/Paint;

.field private mPercent:F

.field private mRadius:I

.field private mTitle:Landroid/widget/TextView;

.field private porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, mBody:Landroid/graphics/RectF;

    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, mPercent:F

    const/4 v1, 0x3

    iput v1, p0, mDirection:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_control_tooltip_view:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, initView()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, setWillNotDraw(Z)V

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_radius_r12:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mRadius:I

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->op_control_tooltip_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mArrowHeight:I

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->op_control_tooltip_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, mArrowWidth:I

    invoke-direct {p0}, initPaint()V

    iget v1, p0, mDirection:I

    invoke-virtual {p0, v1, v0}, setDirection(IF)V

    return-void
.end method

.method private initPaint()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, setLayerType(ILandroid/graphics/Paint;)V

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$color;->oneplus_accent_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, color:I

    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    iget v2, p0, color:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    const/16 v2, 0xdd

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initView()V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$id;->content:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, mContentView:Landroid/widget/LinearLayout;

    sget v0, Lcom/oneplus/commonctrl/R$id;->title:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mTitle:Landroid/widget/TextView;

    sget v0, Lcom/oneplus/commonctrl/R$id;->message:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, mMessage:Landroid/widget/TextView;

    sget v0, Lcom/oneplus/commonctrl/R$id;->button1:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, mButton1:Landroid/widget/Button;

    sget v0, Lcom/oneplus/commonctrl/R$id;->button2:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, mButton2:Landroid/widget/Button;

    return-void
.end method

.method private updateMargin()V
    .locals 4

    iget-object v0, p0, mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, mDirection:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v1, p0, mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_1
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v1, p0, mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_2
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v1, p0, mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    :cond_3
    iget v1, p0, mArrowHeight:I

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    nop

    :goto_0
    iget-object v1, p0, mContentView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, mDirection:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-ne v4, v0, :cond_0

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v0, v5}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    if-ne v3, v0, :cond_1

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p0}, getHeight()I

    move-result v6

    iget v7, p0, mArrowHeight:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v0, v6

    invoke-virtual {p1, v5, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_2
    if-ne v1, v0, :cond_3

    invoke-virtual {p0}, getWidth()I

    move-result v0

    iget v6, p0, mArrowHeight:I

    sub-int/2addr v0, v6

    int-to-float v0, v0

    iget v6, p0, mPercent:F

    invoke-virtual {p0}, getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_3
    :goto_0
    iget-object v0, p0, mArrowPath:Landroid/graphics/Path;

    iget-object v6, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, porterDuffXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget v0, p0, mDirection:I

    if-ne v4, v0, :cond_4

    iget-object v0, p0, mBody:Landroid/graphics/RectF;

    iget v1, p0, mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v5, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_4
    if-ne v3, v0, :cond_5

    iget-object v0, p0, mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    iget v3, p0, mArrowHeight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_5
    if-ne v2, v0, :cond_6

    iget-object v0, p0, mBody:Landroid/graphics/RectF;

    iget v1, p0, mArrowHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_1

    :cond_6
    if-ne v1, v0, :cond_7

    iget-object v0, p0, mBody:Landroid/graphics/RectF;

    invoke-virtual {p0}, getWidth()I

    move-result v1

    iget v2, p0, mArrowHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    :cond_7
    :goto_1
    iget-object v0, p0, mBody:Landroid/graphics/RectF;

    iget v1, p0, mRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method public setDirection(IF)V
    .locals 6

    iput p1, p0, mDirection:I

    iput p2, p0, mPercent:F

    iget v0, p0, mPercent:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    iput v1, p0, mPercent:F

    goto :goto_0

    :cond_0
    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    iput v3, p0, mPercent:F

    :cond_1
    :goto_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, mArrowPath:Landroid/graphics/Path;

    iget-object v0, p0, mArrowPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    const/4 v0, 0x3

    iget v2, p0, mDirection:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iput v1, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowWidth:I

    neg-int v2, v2

    iget v3, p0, mArrowHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowHeight:I

    iget v4, p0, mRadius:I

    add-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    iput v3, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowHeight:I

    iget v3, p0, mRadius:I

    add-int/2addr v2, v3

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    iget v4, p0, mArrowHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowWidth:I

    neg-int v2, v2

    div-int/2addr v2, v4

    iget v3, p0, mArrowHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    div-int/2addr v3, v4

    iget v4, p0, mArrowHeight:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    :goto_1
    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_4
    const/4 v0, 0x4

    if-ne v0, v2, :cond_7

    invoke-virtual {p0}, getWidth()I

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iput v1, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, mArrowHeight:I

    invoke-direct {v0, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowWidth:I

    neg-int v2, v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mRadius:I

    neg-int v3, v3

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, getWidth()I

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iput v3, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, mArrowHeight:I

    invoke-direct {v0, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mRadius:I

    neg-int v2, v2

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_2

    :cond_6
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, mArrowHeight:I

    invoke-direct {v0, v5, v1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowWidth:I

    neg-int v2, v2

    div-int/2addr v2, v4

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    div-int/2addr v3, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_2
    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_7
    const/4 v0, 0x1

    if-ne v0, v2, :cond_a

    invoke-virtual {p0}, getHeight()I

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_8

    iput v1, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowHeight:I

    iget v3, p0, mRadius:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowHeight:I

    iget v4, p0, mArrowWidth:I

    neg-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, getHeight()I

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    iput v3, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowHeight:I

    iget v3, p0, mRadius:I

    add-int/2addr v2, v3

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowHeight:I

    iget v4, p0, mArrowWidth:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_3

    :cond_9
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v5, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowHeight:I

    iget v3, p0, mArrowWidth:I

    div-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowHeight:I

    iget v5, p0, mArrowWidth:I

    neg-int v5, v5

    div-int/2addr v5, v4

    invoke-direct {v2, v3, v5}, Landroid/graphics/Point;-><init>(II)V

    :goto_3
    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_5

    :cond_a
    if-ne v4, v2, :cond_d

    invoke-virtual {p0}, getHeight()I

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    iget v2, p0, mArrowWidth:I

    div-int/2addr v2, v4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, mRadius:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_b

    iput v1, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, mArrowHeight:I

    invoke-direct {v0, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mRadius:I

    neg-int v2, v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    neg-int v3, v3

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_b
    invoke-virtual {p0}, getHeight()I

    move-result v0

    if-eqz v0, :cond_c

    iget v0, p0, mPercent:F

    invoke-virtual {p0}, getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget v1, p0, mArrowWidth:I

    div-int/2addr v1, v4

    iget v2, p0, mRadius:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_c

    iput v3, p0, mPercent:F

    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, mArrowHeight:I

    invoke-direct {v0, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mRadius:I

    neg-int v2, v2

    invoke-direct {v1, v2, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_4

    :cond_c
    new-instance v0, Landroid/graphics/Point;

    iget v1, p0, mArrowHeight:I

    invoke-direct {v0, v1, v5}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, mArrowWidth:I

    neg-int v2, v2

    div-int/2addr v2, v4

    invoke-direct {v1, v5, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v2, Landroid/graphics/Point;

    iget v3, p0, mArrowWidth:I

    div-int/2addr v3, v4

    invoke-direct {v2, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    :goto_4
    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v2, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, mArrowPath:Landroid/graphics/Path;

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_d
    :goto_5
    iget-object v0, p0, mArrowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    invoke-direct {p0}, updateMargin()V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mButton2:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mButton2:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, mButton2:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mButton1:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mButton1:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, mButton1:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setmMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
