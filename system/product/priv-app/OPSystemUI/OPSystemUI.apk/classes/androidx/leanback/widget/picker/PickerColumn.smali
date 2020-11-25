.class public Landroidx/leanback/widget/picker/PickerColumn;
.super Ljava/lang/Object;
.source "PickerColumn.java"


# instance fields
.field private mCurrentValue:I

.field private mLabelFormat:Ljava/lang/String;

.field private mMaxValue:I

.field private mMinValue:I

.field private mStaticLabels:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget v0, p0, mMaxValue:I

    iget p0, p0, mMinValue:I

    sub-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getCurrentValue()I
    .locals 0

    iget p0, p0, mCurrentValue:I

    return p0
.end method

.method public getLabelFor(I)Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, mStaticLabels:[Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object p0, p0, mLabelFormat:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    aget-object p0, v0, p1

    return-object p0
.end method

.method public getMaxValue()I
    .locals 0

    iget p0, p0, mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    iget p0, p0, mMinValue:I

    return p0
.end method

.method public setCurrentValue(I)V
    .locals 0

    iput p1, p0, mCurrentValue:I

    return-void
.end method

.method public setLabelFormat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, mLabelFormat:Ljava/lang/String;

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    iput p1, p0, mMaxValue:I

    return-void
.end method

.method public setMinValue(I)V
    .locals 0

    iput p1, p0, mMinValue:I

    return-void
.end method

.method public setStaticLabels([Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, mStaticLabels:[Ljava/lang/CharSequence;

    return-void
.end method