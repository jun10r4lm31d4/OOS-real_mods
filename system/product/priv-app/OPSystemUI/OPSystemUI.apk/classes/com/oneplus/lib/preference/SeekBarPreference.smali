.class public Lcom/oneplus/lib/preference/SeekBarPreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/SeekBarPreference$SavedState;
    }
.end annotation


# instance fields
.field private mMax:I

.field private mProgress:I

.field private mTrackingTouch:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_seekBarPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x64

    invoke-virtual {p0, v0}, setMax(I)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/oneplus/commonctrl/R$styleable;->SeekBarPreference_android_layout:I

    sget p3, Lcom/oneplus/commonctrl/R$layout;->preference_widget_seekbar:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->setLayoutResource(I)V

    return-void
.end method

.method private setProgress(IZ)V
    .locals 1

    iget v0, p0, mMax:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    iget v0, p0, mProgress:I

    if-eq p1, v0, :cond_2

    iput p1, p0, mProgress:I

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->persistInt(I)Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    sget v0, Lcom/oneplus/commonctrl/R$id;->seekbar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget v0, p0, mMax:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget v0, p0, mProgress:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-boolean p2, p0, mTrackingTouch:Z

    if-nez p2, :cond_0

    invoke-virtual {p0, p1}, syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, mTrackingTouch:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, mTrackingTouch:Z

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, mProgress:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1}, syncProgress(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public setMax(I)V
    .locals 1

    iget v0, p0, mMax:I

    if-eq p1, v0, :cond_0

    iput p1, p0, mMax:I

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    :cond_0
    return-void
.end method

.method syncProgress(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, mProgress:I

    if-eq v0, v1, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, setProgress(IZ)V

    goto :goto_0

    :cond_0
    iget p0, p0, mProgress:I

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
