.class public Lcom/oneplus/aod/OpDateTimeView;
.super Landroid/widget/GridLayout;
.source "OpDateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/OpDateTimeView$Patterns;
    }
.end annotation


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/oneplus/aod/OpTextDate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 10

    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    const-string v0, "DateTimeView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, mClockStyle:I

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-nez v2, :cond_0

    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_default_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_2

    :cond_0
    const/4 v7, 0x6

    if-eq v2, v7, :cond_7

    const/4 v7, 0x7

    if-ne v2, v7, :cond_1

    goto :goto_1

    :cond_1
    if-ne v2, v5, :cond_2

    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_digital_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    goto :goto_2

    :cond_2
    if-ne v2, v4, :cond_3

    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_typographic_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    goto :goto_2

    :cond_3
    const/16 v7, 0xa

    if-eq v2, v7, :cond_6

    const/16 v7, 0x9

    if-eq v2, v7, :cond_6

    const/16 v7, 0x8

    if-eq v2, v7, :cond_6

    const/4 v7, 0x5

    if-ne v2, v7, :cond_4

    goto :goto_0

    :cond_4
    if-ne v2, v3, :cond_5

    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_digital2_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    goto :goto_2

    :cond_5
    move v2, v6

    goto :goto_2

    :cond_6
    :goto_0
    sget v2, Lcom/android/systemui/R$dimen;->aod_clock_analog_min2_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    goto :goto_2

    :cond_7
    :goto_1
    sget v2, Lcom/android/systemui/R$dimen;->date_time_view_analog_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    :goto_2
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "17819"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    sget v7, Lcom/android/systemui/R$dimen;->date_time_view_17819_additional_marginTop:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/oneplus/aod/OpAodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v7

    const-string v8, "17801"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    sget v7, Lcom/android/systemui/R$dimen;->date_time_view_17801_additional_marginTop:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    :cond_9
    iget v7, p0, mClockStyle:I

    if-nez v7, :cond_a

    sget v7, Lcom/android/systemui/R$dimen;->date_time_view_additional_marginTop:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    goto :goto_3

    :cond_a
    move v7, v6

    :goto_3
    iget v8, p0, mClockStyle:I

    const/16 v9, 0x28

    if-ne v8, v9, :cond_b

    sget v2, Lcom/android/systemui/R$dimen;->op_aod_clock_analog_my_margin_top:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-static {v2}, Lcom/oneplus/util/OpUtils;->convertDpToFixedPx(F)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_4

    :cond_b
    add-int/2addr v2, v7

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_4
    invoke-virtual {p0, v1}, Landroid/widget/GridLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, mClockStyle:I

    if-eq v2, v5, :cond_d

    if-eq v2, v4, :cond_d

    if-ne v2, v3, :cond_c

    goto :goto_5

    :cond_c
    sget v2, Lcom/android/systemui/R$dimen;->date_view_marginTop:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_6

    :cond_d
    :goto_5
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :goto_6
    iget-object p0, p0, mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    const-string p0, "DateTimeView"

    const-string v0, "onDetachedFromWindow"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    const-string v0, "DateTimeView"

    const-string v1, "onFinishInflate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/systemui/R$id;->date_view:I

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OpTextDate;

    iput-object v0, p0, mDateView:Lcom/oneplus/aod/OpTextDate;

    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget v1, p0, mClockStyle:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/OpDateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    invoke-virtual {p0}, refreshTime()V

    iget-object p0, p0, mDateView:Lcom/oneplus/aod/OpTextDate;

    invoke-virtual {p0}, Lcom/oneplus/aod/OpTextDate;->onTimeChanged()V

    return-void
.end method

.method public refreshTime()V
    .locals 1

    const-string p0, "DateTimeView"

    const-string v0, "refreshTime"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    iput p1, p0, mClockStyle:I

    invoke-virtual {p0}, refresh()V

    return-void
.end method
