.class public Lcom/oneplus/lib/widget/NumericTextView;
.super Landroid/widget/TextView;
.source "NumericTextView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    }
.end annotation


# static fields
.field private static final LOG_RADIX:D

.field private static final RADIX:I = 0xa


# instance fields
.field private mCount:I

.field private mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

.field private mMaxCount:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mPreviousValue:I

.field private mShowLeadingZeroes:Z

.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, LOG_RADIX:D

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, mMinValue:I

    const/16 v0, 0x63

    iput v0, p0, mMaxValue:I

    const/4 v0, 0x2

    iput v0, p0, mMaxCount:I

    const/4 v0, 0x1

    iput-boolean v0, p0, mShowLeadingZeroes:Z

    invoke-virtual {p0, v0}, setFocusable(Z)V

    return-void
.end method

.method private handleKeyUp(I)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    iget v2, p0, mCount:I

    if-lez v2, :cond_1

    iget v3, p0, mValue:I

    div-int/lit8 v3, v3, 0xa

    iput v3, p0, mValue:I

    sub-int/2addr v2, v1

    iput v2, p0, mCount:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, isKeyCodeNumeric(I)Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, mCount:I

    iget v3, p0, mMaxCount:I

    if-ge v2, v3, :cond_1

    invoke-static {p1}, numericKeyCodeToInt(I)I

    move-result v2

    iget v3, p0, mValue:I

    mul-int/lit8 v3, v3, 0xa

    add-int/2addr v3, v2

    iget v4, p0, mMaxValue:I

    if-gt v3, v4, :cond_1

    iput v3, p0, mValue:I

    iget v4, p0, mCount:I

    add-int/2addr v4, v1

    iput v4, p0, mCount:I

    :cond_1
    :goto_0
    iget v2, p0, mCount:I

    if-lez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    iget v4, p0, mValue:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {p0, v2}, setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz v3, :cond_6

    iget v3, p0, mValue:I

    iget v4, p0, mMinValue:I

    if-lt v3, v4, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v0

    :goto_2
    iget v4, p0, mCount:I

    iget v5, p0, mMaxCount:I

    if-ge v4, v5, :cond_4

    iget v4, p0, mValue:I

    mul-int/lit8 v4, v4, 0xa

    iget v5, p0, mMaxValue:I

    if-le v4, v5, :cond_5

    :cond_4
    move v0, v1

    :cond_5
    iget-object v4, p0, mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    iget v5, p0, mValue:I

    invoke-interface {v4, p0, v5, v3, v0}, Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    :cond_6
    return v1

    :cond_7
    return v0
.end method

.method private static isKeyCodeNumeric(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_1

    const/16 v0, 0xe

    if-eq p0, v0, :cond_1

    const/16 v0, 0xf

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10

    if-ne p0, v0, :cond_0

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

.method private static numericKeyCodeToInt(I)I
    .locals 1

    add-int/lit8 v0, p0, -0x7

    return v0
.end method

.method private updateDisplayedValue()V
    .locals 4

    iget-boolean v0, p0, mShowLeadingZeroes:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mMaxCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "%d"

    :goto_0
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, mValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateMinimumWidth()V
    .locals 7

    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, mMaxValue:I

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "%0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, mMaxCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v6, v6}, measure(II)V

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v3

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v1}, setMinWidth(I)V

    invoke-virtual {p0, v1}, setMinimumWidth(I)V

    return-void
.end method


# virtual methods
.method public final getOnDigitEnteredListener()Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;
    .locals 1

    iget-object v0, p0, mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    return-object v0
.end method

.method public final getRangeMaximum()I
    .locals 1

    iget v0, p0, mMaxValue:I

    return v0
.end method

.method public final getRangeMinimum()I
    .locals 1

    iget v0, p0, mMinValue:I

    return v0
.end method

.method public final getShowLeadingZeroes()Z
    .locals 1

    iget-boolean v0, p0, mShowLeadingZeroes:Z

    return v0
.end method

.method public final getValue()I
    .locals 1

    iget v0, p0, mValue:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    const-string v0, ""

    if-eqz p1, :cond_0

    iget v1, p0, mValue:I

    iput v1, p0, mPreviousValue:I

    const/4 v1, 0x0

    iput v1, p0, mValue:I

    iput v1, p0, mCount:I

    invoke-virtual {p0}, getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, setHint(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget v1, p0, mCount:I

    if-nez v1, :cond_1

    iget v1, p0, mPreviousValue:I

    iput v1, p0, mValue:I

    invoke-virtual {p0}, getHint()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, setHint(Ljava/lang/CharSequence;)V

    :cond_1
    iget v0, p0, mValue:I

    iget v1, p0, mMinValue:I

    if-ge v0, v1, :cond_2

    iput v1, p0, mValue:I

    :cond_2
    iget v0, p0, mValue:I

    invoke-virtual {p0, v0}, setValue(I)V

    iget-object v0, p0, mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    if-eqz v0, :cond_3

    iget v1, p0, mValue:I

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2, v2}, Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;->onValueChanged(Lcom/oneplus/lib/widget/NumericTextView;IZZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

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

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1}, isKeyCodeNumeric(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x43

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onKeyMultiple(IILandroid/view/KeyEvent;)Z

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

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, handleKeyUp(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onKeyUp(ILandroid/view/KeyEvent;)Z

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

.method public final setOnDigitEnteredListener(Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;)V
    .locals 0

    iput-object p1, p0, mListener:Lcom/oneplus/lib/widget/NumericTextView$OnValueChangedListener;

    return-void
.end method

.method public final setRange(II)V
    .locals 4

    iget v0, p0, mMinValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, mMinValue:I

    :cond_0
    iget v0, p0, mMaxValue:I

    if-eq v0, p2, :cond_1

    iput p2, p0, mMaxValue:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-wide v2, LOG_RADIX:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mMaxCount:I

    invoke-direct {p0}, updateMinimumWidth()V

    invoke-direct {p0}, updateDisplayedValue()V

    :cond_1
    return-void
.end method

.method public final setShowLeadingZeroes(Z)V
    .locals 1

    iget-boolean v0, p0, mShowLeadingZeroes:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, mShowLeadingZeroes:Z

    invoke-direct {p0}, updateDisplayedValue()V

    :cond_0
    return-void
.end method

.method public final setValue(I)V
    .locals 1

    iget v0, p0, mValue:I

    if-eq v0, p1, :cond_0

    iput p1, p0, mValue:I

    invoke-direct {p0}, updateDisplayedValue()V

    :cond_0
    return-void
.end method
