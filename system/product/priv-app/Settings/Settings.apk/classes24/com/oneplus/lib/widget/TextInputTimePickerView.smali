.class public Lcom/oneplus/lib/widget/TextInputTimePickerView;
.super Landroid/widget/RelativeLayout;
.source "TextInputTimePickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field public static final AMPM:I = 0x2

.field public static final HOURS:I = 0x0

.field public static final MINUTES:I = 0x1

.field private static final PM:I = 0x1

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_NORAML:I = 0x1


# instance fields
.field private final mAmLabel:Landroid/widget/RadioButton;

.field private final mAmPmGroup:Landroid/widget/RadioGroup;

.field private final mAmPmParent:Landroid/widget/LinearLayout;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private final mErrorLabel:Landroid/widget/TextView;

.field private mErrorShowing:Z

.field private final mHeaderLabel:Landroid/widget/TextView;

.field private final mHourEditText:Landroid/widget/EditText;

.field private mHourFormatStartsAtZero:Z

.field private final mHourLabel:Landroid/widget/TextView;

.field private final mInputBlock:Landroid/view/View;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIs24Hour:Z

.field private mIsAmPmAtStart:Z

.field private mLabelAlphaDuration:I

.field private mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

.field private final mMinuteEditText:Landroid/widget/EditText;

.field private final mMinuteLabel:Landroid/widget/TextView;

.field private final mPmLabel:Landroid/widget/RadioButton;

.field private mTimeColorStates:[I

.field private mTimeLabelColorStates:[I


# direct methods
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
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, mTimeColorStates:[I

    new-array v1, v0, [I

    iput-object v1, p0, mTimeLabelColorStates:[I

    new-instance v1, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$5;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    iput-object v1, p0, mClickListener:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$layout;->time_picker_text_input_material:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v1, Lcom/oneplus/commonctrl/R$id;->input_am_pm_parent:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, mAmPmParent:Landroid/widget/LinearLayout;

    sget v1, Lcom/oneplus/commonctrl/R$id;->input_block:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, mInputBlock:Landroid/view/View;

    sget v1, Lcom/oneplus/commonctrl/R$id;->input_hour:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, mHourEditText:Landroid/widget/EditText;

    sget v1, Lcom/oneplus/commonctrl/R$id;->input_minute:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, mMinuteEditText:Landroid/widget/EditText;

    sget v1, Lcom/oneplus/commonctrl/R$id;->top_label:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mHeaderLabel:Landroid/widget/TextView;

    sget v1, Lcom/oneplus/commonctrl/R$id;->label_error:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mErrorLabel:Landroid/widget/TextView;

    sget v1, Lcom/oneplus/commonctrl/R$id;->label_hour:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mHourLabel:Landroid/widget/TextView;

    sget v1, Lcom/oneplus/commonctrl/R$id;->label_minute:I

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mMinuteLabel:Landroid/widget/TextView;

    new-array v1, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerColorActivated:I

    const/4 v4, 0x0

    aput v2, v1, v4

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerColorUnActivated:I

    aput v2, v1, v3

    new-array v0, v0, [I

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerColorUnActivated:I

    aput v2, v0, v4

    sget v2, Lcom/oneplus/commonctrl/R$attr;->opPickerInputLabelUnActivated:I

    aput v2, v0, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$integer;->oneplus_contorl_time_part6:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iput v5, p0, mLabelAlphaDuration:I

    iget-object v5, p0, mTimeColorStates:[I

    const/high16 v6, -0x1000000

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v4

    iget-object v5, p0, mTimeColorStates:[I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    iget-object v5, p0, mTimeLabelColorStates:[I

    invoke-virtual {v2, v4, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v4

    iget-object v5, p0, mTimeLabelColorStates:[I

    invoke-virtual {v2, v3, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    aput v6, v5, v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v5, p0, mHourEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$1;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, mMinuteEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$2;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, mHourEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$3;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$3;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v5, p0, mMinuteEditText:Landroid/widget/EditText;

    new-instance v6, Lcom/oneplus/lib/widget/TextInputTimePickerView$4;

    invoke-direct {v6, p0}, Lcom/oneplus/lib/widget/TextInputTimePickerView$4;-><init>(Lcom/oneplus/lib/widget/TextInputTimePickerView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-static {p1}, Lcom/oneplus/lib/widget/TimePicker;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$id;->am_pm_group:I

    invoke-virtual {p0, v6}, findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioGroup;

    iput-object v6, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    sget v6, Lcom/oneplus/commonctrl/R$id;->am_label2:I

    invoke-virtual {p0, v6}, findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RadioButton;

    iput-object v6, p0, mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, mAmLabel:Landroid/widget/RadioButton;

    aget-object v4, v5, v4

    invoke-static {v4}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, mAmLabel:Landroid/widget/RadioButton;

    iget-object v6, p0, mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v6}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, mAmLabel:Landroid/widget/RadioButton;

    invoke-static {v4}, ensureMinimumTextWidth(Landroid/widget/TextView;)V

    sget v4, Lcom/oneplus/commonctrl/R$id;->pm_label2:I

    invoke-virtual {p0, v4}, findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    iput-object v4, p0, mPmLabel:Landroid/widget/RadioButton;

    iget-object v4, p0, mPmLabel:Landroid/widget/RadioButton;

    aget-object v3, v5, v3

    invoke-static {v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->obtainVerbatim(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, mPmLabel:Landroid/widget/RadioButton;

    iget-object v4, p0, mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, mPmLabel:Landroid/widget/RadioButton;

    invoke-static {v3}, ensureMinimumTextWidth(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, mHourEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, mMinuteEditText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/TextInputTimePickerView;ILandroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0, p1, p2}, resetInputTimeTextAppearance(ILandroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/TextInputTimePickerView;)[I
    .locals 1

    iget-object v0, p0, mTimeColorStates:[I

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, resetInputTimeLabelState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/TextInputTimePickerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, showSoftInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/TextInputTimePickerView;Z)V
    .locals 0

    invoke-direct {p0, p1}, updateAmPmLabel(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/TextInputTimePickerView;)Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;
    .locals 1

    iget-object v0, p0, mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    return-object v0
.end method

.method private static ensureMinimumTextWidth(Landroid/widget/TextView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/widget/TextView;->measure(II)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMinimumWidth(I)V

    return-void
.end method

.method private getHourOfDayFromLocalizedHour(I)I
    .locals 2

    move v0, p1

    iget-boolean v1, p0, mIs24Hour:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, mHourFormatStartsAtZero:Z

    if-nez v1, :cond_2

    const/16 v1, 0x18

    if-ne p1, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, mHourFormatStartsAtZero:Z

    if-nez v1, :cond_1

    const/16 v1, 0xc

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, 0xc

    :cond_2
    :goto_0
    return v0
.end method

.method private isValidLocalizedHour(I)Z
    .locals 3

    iget-boolean v0, p0, mHourFormatStartsAtZero:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iget-boolean v2, p0, mIs24Hour:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x17

    goto :goto_0

    :cond_0
    const/16 v2, 0xb

    :goto_0
    add-int/2addr v2, v0

    if-lt p1, v0, :cond_1

    if-gt p1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private parseAndSetHourInternal(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, isValidLocalizedHour(I)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-boolean v2, p0, mHourFormatStartsAtZero:Z

    if-eqz v2, :cond_0

    move v3, v0

    :cond_0
    move v2, v3

    iget-boolean v3, p0, mIs24Hour:Z

    if-eqz v3, :cond_1

    const/16 v3, 0x17

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0xb

    :goto_0
    iget-object v4, p0, mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v5

    invoke-direct {p0, v5}, getHourOfDayFromLocalizedHour(I)I

    move-result v5

    invoke-interface {v4, v0, v5}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v0

    :cond_2
    iget-object v2, p0, mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-direct {p0, v1}, getHourOfDayFromLocalizedHour(I)I

    move-result v4

    invoke-interface {v2, v0, v4}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception v1

    return v0
.end method

.method private parseAndSetMinuteInternal(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3b

    const/4 v3, 0x1

    if-ltz v1, :cond_1

    if-le v1, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-interface {v2, v3, v1}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V

    return v3

    :cond_1
    :goto_0
    iget-object v4, p0, mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    invoke-static {v1, v0, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v2

    invoke-interface {v4, v3, v2}, Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;->onValueChanged(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private resetInputTimeLabelState(Z)V
    .locals 4

    iget-object v0, p0, mMinuteLabel:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, mTimeLabelColorStates:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object v1, p0, mTimeLabelColorStates:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, mTimeLabelColorStates:[I

    aget v1, v2, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private resetInputTimeTextAppearance(ILandroid/widget/TextView;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/lib/util/SystemUtils;->isAtLeastM()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_0
    return-void
.end method

.method private setError(Z)V
    .locals 4

    iput-boolean p1, p0, mErrorShowing:Z

    iget-object v0, p0, mErrorLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, mHourLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, mMinuteLabel:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private showSoftInput(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v0, p0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method private updateAmPmLabel(Z)V
    .locals 4

    iget-object v0, p0, mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v0, p0, mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, mAmLabel:Landroid/widget/RadioButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, p0, mTimeColorStates:[I

    if-eqz p1, :cond_0

    aget v3, v3, v1

    goto :goto_0

    :cond_0
    aget v3, v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, mAmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    iget-object v0, p0, mPmLabel:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setActivated(Z)V

    iget-object v0, p0, mPmLabel:Landroid/widget/RadioButton;

    xor-int/lit8 v3, p1, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, mPmLabel:Landroid/widget/RadioButton;

    if-eqz p1, :cond_1

    iget-object v1, p0, mTimeColorStates:[I

    aget v1, v1, v2

    goto :goto_1

    :cond_1
    iget-object v2, p0, mTimeColorStates:[I

    aget v1, v2, v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    iget-object v0, p0, mPmLabel:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    return-void
.end method


# virtual methods
.method public getInputBlock()Landroid/view/View;
    .locals 1

    iget-object v0, p0, mInputBlock:Landroid/view/View;

    return-object v0
.end method

.method public setAmPmAtStart(Z)V
    .locals 3

    iget-boolean v0, p0, mIs24Hour:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-boolean v0, p0, mIsAmPmAtStart:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, mIsAmPmAtStart:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v1, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, mAmPmParent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_2
    return-void
.end method

.method setHourFormat(I)V
    .locals 5

    iget-object v0, p0, mHourEditText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    iget-object v0, p0, mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v2, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method

.method public setIs24Hour(Z)V
    .locals 1

    iget-boolean v0, p0, mIs24Hour:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, mIs24Hour:Z

    iget-boolean v0, p0, mIsAmPmAtStart:Z

    invoke-virtual {p0, v0}, setAmPmAtStart(Z)V

    :cond_0
    return-void
.end method

.method setListener(Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;)V
    .locals 0

    iput-object p1, p0, mListener:Lcom/oneplus/lib/widget/TextInputTimePickerView$OnValueTypedListener;

    return-void
.end method

.method public showInputBlock(Z)V
    .locals 4

    iget-object v0, p0, mInputBlock:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    return-void
.end method

.method public showLabels(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, mMinuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, mHeaderLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, mMinuteLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, mHeaderLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v2, p0, mLabelAlphaDuration:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v2, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object v0, p0, mHourLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, mLabelAlphaDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void
.end method

.method updateSeparator(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method updateTextInputValues(IIIZZ)V
    .locals 6

    const-string v0, "%d"

    iput-boolean p4, p0, mIs24Hour:Z

    iput-boolean p5, p0, mHourFormatStartsAtZero:Z

    iget-object v1, p0, mAmPmGroup:Landroid/widget/RadioGroup;

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/16 v3, 0x8

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    const/4 v1, 0x1

    if-nez p3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-direct {p0, v3}, updateAmPmLabel(Z)V

    iget-object v3, p0, mHourEditText:Landroid/widget/EditText;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, mMinuteEditText:Landroid/widget/EditText;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v1, p0, mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-boolean v1, p0, mErrorShowing:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, validateInput()Z

    :cond_2
    return-void
.end method

.method validateInput()Z
    .locals 3

    iget-object v0, p0, mHourEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, parseAndSetHourInternal(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, mMinuteEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, parseAndSetMinuteInternal(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0, v1}, setError(Z)V

    return v0
.end method
