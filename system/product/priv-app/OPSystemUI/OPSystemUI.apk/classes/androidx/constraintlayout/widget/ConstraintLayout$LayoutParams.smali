.class public Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "ConstraintLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;
    }
.end annotation


# instance fields
.field public baselineToBaseline:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field dimensionRatioSide:I

.field dimensionRatioValue:F

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public endToEnd:I

.field public endToStart:I

.field public goneBottomMargin:I

.field public goneEndMargin:I

.field public goneLeftMargin:I

.field public goneRightMargin:I

.field public goneStartMargin:I

.field public goneTopMargin:I

.field public guideBegin:I

.field public guideEnd:I

.field public guidePercent:F

.field public helped:Z

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field horizontalDimensionFixed:Z

.field public horizontalWeight:F

.field isGuideline:Z

.field isHelper:Z

.field isInPlaceholder:Z

.field public leftToLeft:I

.field public leftToRight:I

.field public matchConstraintDefaultHeight:I

.field public matchConstraintDefaultWidth:I

.field public matchConstraintMaxHeight:I

.field public matchConstraintMaxWidth:I

.field public matchConstraintMinHeight:I

.field public matchConstraintMinWidth:I

.field public matchConstraintPercentHeight:F

.field public matchConstraintPercentWidth:F

.field needsBaseline:Z

.field public orientation:I

.field resolveGoneLeftMargin:I

.field resolveGoneRightMargin:I

.field resolvedGuideBegin:I

.field resolvedGuideEnd:I

.field resolvedGuidePercent:F

.field resolvedHorizontalBias:F

.field resolvedLeftToLeft:I

.field resolvedLeftToRight:I

.field resolvedRightToLeft:I

.field resolvedRightToRight:I

.field public rightToLeft:I

.field public rightToRight:I

.field public startToEnd:I

.field public startToStart:I

.field public topToBottom:I

.field public topToTop:I

.field public verticalBias:F

.field public verticalChainStyle:I

.field verticalDimensionFixed:Z

.field public verticalWeight:F

.field widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;


# direct methods
.method public constructor <init>(II)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    const/4 p1, -0x1

    iput p1, p0, guideBegin:I

    iput p1, p0, guideEnd:I

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p0, guidePercent:F

    iput p1, p0, leftToLeft:I

    iput p1, p0, leftToRight:I

    iput p1, p0, rightToLeft:I

    iput p1, p0, rightToRight:I

    iput p1, p0, topToTop:I

    iput p1, p0, topToBottom:I

    iput p1, p0, bottomToTop:I

    iput p1, p0, bottomToBottom:I

    iput p1, p0, baselineToBaseline:I

    iput p1, p0, circleConstraint:I

    const/4 v0, 0x0

    iput v0, p0, circleRadius:I

    const/4 v1, 0x0

    iput v1, p0, circleAngle:F

    iput p1, p0, startToEnd:I

    iput p1, p0, startToStart:I

    iput p1, p0, endToStart:I

    iput p1, p0, endToEnd:I

    iput p1, p0, goneLeftMargin:I

    iput p1, p0, goneTopMargin:I

    iput p1, p0, goneRightMargin:I

    iput p1, p0, goneBottomMargin:I

    iput p1, p0, goneStartMargin:I

    iput p1, p0, goneEndMargin:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, horizontalBias:F

    iput v2, p0, verticalBias:F

    const/4 v3, 0x0

    iput-object v3, p0, dimensionRatio:Ljava/lang/String;

    iput v1, p0, dimensionRatioValue:F

    const/4 v1, 0x1

    iput v1, p0, dimensionRatioSide:I

    iput p2, p0, horizontalWeight:F

    iput p2, p0, verticalWeight:F

    iput v0, p0, horizontalChainStyle:I

    iput v0, p0, verticalChainStyle:I

    iput v0, p0, matchConstraintDefaultWidth:I

    iput v0, p0, matchConstraintDefaultHeight:I

    iput v0, p0, matchConstraintMinWidth:I

    iput v0, p0, matchConstraintMinHeight:I

    iput v0, p0, matchConstraintMaxWidth:I

    iput v0, p0, matchConstraintMaxHeight:I

    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, matchConstraintPercentWidth:F

    iput p2, p0, matchConstraintPercentHeight:F

    iput p1, p0, editorAbsoluteX:I

    iput p1, p0, editorAbsoluteY:I

    iput p1, p0, orientation:I

    iput-boolean v0, p0, constrainedWidth:Z

    iput-boolean v0, p0, constrainedHeight:Z

    iput-boolean v1, p0, horizontalDimensionFixed:Z

    iput-boolean v1, p0, verticalDimensionFixed:Z

    iput-boolean v0, p0, needsBaseline:Z

    iput-boolean v0, p0, isGuideline:Z

    iput-boolean v0, p0, isHelper:Z

    iput-boolean v0, p0, isInPlaceholder:Z

    iput p1, p0, resolvedLeftToLeft:I

    iput p1, p0, resolvedLeftToRight:I

    iput p1, p0, resolvedRightToLeft:I

    iput p1, p0, resolvedRightToRight:I

    iput p1, p0, resolveGoneLeftMargin:I

    iput p1, p0, resolveGoneRightMargin:I

    iput v2, p0, resolvedHorizontalBias:F

    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-boolean v0, p0, helped:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, guideBegin:I

    iput v0, p0, guideEnd:I

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, guidePercent:F

    iput v0, p0, leftToLeft:I

    iput v0, p0, leftToRight:I

    iput v0, p0, rightToLeft:I

    iput v0, p0, rightToRight:I

    iput v0, p0, topToTop:I

    iput v0, p0, topToBottom:I

    iput v0, p0, bottomToTop:I

    iput v0, p0, bottomToBottom:I

    iput v0, p0, baselineToBaseline:I

    iput v0, p0, circleConstraint:I

    const/4 v2, 0x0

    iput v2, p0, circleRadius:I

    const/4 v3, 0x0

    iput v3, p0, circleAngle:F

    iput v0, p0, startToEnd:I

    iput v0, p0, startToStart:I

    iput v0, p0, endToStart:I

    iput v0, p0, endToEnd:I

    iput v0, p0, goneLeftMargin:I

    iput v0, p0, goneTopMargin:I

    iput v0, p0, goneRightMargin:I

    iput v0, p0, goneBottomMargin:I

    iput v0, p0, goneStartMargin:I

    iput v0, p0, goneEndMargin:I

    const/high16 v4, 0x3f000000    # 0.5f

    iput v4, p0, horizontalBias:F

    iput v4, p0, verticalBias:F

    const/4 v5, 0x0

    iput-object v5, p0, dimensionRatio:Ljava/lang/String;

    iput v3, p0, dimensionRatioValue:F

    const/4 v5, 0x1

    iput v5, p0, dimensionRatioSide:I

    iput v1, p0, horizontalWeight:F

    iput v1, p0, verticalWeight:F

    iput v2, p0, horizontalChainStyle:I

    iput v2, p0, verticalChainStyle:I

    iput v2, p0, matchConstraintDefaultWidth:I

    iput v2, p0, matchConstraintDefaultHeight:I

    iput v2, p0, matchConstraintMinWidth:I

    iput v2, p0, matchConstraintMinHeight:I

    iput v2, p0, matchConstraintMaxWidth:I

    iput v2, p0, matchConstraintMaxHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, matchConstraintPercentWidth:F

    iput v1, p0, matchConstraintPercentHeight:F

    iput v0, p0, editorAbsoluteX:I

    iput v0, p0, editorAbsoluteY:I

    iput v0, p0, orientation:I

    iput-boolean v2, p0, constrainedWidth:Z

    iput-boolean v2, p0, constrainedHeight:Z

    iput-boolean v5, p0, horizontalDimensionFixed:Z

    iput-boolean v5, p0, verticalDimensionFixed:Z

    iput-boolean v2, p0, needsBaseline:Z

    iput-boolean v2, p0, isGuideline:Z

    iput-boolean v2, p0, isHelper:Z

    iput-boolean v2, p0, isInPlaceholder:Z

    iput v0, p0, resolvedLeftToLeft:I

    iput v0, p0, resolvedLeftToRight:I

    iput v0, p0, resolvedRightToLeft:I

    iput v0, p0, resolvedRightToRight:I

    iput v0, p0, resolveGoneLeftMargin:I

    iput v0, p0, resolveGoneRightMargin:I

    iput v4, p0, resolvedHorizontalBias:F

    new-instance v1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {v1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object v1, p0, widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-boolean v2, p0, helped:Z

    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintLayout_Layout:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    move v1, v2

    :goto_0
    if-ge v1, p2, :cond_6

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    sget-object v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams$Table;->map:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    const-string v7, "ConstraintLayout"

    const/4 v8, -0x2

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_3

    :pswitch_1
    iget v6, p0, editorAbsoluteY:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, editorAbsoluteY:I

    goto/16 :goto_3

    :pswitch_2
    iget v6, p0, editorAbsoluteX:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, editorAbsoluteX:I

    goto/16 :goto_3

    :pswitch_3
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, verticalChainStyle:I

    goto/16 :goto_3

    :pswitch_4
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, horizontalChainStyle:I

    goto/16 :goto_3

    :pswitch_5
    iget v6, p0, verticalWeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, verticalWeight:F

    goto/16 :goto_3

    :pswitch_6
    iget v6, p0, horizontalWeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, horizontalWeight:F

    goto/16 :goto_3

    :pswitch_7
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, dimensionRatio:Ljava/lang/String;

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, p0, dimensionRatioValue:F

    iput v0, p0, dimensionRatioSide:I

    iget-object v4, p0, dimensionRatio:Ljava/lang/String;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v6, p0, dimensionRatio:Ljava/lang/String;

    const/16 v7, 0x2c

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_2

    add-int/lit8 v7, v4, -0x1

    if-ge v6, v7, :cond_2

    iget-object v7, p0, dimensionRatio:Ljava/lang/String;

    invoke-virtual {v7, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "W"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    iput v2, p0, dimensionRatioSide:I

    goto :goto_1

    :cond_0
    const-string v8, "H"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iput v5, p0, dimensionRatioSide:I

    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move v6, v2

    :goto_2
    iget-object v7, p0, dimensionRatio:Ljava/lang/String;

    const/16 v8, 0x3a

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v4, v4, -0x1

    if-ge v7, v4, :cond_4

    iget-object v4, p0, dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, dimensionRatio:Ljava/lang/String;

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    :try_start_0
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    cmpl-float v7, v4, v3

    if-lez v7, :cond_5

    cmpl-float v7, v6, v3

    if-lez v7, :cond_5

    iget v7, p0, dimensionRatioSide:I

    if-ne v7, v5, :cond_3

    div-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, dimensionRatioValue:F

    goto/16 :goto_3

    :cond_3
    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iput v4, p0, dimensionRatioValue:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    goto/16 :goto_3

    :cond_4
    iget-object v4, p0, dimensionRatio:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    :try_start_1
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    iput v4, p0, dimensionRatioValue:F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    goto/16 :goto_3

    :pswitch_8
    iget v6, p0, matchConstraintPercentHeight:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, matchConstraintPercentHeight:F

    goto/16 :goto_3

    :pswitch_9
    :try_start_2
    iget v6, p0, matchConstraintMaxHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, matchConstraintMaxHeight:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    :catch_0
    iget v6, p0, matchConstraintMaxHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, matchConstraintMaxHeight:I

    goto/16 :goto_3

    :pswitch_a
    :try_start_3
    iget v6, p0, matchConstraintMinHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, matchConstraintMinHeight:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3

    :catch_1
    iget v6, p0, matchConstraintMinHeight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, matchConstraintMinHeight:I

    goto/16 :goto_3

    :pswitch_b
    iget v6, p0, matchConstraintPercentWidth:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    iput v4, p0, matchConstraintPercentWidth:F

    goto/16 :goto_3

    :pswitch_c
    :try_start_4
    iget v6, p0, matchConstraintMaxWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, matchConstraintMaxWidth:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    :catch_2
    iget v6, p0, matchConstraintMaxWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, matchConstraintMaxWidth:I

    goto/16 :goto_3

    :pswitch_d
    :try_start_5
    iget v6, p0, matchConstraintMinWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, p0, matchConstraintMinWidth:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_3

    :catch_3
    iget v6, p0, matchConstraintMinWidth:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    if-ne v4, v8, :cond_5

    iput v8, p0, matchConstraintMinWidth:I

    goto/16 :goto_3

    :pswitch_e
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, matchConstraintDefaultHeight:I

    iget v4, p0, matchConstraintDefaultHeight:I

    if-ne v4, v5, :cond_5

    const-string v4, "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_f
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, matchConstraintDefaultWidth:I

    iget v4, p0, matchConstraintDefaultWidth:I

    if-ne v4, v5, :cond_5

    const-string v4, "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_10
    iget v6, p0, verticalBias:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, verticalBias:F

    goto/16 :goto_3

    :pswitch_11
    iget v6, p0, horizontalBias:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, horizontalBias:F

    goto/16 :goto_3

    :pswitch_12
    iget-boolean v6, p0, constrainedHeight:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, constrainedHeight:Z

    goto/16 :goto_3

    :pswitch_13
    iget-boolean v6, p0, constrainedWidth:Z

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, constrainedWidth:Z

    goto/16 :goto_3

    :pswitch_14
    iget v6, p0, goneEndMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, goneEndMargin:I

    goto/16 :goto_3

    :pswitch_15
    iget v6, p0, goneStartMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, goneStartMargin:I

    goto/16 :goto_3

    :pswitch_16
    iget v6, p0, goneBottomMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, goneBottomMargin:I

    goto/16 :goto_3

    :pswitch_17
    iget v6, p0, goneRightMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, goneRightMargin:I

    goto/16 :goto_3

    :pswitch_18
    iget v6, p0, goneTopMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, goneTopMargin:I

    goto/16 :goto_3

    :pswitch_19
    iget v6, p0, goneLeftMargin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, goneLeftMargin:I

    goto/16 :goto_3

    :pswitch_1a
    iget v6, p0, endToEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, endToEnd:I

    iget v6, p0, endToEnd:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, endToEnd:I

    goto/16 :goto_3

    :pswitch_1b
    iget v6, p0, endToStart:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, endToStart:I

    iget v6, p0, endToStart:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, endToStart:I

    goto/16 :goto_3

    :pswitch_1c
    iget v6, p0, startToStart:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, startToStart:I

    iget v6, p0, startToStart:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, startToStart:I

    goto/16 :goto_3

    :pswitch_1d
    iget v6, p0, startToEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, startToEnd:I

    iget v6, p0, startToEnd:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, startToEnd:I

    goto/16 :goto_3

    :pswitch_1e
    iget v6, p0, baselineToBaseline:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, baselineToBaseline:I

    iget v6, p0, baselineToBaseline:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, baselineToBaseline:I

    goto/16 :goto_3

    :pswitch_1f
    iget v6, p0, bottomToBottom:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, bottomToBottom:I

    iget v6, p0, bottomToBottom:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, bottomToBottom:I

    goto/16 :goto_3

    :pswitch_20
    iget v6, p0, bottomToTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, bottomToTop:I

    iget v6, p0, bottomToTop:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, bottomToTop:I

    goto/16 :goto_3

    :pswitch_21
    iget v6, p0, topToBottom:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, topToBottom:I

    iget v6, p0, topToBottom:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, topToBottom:I

    goto/16 :goto_3

    :pswitch_22
    iget v6, p0, topToTop:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, topToTop:I

    iget v6, p0, topToTop:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, topToTop:I

    goto/16 :goto_3

    :pswitch_23
    iget v6, p0, rightToRight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, rightToRight:I

    iget v6, p0, rightToRight:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, rightToRight:I

    goto/16 :goto_3

    :pswitch_24
    iget v6, p0, rightToLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, rightToLeft:I

    iget v6, p0, rightToLeft:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, rightToLeft:I

    goto/16 :goto_3

    :pswitch_25
    iget v6, p0, leftToRight:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, leftToRight:I

    iget v6, p0, leftToRight:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, leftToRight:I

    goto :goto_3

    :pswitch_26
    iget v6, p0, leftToLeft:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, leftToLeft:I

    iget v6, p0, leftToLeft:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, leftToLeft:I

    goto :goto_3

    :pswitch_27
    iget v6, p0, guidePercent:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    iput v4, p0, guidePercent:F

    goto :goto_3

    :pswitch_28
    iget v6, p0, guideEnd:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, guideEnd:I

    goto :goto_3

    :pswitch_29
    iget v6, p0, guideBegin:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    iput v4, p0, guideBegin:I

    goto :goto_3

    :pswitch_2a
    iget v6, p0, circleAngle:F

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    const/high16 v6, 0x43b40000    # 360.0f

    rem-float/2addr v4, v6

    iput v4, p0, circleAngle:F

    iget v4, p0, circleAngle:F

    cmpg-float v7, v4, v3

    if-gez v7, :cond_5

    sub-float v4, v6, v4

    rem-float/2addr v4, v6

    iput v4, p0, circleAngle:F

    goto :goto_3

    :pswitch_2b
    iget v6, p0, circleRadius:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, circleRadius:I

    goto :goto_3

    :pswitch_2c
    iget v6, p0, circleConstraint:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, p0, circleConstraint:I

    iget v6, p0, circleConstraint:I

    if-ne v6, v0, :cond_5

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, circleConstraint:I

    goto :goto_3

    :pswitch_2d
    iget v6, p0, orientation:I

    invoke-virtual {p1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, orientation:I

    :catch_4
    :cond_5
    :goto_3
    :pswitch_2e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, validate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, -0x1

    iput p1, p0, guideBegin:I

    iput p1, p0, guideEnd:I

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, guidePercent:F

    iput p1, p0, leftToLeft:I

    iput p1, p0, leftToRight:I

    iput p1, p0, rightToLeft:I

    iput p1, p0, rightToRight:I

    iput p1, p0, topToTop:I

    iput p1, p0, topToBottom:I

    iput p1, p0, bottomToTop:I

    iput p1, p0, bottomToBottom:I

    iput p1, p0, baselineToBaseline:I

    iput p1, p0, circleConstraint:I

    const/4 v1, 0x0

    iput v1, p0, circleRadius:I

    const/4 v2, 0x0

    iput v2, p0, circleAngle:F

    iput p1, p0, startToEnd:I

    iput p1, p0, startToStart:I

    iput p1, p0, endToStart:I

    iput p1, p0, endToEnd:I

    iput p1, p0, goneLeftMargin:I

    iput p1, p0, goneTopMargin:I

    iput p1, p0, goneRightMargin:I

    iput p1, p0, goneBottomMargin:I

    iput p1, p0, goneStartMargin:I

    iput p1, p0, goneEndMargin:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, horizontalBias:F

    iput v3, p0, verticalBias:F

    const/4 v4, 0x0

    iput-object v4, p0, dimensionRatio:Ljava/lang/String;

    iput v2, p0, dimensionRatioValue:F

    const/4 v2, 0x1

    iput v2, p0, dimensionRatioSide:I

    iput v0, p0, horizontalWeight:F

    iput v0, p0, verticalWeight:F

    iput v1, p0, horizontalChainStyle:I

    iput v1, p0, verticalChainStyle:I

    iput v1, p0, matchConstraintDefaultWidth:I

    iput v1, p0, matchConstraintDefaultHeight:I

    iput v1, p0, matchConstraintMinWidth:I

    iput v1, p0, matchConstraintMinHeight:I

    iput v1, p0, matchConstraintMaxWidth:I

    iput v1, p0, matchConstraintMaxHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, matchConstraintPercentWidth:F

    iput v0, p0, matchConstraintPercentHeight:F

    iput p1, p0, editorAbsoluteX:I

    iput p1, p0, editorAbsoluteY:I

    iput p1, p0, orientation:I

    iput-boolean v1, p0, constrainedWidth:Z

    iput-boolean v1, p0, constrainedHeight:Z

    iput-boolean v2, p0, horizontalDimensionFixed:Z

    iput-boolean v2, p0, verticalDimensionFixed:Z

    iput-boolean v1, p0, needsBaseline:Z

    iput-boolean v1, p0, isGuideline:Z

    iput-boolean v1, p0, isHelper:Z

    iput-boolean v1, p0, isInPlaceholder:Z

    iput p1, p0, resolvedLeftToLeft:I

    iput p1, p0, resolvedLeftToRight:I

    iput p1, p0, resolvedRightToLeft:I

    iput p1, p0, resolvedRightToRight:I

    iput p1, p0, resolveGoneLeftMargin:I

    iput p1, p0, resolveGoneRightMargin:I

    iput v3, p0, resolvedHorizontalBias:F

    new-instance p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    invoke-direct {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;-><init>()V

    iput-object p1, p0, widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-boolean v1, p0, helped:Z

    return-void
.end method


# virtual methods
.method public resolveLayoutDirection(I)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-super {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->resolveLayoutDirection(I)V

    const/4 p1, -0x1

    iput p1, p0, resolvedRightToLeft:I

    iput p1, p0, resolvedRightToRight:I

    iput p1, p0, resolvedLeftToLeft:I

    iput p1, p0, resolvedLeftToRight:I

    iput p1, p0, resolveGoneLeftMargin:I

    iput p1, p0, resolveGoneRightMargin:I

    iget v2, p0, goneLeftMargin:I

    iput v2, p0, resolveGoneLeftMargin:I

    iget v2, p0, goneRightMargin:I

    iput v2, p0, resolveGoneRightMargin:I

    iget v2, p0, horizontalBias:F

    iput v2, p0, resolvedHorizontalBias:F

    iget v2, p0, guideBegin:I

    iput v2, p0, resolvedGuideBegin:I

    iget v2, p0, guideEnd:I

    iput v2, p0, resolvedGuideEnd:I

    iget v2, p0, guidePercent:F

    iput v2, p0, resolvedGuidePercent:F

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v4, v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_a

    iget v2, p0, startToEnd:I

    if-eq v2, p1, :cond_1

    iput v2, p0, resolvedRightToLeft:I

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_1
    iget v2, p0, startToStart:I

    if-eq v2, p1, :cond_2

    iput v2, p0, resolvedRightToRight:I

    goto :goto_1

    :cond_2
    :goto_2
    iget v2, p0, endToStart:I

    if-eq v2, p1, :cond_3

    iput v2, p0, resolvedLeftToRight:I

    move v3, v4

    :cond_3
    iget v2, p0, endToEnd:I

    if-eq v2, p1, :cond_4

    iput v2, p0, resolvedLeftToLeft:I

    move v3, v4

    :cond_4
    iget v2, p0, goneStartMargin:I

    if-eq v2, p1, :cond_5

    iput v2, p0, resolveGoneRightMargin:I

    :cond_5
    iget v2, p0, goneEndMargin:I

    if-eq v2, p1, :cond_6

    iput v2, p0, resolveGoneLeftMargin:I

    :cond_6
    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v3, :cond_7

    iget v3, p0, horizontalBias:F

    sub-float v3, v2, v3

    iput v3, p0, resolvedHorizontalBias:F

    :cond_7
    iget-boolean v3, p0, isGuideline:Z

    if-eqz v3, :cond_10

    iget v3, p0, orientation:I

    if-ne v3, v4, :cond_10

    iget v3, p0, guidePercent:F

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_8

    sub-float/2addr v2, v3

    iput v2, p0, resolvedGuidePercent:F

    iput p1, p0, resolvedGuideBegin:I

    iput p1, p0, resolvedGuideEnd:I

    goto :goto_3

    :cond_8
    iget v2, p0, guideBegin:I

    if-eq v2, p1, :cond_9

    iput v2, p0, resolvedGuideEnd:I

    iput p1, p0, resolvedGuideBegin:I

    iput v4, p0, resolvedGuidePercent:F

    goto :goto_3

    :cond_9
    iget v2, p0, guideEnd:I

    if-eq v2, p1, :cond_10

    iput v2, p0, resolvedGuideBegin:I

    iput p1, p0, resolvedGuideEnd:I

    iput v4, p0, resolvedGuidePercent:F

    goto :goto_3

    :cond_a
    iget v2, p0, startToEnd:I

    if-eq v2, p1, :cond_b

    iput v2, p0, resolvedLeftToRight:I

    :cond_b
    iget v2, p0, startToStart:I

    if-eq v2, p1, :cond_c

    iput v2, p0, resolvedLeftToLeft:I

    :cond_c
    iget v2, p0, endToStart:I

    if-eq v2, p1, :cond_d

    iput v2, p0, resolvedRightToLeft:I

    :cond_d
    iget v2, p0, endToEnd:I

    if-eq v2, p1, :cond_e

    iput v2, p0, resolvedRightToRight:I

    :cond_e
    iget v2, p0, goneStartMargin:I

    if-eq v2, p1, :cond_f

    iput v2, p0, resolveGoneLeftMargin:I

    :cond_f
    iget v2, p0, goneEndMargin:I

    if-eq v2, p1, :cond_10

    iput v2, p0, resolveGoneRightMargin:I

    :cond_10
    :goto_3
    iget v2, p0, endToStart:I

    if-ne v2, p1, :cond_14

    iget v2, p0, endToEnd:I

    if-ne v2, p1, :cond_14

    iget v2, p0, startToStart:I

    if-ne v2, p1, :cond_14

    iget v2, p0, startToEnd:I

    if-ne v2, p1, :cond_14

    iget v2, p0, rightToLeft:I

    if-eq v2, p1, :cond_11

    iput v2, p0, resolvedRightToLeft:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_4

    :cond_11
    iget v2, p0, rightToRight:I

    if-eq v2, p1, :cond_12

    iput v2, p0, resolvedRightToRight:I

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-gtz v2, :cond_12

    if-lez v1, :cond_12

    iput v1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_12
    :goto_4
    iget v1, p0, leftToLeft:I

    if-eq v1, p1, :cond_13

    iput v1, p0, resolvedLeftToLeft:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    goto :goto_5

    :cond_13
    iget v1, p0, leftToRight:I

    if-eq v1, p1, :cond_14

    iput v1, p0, resolvedLeftToRight:I

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-gtz p1, :cond_14

    if-lez v0, :cond_14

    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_14
    :goto_5
    return-void
.end method

.method public validate()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, isGuideline:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, horizontalDimensionFixed:Z

    iput-boolean v1, p0, verticalDimensionFixed:Z

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, constrainedWidth:Z

    if-eqz v2, :cond_0

    iput-boolean v0, p0, horizontalDimensionFixed:Z

    iput v1, p0, matchConstraintDefaultWidth:I

    :cond_0
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v3, :cond_1

    iget-boolean v2, p0, constrainedHeight:Z

    if-eqz v2, :cond_1

    iput-boolean v0, p0, verticalDimensionFixed:Z

    iput v1, p0, matchConstraintDefaultHeight:I

    :cond_1
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v2, v4, :cond_3

    :cond_2
    iput-boolean v0, p0, horizontalDimensionFixed:Z

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-nez v2, :cond_3

    iget v2, p0, matchConstraintDefaultWidth:I

    if-ne v2, v1, :cond_3

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v1, p0, constrainedWidth:Z

    :cond_3
    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eqz v2, :cond_4

    iget v2, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-ne v2, v4, :cond_5

    :cond_4
    iput-boolean v0, p0, verticalDimensionFixed:Z

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-nez v0, :cond_5

    iget v0, p0, matchConstraintDefaultHeight:I

    if-ne v0, v1, :cond_5

    iput v3, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v1, p0, constrainedHeight:Z

    :cond_5
    iget v0, p0, guidePercent:F

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v0, v0, v2

    if-nez v0, :cond_6

    iget v0, p0, guideBegin:I

    if-ne v0, v4, :cond_6

    iget v0, p0, guideEnd:I

    if-eq v0, v4, :cond_8

    :cond_6
    iput-boolean v1, p0, isGuideline:Z

    iput-boolean v1, p0, horizontalDimensionFixed:Z

    iput-boolean v1, p0, verticalDimensionFixed:Z

    iget-object v0, p0, widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    instance-of v0, v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    if-nez v0, :cond_7

    new-instance v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    invoke-direct {v0}, Landroidx/constraintlayout/solver/widgets/Guideline;-><init>()V

    iput-object v0, p0, widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :cond_7
    iget-object v0, p0, widget:Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Guideline;

    iget p0, p0, orientation:I

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/solver/widgets/Guideline;->setOrientation(I)V

    :cond_8
    return-void
.end method
