.class Lcom/oneplus/lib/widget/SimpleMonthView;
.super Landroid/view/View;
.source "SimpleMonthView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;,
        Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;
    }
.end annotation


# static fields
.field private static final DAYS_IN_WEEK:I = 0x7

.field private static final DEFAULT_SELECTED_DAY:I = -0x1

.field private static final DEFAULT_WEEK_START:I = 0x1

.field private static final MAX_WEEKS_IN_MONTH:I = 0x6

.field private static final MONTH_YEAR_FORMAT:Ljava/lang/String; = "MMMMy"

.field private static final SELECTED_HIGHLIGHT_ALPHA:I = 0xb0


# instance fields
.field private mActivatedDay:I

.field private final mCalendar:Ljava/util/Calendar;

.field private mCellWidth:I

.field private mContext:Landroid/content/Context;

.field private final mDayFormatter:Ljava/text/NumberFormat;

.field private mDayHeight:I

.field private final mDayHighlightPaint:Landroid/graphics/Paint;

.field private final mDayHighlightSelectorPaint:Landroid/graphics/Paint;

.field private mDayOfWeekHeight:I

.field private final mDayOfWeekLabels:[Ljava/lang/String;

.field private final mDayOfWeekPaint:Landroid/text/TextPaint;

.field private mDayOfWeekStart:I

.field private final mDayPaint:Landroid/text/TextPaint;

.field private final mDaySelectorPaint:Landroid/graphics/Paint;

.field private mDaySelectorRadius:I

.field private mDayTextColor:Landroid/content/res/ColorStateList;

.field private mDaysInMonth:I

.field private final mDesiredCellWidth:I

.field private final mDesiredDayHeight:I

.field private final mDesiredDayOfWeekHeight:I

.field private final mDesiredDaySelectorRadius:I

.field private final mDesiredMonthHeight:I

.field private mEnabledDayEnd:I

.field private mEnabledDayStart:I

.field private mHighlightedDay:I

.field private mIsTouchHighlighted:Z

.field private final mLocale:Ljava/util/Locale;

.field private mMonth:I

.field private mMonthHeight:I

.field private final mMonthPaint:Landroid/text/TextPaint;

.field private mMonthYearLabel:Ljava/lang/String;

.field private mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

.field private mPaddedHeight:I

.field private mPaddedWidth:I

.field private mPreviouslyHighlightedDay:I

.field private mToday:I

.field private final mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

.field private mWeekStart:I

.field private mYear:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101035c

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
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, mMonthPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, mDayPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mDaySelectorPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mDayHighlightPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, mDayOfWeekLabels:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, mActivatedDay:I

    iput v0, p0, mToday:I

    const/4 v1, 0x1

    iput v1, p0, mWeekStart:I

    iput v1, p0, mEnabledDayStart:I

    const/16 v2, 0x1f

    iput v2, p0, mEnabledDayEnd:I

    iput v0, p0, mHighlightedDay:I

    iput v0, p0, mPreviouslyHighlightedDay:I

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsTouchHighlighted:Z

    iput-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_month_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mDesiredMonthHeight:I

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_of_week_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mDesiredDayOfWeekHeight:I

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mDesiredDayHeight:I

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mDesiredCellWidth:I

    sget v2, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_selector_radius:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, mDesiredDaySelectorRadius:I

    new-instance v2, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-direct {v2, p0, p0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;-><init>(Lcom/oneplus/lib/widget/SimpleMonthView;Landroid/view/View;)V

    iput-object v2, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    iget-object v2, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {p0, v2}, setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    invoke-virtual {p0, v1}, setImportantForAccessibility(I)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, p0, mLocale:Ljava/util/Locale;

    iget-object v1, p0, mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, mCalendar:Ljava/util/Calendar;

    iget-object v1, p0, mLocale:Ljava/util/Locale;

    invoke-static {v1}, Ljava/text/NumberFormat;->getIntegerInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v1

    iput-object v1, p0, mDayFormatter:Ljava/text/NumberFormat;

    invoke-direct {p0}, updateMonthYearLabel()V

    invoke-direct {p0}, updateDayOfWeekLabels()V

    invoke-direct {p0, v0}, initPaints(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/SimpleMonthView;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, getDayAtLocation(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, mDaysInMonth:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 1

    invoke-direct {p0, p1}, isDayEnabled(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, mActivatedDay:I

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 1

    invoke-direct {p0, p1}, onDayClicked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/SimpleMonthView;I)Z
    .locals 1

    invoke-direct {p0, p1}, isValidDayOfMonth(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, mYear:I

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/SimpleMonthView;)I
    .locals 1

    iget v0, p0, mMonth:I

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/SimpleMonthView;)Ljava/text/NumberFormat;
    .locals 1

    iget-object v0, p0, mDayFormatter:Ljava/text/NumberFormat;

    return-object v0
.end method

.method private applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;
    .locals 5

    iget-object v0, p0, mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_fontFamily:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textSize:I

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPTextAppearance_android_textColor:I

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_1

    sget-object v4, ENABLED_STATE_SET:[I

    invoke-virtual {v3, v4, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3
.end method

.method private drawDays(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, mDayPaint:Landroid/text/TextPaint;

    iget v3, v0, mMonthHeight:I

    iget v4, v0, mDayOfWeekHeight:I

    add-int/2addr v3, v4

    iget v4, v0, mDayHeight:I

    iget v5, v0, mCellWidth:I

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v6

    invoke-virtual {v2}, Landroid/text/TextPaint;->descent()F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    div-int/lit8 v7, v4, 0x2

    add-int/2addr v7, v3

    const/4 v8, 0x1

    invoke-direct/range {p0 .. p0}, findDayOffset()I

    move-result v9

    :goto_0
    iget v10, v0, mDaysInMonth:I

    if-gt v8, v10, :cond_b

    mul-int v10, v5, v9

    div-int/lit8 v11, v5, 0x2

    add-int/2addr v10, v11

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_0

    iget v11, v0, mPaddedWidth:I

    sub-int/2addr v11, v10

    goto :goto_1

    :cond_0
    move v11, v10

    :goto_1
    const/4 v12, 0x0

    invoke-direct {v0, v8}, isDayEnabled(I)Z

    move-result v13

    if-eqz v13, :cond_1

    or-int/lit8 v12, v12, 0x8

    :cond_1
    iget v14, v0, mActivatedDay:I

    if-ne v14, v8, :cond_2

    const/4 v14, 0x1

    goto :goto_2

    :cond_2
    const/4 v14, 0x0

    :goto_2
    iget v15, v0, mHighlightedDay:I

    if-ne v15, v8, :cond_3

    const/4 v15, 0x1

    goto :goto_3

    :cond_3
    const/4 v15, 0x0

    :goto_3
    if-eqz v14, :cond_5

    or-int/lit8 v12, v12, 0x20

    if-eqz v15, :cond_4

    move/from16 v17, v3

    iget-object v3, v0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    goto :goto_4

    :cond_4
    move/from16 v17, v3

    iget-object v3, v0, mDaySelectorPaint:Landroid/graphics/Paint;

    :goto_4
    nop

    move/from16 v18, v5

    int-to-float v5, v11

    move/from16 v19, v10

    int-to-float v10, v7

    move/from16 v20, v12

    iget v12, v0, mDaySelectorRadius:I

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v5, v10, v12, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    move/from16 v17, v3

    move/from16 v18, v5

    move/from16 v19, v10

    if-eqz v15, :cond_7

    or-int/lit8 v12, v12, 0x10

    if-eqz v13, :cond_6

    int-to-float v3, v11

    int-to-float v5, v7

    iget v10, v0, mDaySelectorRadius:I

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    move/from16 v20, v12

    iget-object v12, v0, mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v10, v12}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_6
    move/from16 v20, v12

    goto :goto_5

    :cond_7
    move/from16 v20, v12

    :goto_5
    iget v3, v0, mToday:I

    if-ne v3, v8, :cond_8

    const/4 v3, 0x1

    goto :goto_6

    :cond_8
    const/4 v3, 0x0

    :goto_6
    if-eqz v3, :cond_9

    if-nez v14, :cond_9

    iget-object v5, v0, mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    goto :goto_7

    :cond_9
    invoke-static/range {v20 .. v20}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v5

    iget-object v10, v0, mDayTextColor:Landroid/content/res/ColorStateList;

    const/4 v12, 0x0

    invoke-virtual {v10, v5, v12}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v10

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    move v5, v10

    :goto_7
    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v10, v0, mDayFormatter:Ljava/text/NumberFormat;

    move/from16 v16, v13

    int-to-long v12, v8

    invoke-virtual {v10, v12, v13}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v10

    int-to-float v12, v11

    int-to-float v13, v7

    sub-float/2addr v13, v6

    invoke-virtual {v1, v10, v12, v13, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x7

    if-ne v9, v10, :cond_a

    const/4 v9, 0x0

    add-int/2addr v7, v4

    :cond_a
    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v17

    move/from16 v5, v18

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private drawDaysOfWeek(Landroid/graphics/Canvas;)V
    .locals 12

    iget-object v0, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    iget v1, p0, mMonthHeight:I

    iget v2, p0, mDayOfWeekHeight:I

    iget v3, p0, mCellWidth:I

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v1

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x7

    if-ge v6, v7, :cond_1

    mul-int v7, v3, v6

    div-int/lit8 v8, v3, 0x2

    add-int/2addr v7, v8

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget v8, p0, mPaddedWidth:I

    sub-int/2addr v8, v7

    goto :goto_1

    :cond_0
    move v8, v7

    :goto_1
    iget-object v9, p0, mDayOfWeekLabels:[Ljava/lang/String;

    aget-object v9, v9, v6

    int-to-float v10, v8

    int-to-float v11, v5

    sub-float/2addr v11, v4

    invoke-virtual {p1, v9, v10, v11, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private drawMonth(Landroid/graphics/Canvas;)V
    .locals 5

    iget v0, p0, mPaddedWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget-object v2, p0, mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    move-result v2

    iget-object v3, p0, mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->descent()F

    move-result v3

    add-float/2addr v2, v3

    iget v3, p0, mMonthHeight:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    iget-object v1, p0, mMonthYearLabel:Ljava/lang/String;

    iget-object v4, p0, mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private ensureFocusedDay()V
    .locals 2

    iget v0, p0, mHighlightedDay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, mPreviouslyHighlightedDay:I

    if-eq v0, v1, :cond_1

    iput v0, p0, mHighlightedDay:I

    return-void

    :cond_1
    iget v0, p0, mActivatedDay:I

    if-eq v0, v1, :cond_2

    iput v0, p0, mHighlightedDay:I

    return-void

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, mHighlightedDay:I

    return-void
.end method

.method private findClosestColumn(Landroid/graphics/Rect;)I
    .locals 4

    const/4 v0, 0x3

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, mCellWidth:I

    if-nez v2, :cond_1

    return v0

    :cond_1
    div-int v0, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    rsub-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    move v2, v0

    :goto_0
    return v2
.end method

.method private findClosestRow(Landroid/graphics/Rect;)I
    .locals 11

    if-nez p1, :cond_0

    const/4 v0, 0x3

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    iget-object v1, p0, mDayPaint:Landroid/text/TextPaint;

    iget v2, p0, mMonthHeight:I

    iget v3, p0, mDayOfWeekHeight:I

    add-int/2addr v2, v3

    iget v3, p0, mDayHeight:I

    invoke-virtual {v1}, Landroid/text/TextPaint;->ascent()F

    move-result v4

    invoke-virtual {v1}, Landroid/text/TextPaint;->descent()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v2

    int-to-float v6, v0

    int-to-float v7, v5

    sub-float/2addr v7, v4

    sub-float/2addr v6, v7

    float-to-int v0, v6

    int-to-float v6, v0

    int-to-float v7, v3

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-direct {p0}, findDayOffset()I

    move-result v7

    iget v8, p0, mDaysInMonth:I

    add-int/2addr v7, v8

    div-int/lit8 v8, v7, 0x7

    rem-int/lit8 v9, v7, 0x7

    const/4 v10, 0x0

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    move v9, v10

    :goto_0
    sub-int/2addr v8, v9

    invoke-static {v6, v10, v8}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v6

    return v6
.end method

.method private findDayOffset()I
    .locals 3

    iget v0, p0, mDayOfWeekStart:I

    iget v1, p0, mWeekStart:I

    sub-int v2, v0, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v2, 0x7

    return v0

    :cond_0
    return v2
.end method

.method private getDayAtLocation(II)I
    .locals 10

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_5

    iget v2, p0, mPaddedWidth:I

    if-lt v0, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v2, p0, mMonthHeight:I

    iget v3, p0, mDayOfWeekHeight:I

    add-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int v3, p2, v3

    if-lt v3, v2, :cond_4

    iget v4, p0, mPaddedHeight:I

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, mPaddedWidth:I

    sub-int/2addr v4, v0

    goto :goto_0

    :cond_2
    move v4, v0

    :goto_0
    sub-int v5, v3, v2

    iget v6, p0, mDayHeight:I

    div-int/2addr v5, v6

    mul-int/lit8 v6, v4, 0x7

    iget v7, p0, mPaddedWidth:I

    div-int/2addr v6, v7

    mul-int/lit8 v7, v5, 0x7

    add-int/2addr v7, v6

    add-int/lit8 v8, v7, 0x1

    invoke-direct {p0}, findDayOffset()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-direct {p0, v8}, isValidDayOfMonth(I)Z

    move-result v9

    if-nez v9, :cond_3

    return v1

    :cond_3
    return v8

    :cond_4
    :goto_1
    return v1

    :cond_5
    :goto_2
    return v1
.end method

.method private static getDaysInMonth(II)I
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid Month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0x1e

    return v0

    :pswitch_1
    rem-int/lit8 v0, p1, 0x4

    if-nez v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x1c

    :goto_0
    return v0

    :pswitch_2
    const/16 v0, 0x1f

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private initPaints(Landroid/content/res/Resources;)V
    .locals 10

    sget v0, Lcom/oneplus/commonctrl/R$string;->date_picker_month_typeface:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$string;->date_picker_day_of_week_typeface:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$string;->date_picker_day_typeface:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$dimen;->date_picker_month_text_size:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_of_week_text_size:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->date_picker_day_text_size:I

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, mMonthPaint:Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, mMonthPaint:Landroid/text/TextPaint;

    int-to-float v8, v3

    invoke-virtual {v6, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, mMonthPaint:Landroid/text/TextPaint;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, mMonthPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    int-to-float v9, v4

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-static {v1, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, mDaySelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, mDayHighlightPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    sget-object v9, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v9}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, mDayPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    iget-object v6, p0, mDayPaint:Landroid/text/TextPaint;

    int-to-float v7, v5

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v6, p0, mDayPaint:Landroid/text/TextPaint;

    invoke-static {v2, v8}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, mDayPaint:Landroid/text/TextPaint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method private isDayEnabled(I)Z
    .locals 1

    iget v0, p0, mEnabledDayStart:I

    if-lt p1, v0, :cond_0

    iget v0, p0, mEnabledDayEnd:I

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFirstDayOfWeek(I)Z
    .locals 3

    invoke-direct {p0}, findDayOffset()I

    move-result v0

    add-int v1, v0, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLastDayOfWeek(I)Z
    .locals 2

    invoke-direct {p0}, findDayOffset()I

    move-result v0

    add-int v1, v0, p1

    rem-int/lit8 v1, v1, 0x7

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isValidDayOfMonth(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    iget v1, p0, mDaysInMonth:I

    if-gt p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDayOfWeek(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    const/4 v1, 0x7

    if-gt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidMonth(I)Z
    .locals 1

    if-ltz p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private moveOneDay(Z)Z
    .locals 4

    invoke-direct {p0}, ensureFocusedDay()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget v2, p0, mHighlightedDay:I

    invoke-direct {p0, v2}, isLastDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, mHighlightedDay:I

    iget v3, p0, mDaysInMonth:I

    if-ge v2, v3, :cond_1

    add-int/2addr v2, v1

    iput v2, p0, mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v2, p0, mHighlightedDay:I

    invoke-direct {p0, v2}, isFirstDayOfWeek(I)Z

    move-result v2

    if-nez v2, :cond_1

    iget v2, p0, mHighlightedDay:I

    if-le v2, v1, :cond_1

    sub-int/2addr v2, v1

    iput v2, p0, mHighlightedDay:I

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private onDayClicked(I)Z
    .locals 3

    invoke-direct {p0, p1}, isValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, isDayEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget v1, p0, mYear:I

    iget v2, p0, mMonth:I

    invoke-virtual {v0, v1, v2, p1}, Ljava/util/Calendar;->set(III)V

    iget-object v1, p0, mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    invoke-interface {v1, p0, v0}, Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;->onDayClick(Lcom/oneplus/lib/widget/SimpleMonthView;Ljava/util/Calendar;)V

    :cond_1
    iget-object v0, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->sendEventForVirtualView(II)Z

    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private sameDay(ILjava/util/Calendar;)Z
    .locals 3

    iget v0, p0, mYear:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, mMonth:I

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updateDayOfWeekLabels()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    const/16 v2, 0x32

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    iget-object v3, p0, mDayOfWeekLabels:[Ljava/lang/String;

    iget v4, p0, mWeekStart:I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, -0x1

    rem-int/2addr v4, v2

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateMonthYearLabel()V
    .locals 3

    iget-object v0, p0, mLocale:Ljava/util/Locale;

    const-string v1, "MMMMy"

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, mLocale:Ljava/util/Locale;

    invoke-direct {v1, v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iget-object v2, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, mMonthYearLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

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

.method public getBoundsForDay(ILandroid/graphics/Rect;)Z
    .locals 10

    invoke-direct {p0, p1}, isValidDayOfMonth(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0}, findDayOffset()I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit8 v1, v0, 0x7

    iget v2, p0, mCellWidth:I

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, getWidth()I

    move-result v3

    invoke-virtual {p0}, getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x1

    mul-int/2addr v4, v2

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, getPaddingLeft()I

    move-result v3

    mul-int v4, v1, v2

    add-int/2addr v3, v4

    :goto_0
    div-int/lit8 v4, v0, 0x7

    iget v5, p0, mDayHeight:I

    iget v6, p0, mMonthHeight:I

    iget v7, p0, mDayOfWeekHeight:I

    add-int/2addr v6, v7

    invoke-virtual {p0}, getPaddingTop()I

    move-result v7

    add-int/2addr v7, v6

    mul-int v8, v4, v5

    add-int/2addr v7, v8

    add-int v8, v3, v2

    add-int v9, v7, v5

    invoke-virtual {p2, v3, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v8, 0x1

    return v8
.end method

.method public getCellWidth()I
    .locals 1

    iget v0, p0, mCellWidth:I

    return v0
.end method

.method public getFocusedRect(Landroid/graphics/Rect;)V
    .locals 1

    iget v0, p0, mHighlightedDay:I

    if-lez v0, :cond_0

    invoke-virtual {p0, v0, p1}, getBoundsForDay(ILandroid/graphics/Rect;)Z

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->getFocusedRect(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public getMonthHeight()I
    .locals 1

    iget v0, p0, mMonthHeight:I

    return v0
.end method

.method public getMonthYearLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, mMonthYearLabel:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    int-to-float v2, v0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, drawMonth(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, drawDaysOfWeek(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, drawDays(Landroid/graphics/Canvas;)V

    neg-int v2, v0

    int-to-float v2, v2

    neg-int v3, v1

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-boolean v0, p0, mIsTouchHighlighted:Z

    if-nez v0, :cond_0

    iget v0, p0, mHighlightedDay:I

    iput v0, p0, mPreviouslyHighlightedDay:I

    const/4 v0, -0x1

    iput v0, p0, mHighlightedDay:I

    invoke-virtual {p0}, invalidate()V

    :cond_0
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 7

    if-eqz p1, :cond_7

    invoke-direct {p0}, findDayOffset()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq p2, v1, :cond_6

    const/16 v1, 0x21

    if-eq p2, v1, :cond_4

    const/16 v1, 0x42

    if-eq p2, v1, :cond_2

    const/16 v1, 0x82

    if-eq p2, v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0, p3}, findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    sub-int v3, v1, v0

    add-int/2addr v3, v2

    if-ge v3, v2, :cond_1

    add-int/lit8 v2, v3, 0x7

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    iput v2, p0, mHighlightedDay:I

    goto :goto_3

    :cond_2
    invoke-direct {p0, p3}, findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    add-int/2addr v2, v3

    :goto_1
    iput v2, p0, mHighlightedDay:I

    goto :goto_3

    :cond_4
    invoke-direct {p0, p3}, findClosestColumn(Landroid/graphics/Rect;)I

    move-result v1

    iget v3, p0, mDaysInMonth:I

    add-int v4, v0, v3

    div-int/lit8 v4, v4, 0x7

    sub-int v5, v1, v0

    mul-int/lit8 v6, v4, 0x7

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    if-le v5, v3, :cond_5

    add-int/lit8 v2, v5, -0x7

    goto :goto_2

    :cond_5
    move v2, v5

    :goto_2
    iput v2, p0, mHighlightedDay:I

    goto :goto_3

    :cond_6
    invoke-direct {p0, p3}, findClosestRow(Landroid/graphics/Rect;)I

    move-result v1

    add-int/2addr v1, v2

    iget v2, p0, mDaysInMonth:I

    mul-int/lit8 v3, v1, 0x7

    sub-int/2addr v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, mHighlightedDay:I

    nop

    :goto_3
    invoke-direct {p0}, ensureFocusedDay()V

    invoke-virtual {p0}, invalidate()V

    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/16 v2, 0x3d

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/16 v2, 0x42

    if-eq v1, v2, :cond_0

    const/4 v2, 0x7

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, moveOneDay(Z)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    invoke-direct {p0, v1}, moveOneDay(Z)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, ensureFocusedDay()V

    iget v1, p0, mHighlightedDay:I

    iget v4, p0, mDaysInMonth:I

    sub-int/2addr v4, v2

    if-gt v1, v4, :cond_6

    add-int/2addr v1, v2

    iput v1, p0, mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-direct {p0}, ensureFocusedDay()V

    iget v1, p0, mHighlightedDay:I

    if-le v1, v2, :cond_6

    sub-int/2addr v1, v2

    iput v1, p0, mHighlightedDay:I

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    :pswitch_4
    iget v1, p0, mHighlightedDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_6

    invoke-direct {p0, v1}, onDayClicked(I)Z

    return v3

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v3}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_6

    invoke-virtual {p0}, getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v4, p0

    :cond_4
    invoke-virtual {v4, v1}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eq v4, p0, :cond_5

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eq v5, v2, :cond_4

    :cond_5
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    return v3

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, invalidate()V

    return v3

    :cond_7
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual/range {p0 .. p0}, getPaddingLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, getPaddingTop()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, getPaddingRight()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, getPaddingBottom()I

    move-result v6

    sub-int v7, v1, v5

    sub-int v8, v2, v6

    sub-int v9, v7, v3

    sub-int v10, v8, v4

    iget v11, v0, mPaddedWidth:I

    if-eq v9, v11, :cond_2

    iget v11, v0, mPaddedHeight:I

    if-ne v10, v11, :cond_1

    move/from16 v16, v1

    goto :goto_0

    :cond_1
    iput v9, v0, mPaddedWidth:I

    iput v10, v0, mPaddedHeight:I

    invoke-virtual/range {p0 .. p0}, getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v4

    sub-int/2addr v11, v6

    int-to-float v12, v10

    int-to-float v13, v11

    div-float/2addr v12, v13

    iget v13, v0, mDesiredMonthHeight:I

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    iget v14, v0, mPaddedWidth:I

    div-int/lit8 v14, v14, 0x7

    iput v13, v0, mMonthHeight:I

    iget v15, v0, mDesiredDayOfWeekHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, mDayOfWeekHeight:I

    iget v15, v0, mDesiredDayHeight:I

    int-to-float v15, v15

    mul-float/2addr v15, v12

    float-to-int v15, v15

    iput v15, v0, mDayHeight:I

    iput v14, v0, mCellWidth:I

    div-int/lit8 v15, v14, 0x2

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v16

    add-int v15, v15, v16

    move/from16 v16, v1

    iget v1, v0, mDayHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v6

    move/from16 v17, v1

    iget v1, v0, mDesiredDaySelectorRadius:I

    iput v1, v0, mDaySelectorRadius:I

    iget-object v1, v0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    return-void

    :cond_2
    move/from16 v16, v1

    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget v0, p0, mDesiredDayHeight:I

    mul-int/lit8 v0, v0, 0x6

    iget v1, p0, mDesiredDayOfWeekHeight:I

    add-int/2addr v0, v1

    iget v1, p0, mDesiredMonthHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, mDesiredCellWidth:I

    mul-int/lit8 v1, v1, 0x7

    invoke-virtual {p0}, getPaddingStart()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingEnd()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, p1}, resolveSize(II)I

    move-result v2

    invoke-static {v0, p2}, resolveSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, setMeasuredDimension(II)V

    return-void
.end method

.method public onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;
    .locals 5

    invoke-virtual {p0}, isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-direct {p0, v0, v1}, getDayAtLocation(II)I

    move-result v2

    if-ltz v2, :cond_1

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-static {v3, v4}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onResolvePointerIcon(Landroid/view/MotionEvent;I)Landroid/view/PointerIcon;

    move-result-object v3

    return-object v3
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onRtlPropertiesChanged(I)V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v4, :cond_0

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1}, getDayAtLocation(II)I

    move-result v5

    invoke-direct {p0, v5}, onDayClicked(I)Z

    :cond_1
    const/4 v5, -0x1

    iput v5, p0, mHighlightedDay:I

    iput-boolean v3, p0, mIsTouchHighlighted:Z

    invoke-virtual {p0}, invalidate()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0, v1}, getDayAtLocation(II)I

    move-result v5

    iput-boolean v4, p0, mIsTouchHighlighted:Z

    iget v6, p0, mHighlightedDay:I

    if-eq v6, v5, :cond_3

    iput v5, p0, mHighlightedDay:I

    iput v5, p0, mPreviouslyHighlightedDay:I

    invoke-virtual {p0}, invalidate()V

    :cond_3
    if-nez v2, :cond_4

    if-gez v5, :cond_4

    return v3

    :cond_4
    :goto_0
    return v4
.end method

.method setDayHighlightColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    nop

    const/16 v0, 0x18

    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, mDayHighlightPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setDayOfWeekTextAppearance(I)V
    .locals 1

    iget-object v0, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method setDayOfWeekTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, mDayOfWeekPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method setDaySelectorColor(Landroid/content/res/ColorStateList;)V
    .locals 3

    nop

    const/16 v0, 0x28

    invoke-static {v0}, Lcom/oneplus/lib/widget/util/ViewUtils;->getViewState(I)[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, mDaySelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/16 v2, 0xb0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, mDayHighlightSelectorPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setDayTextAppearance(I)V
    .locals 1

    iget-object v0, p0, mDayPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, mDayTextColor:Landroid/content/res/ColorStateList;

    :cond_0
    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method setDayTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, mDayTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1

    invoke-static {p1}, isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p1, p0, mWeekStart:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, mWeekStart:I

    :goto_0
    invoke-direct {p0}, updateDayOfWeekLabels()V

    iget-object v0, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method setMonthParams(IIIIII)V
    .locals 5

    iput p1, p0, mActivatedDay:I

    invoke-static {p2}, isValidMonth(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput p2, p0, mMonth:I

    :cond_0
    iput p3, p0, mYear:I

    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x2

    iget v2, p0, mMonth:I

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    iget v1, p0, mYear:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, mDayOfWeekStart:I

    invoke-static {p4}, isValidDayOfWeek(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput p4, p0, mWeekStart:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, mCalendar:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    iput v0, p0, mWeekStart:I

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, p0, mToday:I

    iget v1, p0, mMonth:I

    iget v3, p0, mYear:I

    invoke-static {v1, v3}, getDaysInMonth(II)I

    move-result v1

    iput v1, p0, mDaysInMonth:I

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, mDaysInMonth:I

    if-ge v1, v3, :cond_3

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, v0}, sameDay(ILjava/util/Calendar;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, mToday:I

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p5, v2, v3}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, mEnabledDayStart:I

    iget v1, p0, mEnabledDayStart:I

    iget v2, p0, mDaysInMonth:I

    invoke-static {p6, v1, v2}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v1

    iput v1, p0, mEnabledDayEnd:I

    invoke-direct {p0}, updateMonthYearLabel()V

    invoke-direct {p0}, updateDayOfWeekLabels()V

    iget-object v1, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setMonthTextAppearance(I)V
    .locals 1

    iget-object v0, p0, mMonthPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v0, p1}, applyTextAppearance(Landroid/graphics/Paint;I)Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method setMonthTextColor(Landroid/content/res/ColorStateList;)V
    .locals 2

    sget-object v0, ENABLED_STATE_SET:[I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    iget-object v1, p0, mMonthPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method public setOnDayClickListener(Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;)V
    .locals 0

    iput-object p1, p0, mOnDayClickListener:Lcom/oneplus/lib/widget/SimpleMonthView$OnDayClickListener;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1

    iput p1, p0, mActivatedDay:I

    iget-object v0, p0, mTouchHelper:Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/SimpleMonthView$MonthViewTouchHelper;->invalidateRoot()V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method
