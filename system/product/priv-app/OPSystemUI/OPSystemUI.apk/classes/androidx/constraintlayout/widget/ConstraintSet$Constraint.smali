.class Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Constraint"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public baselineToBaseline:I

.field public bottomMargin:I

.field public bottomToBottom:I

.field public bottomToTop:I

.field public circleAngle:F

.field public circleConstraint:I

.field public circleRadius:I

.field public constrainedHeight:Z

.field public constrainedWidth:Z

.field public dimensionRatio:Ljava/lang/String;

.field public editorAbsoluteX:I

.field public editorAbsoluteY:I

.field public elevation:F

.field public endMargin:I

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

.field public heightDefault:I

.field public heightMax:I

.field public heightMin:I

.field public heightPercent:F

.field public horizontalBias:F

.field public horizontalChainStyle:I

.field public horizontalWeight:F

.field public leftMargin:I

.field public leftToLeft:I

.field public leftToRight:I

.field public mBarrierDirection:I

.field public mHeight:I

.field public mHelperType:I

.field mIsGuideline:Z

.field public mReferenceIds:[I

.field mViewId:I

.field public mWidth:I

.field public orientation:I

.field public rightMargin:I

.field public rightToLeft:I

.field public rightToRight:I

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public startMargin:I

.field public startToEnd:I

.field public startToStart:I

.field public topMargin:I

.field public topToBottom:I

.field public topToTop:I

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F

.field public verticalBias:F

.field public verticalChainStyle:I

.field public verticalWeight:F

.field public visibility:I

.field public widthDefault:I

.field public widthMax:I

.field public widthMin:I

.field public widthPercent:F


# direct methods
.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsGuideline:Z

    const/4 v1, -0x1

    iput v1, p0, guideBegin:I

    iput v1, p0, guideEnd:I

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, guidePercent:F

    iput v1, p0, leftToLeft:I

    iput v1, p0, leftToRight:I

    iput v1, p0, rightToLeft:I

    iput v1, p0, rightToRight:I

    iput v1, p0, topToTop:I

    iput v1, p0, topToBottom:I

    iput v1, p0, bottomToTop:I

    iput v1, p0, bottomToBottom:I

    iput v1, p0, baselineToBaseline:I

    iput v1, p0, startToEnd:I

    iput v1, p0, startToStart:I

    iput v1, p0, endToStart:I

    iput v1, p0, endToEnd:I

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, horizontalBias:F

    iput v2, p0, verticalBias:F

    const/4 v2, 0x0

    iput-object v2, p0, dimensionRatio:Ljava/lang/String;

    iput v1, p0, circleConstraint:I

    iput v0, p0, circleRadius:I

    const/4 v2, 0x0

    iput v2, p0, circleAngle:F

    iput v1, p0, editorAbsoluteX:I

    iput v1, p0, editorAbsoluteY:I

    iput v1, p0, orientation:I

    iput v1, p0, leftMargin:I

    iput v1, p0, rightMargin:I

    iput v1, p0, topMargin:I

    iput v1, p0, bottomMargin:I

    iput v1, p0, endMargin:I

    iput v1, p0, startMargin:I

    iput v0, p0, visibility:I

    iput v1, p0, goneLeftMargin:I

    iput v1, p0, goneTopMargin:I

    iput v1, p0, goneRightMargin:I

    iput v1, p0, goneBottomMargin:I

    iput v1, p0, goneEndMargin:I

    iput v1, p0, goneStartMargin:I

    iput v2, p0, verticalWeight:F

    iput v2, p0, horizontalWeight:F

    iput v0, p0, horizontalChainStyle:I

    iput v0, p0, verticalChainStyle:I

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, alpha:F

    iput-boolean v0, p0, applyElevation:Z

    iput v2, p0, elevation:F

    iput v2, p0, rotation:F

    iput v2, p0, rotationX:F

    iput v2, p0, rotationY:F

    iput v3, p0, scaleX:F

    iput v3, p0, scaleY:F

    const/high16 v4, 0x7fc00000    # Float.NaN

    iput v4, p0, transformPivotX:F

    iput v4, p0, transformPivotY:F

    iput v2, p0, translationX:F

    iput v2, p0, translationY:F

    iput v2, p0, translationZ:F

    iput-boolean v0, p0, constrainedWidth:Z

    iput-boolean v0, p0, constrainedHeight:Z

    iput v0, p0, widthDefault:I

    iput v0, p0, heightDefault:I

    iput v1, p0, widthMax:I

    iput v1, p0, heightMax:I

    iput v1, p0, widthMin:I

    iput v1, p0, heightMin:I

    iput v3, p0, widthPercent:F

    iput v3, p0, heightPercent:F

    iput v1, p0, mBarrierDirection:I

    iput v1, p0, mHelperType:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet$1;)V
    .locals 0

    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$200(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    return-void
.end method

.method static synthetic access$300(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    return-void
.end method

.method private fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 1

    iput p1, p0, mViewId:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iput p1, p0, leftToLeft:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iput p1, p0, leftToRight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iput p1, p0, rightToLeft:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iput p1, p0, rightToRight:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput p1, p0, topToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iput p1, p0, topToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iput p1, p0, bottomToTop:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput p1, p0, bottomToBottom:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iput p1, p0, baselineToBaseline:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iput p1, p0, startToEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput p1, p0, startToStart:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iput p1, p0, endToStart:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput p1, p0, endToEnd:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iput p1, p0, horizontalBias:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iput p1, p0, verticalBias:F

    iget-object p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iput-object p1, p0, dimensionRatio:Ljava/lang/String;

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iput p1, p0, circleConstraint:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iput p1, p0, circleRadius:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iput p1, p0, circleAngle:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iput p1, p0, editorAbsoluteX:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iput p1, p0, editorAbsoluteY:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iput p1, p0, orientation:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iput p1, p0, guidePercent:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iput p1, p0, guideBegin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iput p1, p0, guideEnd:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, mWidth:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, mHeight:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput p1, p0, leftMargin:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput p1, p0, rightMargin:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput p1, p0, topMargin:I

    iget p1, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput p1, p0, bottomMargin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iput p1, p0, verticalWeight:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iput p1, p0, horizontalWeight:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iput p1, p0, verticalChainStyle:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iput p1, p0, horizontalChainStyle:I

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iput-boolean p1, p0, constrainedWidth:Z

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iput-boolean v0, p0, constrainedHeight:Z

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iput v0, p0, widthDefault:I

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iput v0, p0, heightDefault:I

    iput-boolean p1, p0, constrainedWidth:Z

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iput p1, p0, widthMax:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iput p1, p0, heightMax:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iput p1, p0, widthMin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iput p1, p0, heightMin:I

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iput p1, p0, widthPercent:F

    iget p1, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iput p1, p0, heightPercent:F

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p1

    iput p1, p0, endMargin:I

    invoke-virtual {p2}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    iput p1, p0, startMargin:I

    :cond_0
    return-void
.end method

.method private fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p1, p2}, fillFrom(ILandroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    iput p1, p0, alpha:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    iput p1, p0, rotation:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    iput p1, p0, rotationX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    iput p1, p0, rotationY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    iput p1, p0, scaleX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    iput p1, p0, scaleY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    iput p1, p0, transformPivotX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    iput p1, p0, transformPivotY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    iput p1, p0, translationX:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    iput p1, p0, translationY:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    iput p1, p0, translationZ:F

    iget p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    iput p1, p0, elevation:F

    iget-boolean p1, p2, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    iput-boolean p1, p0, applyElevation:Z

    return-void
.end method

.method private fillFromConstraints(Landroidx/constraintlayout/widget/ConstraintHelper;ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 0

    invoke-direct {p0, p2, p3}, fillFromConstraints(ILandroidx/constraintlayout/widget/Constraints$LayoutParams;)V

    instance-of p2, p1, Landroidx/constraintlayout/widget/Barrier;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    iput p2, p0, mHelperType:I

    check-cast p1, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result p2

    iput p2, p0, mBarrierDirection:I

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->getReferencedIds()[I

    move-result-object p1

    iput-object p1, p0, mReferenceIds:[I

    :cond_0
    return-void
.end method


# virtual methods
.method public applyTo(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V
    .locals 2

    iget v0, p0, leftToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToLeft:I

    iget v0, p0, leftToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->leftToRight:I

    iget v0, p0, rightToLeft:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToLeft:I

    iget v0, p0, rightToRight:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->rightToRight:I

    iget v0, p0, topToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iget v0, p0, topToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    iget v0, p0, bottomToTop:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    iget v0, p0, bottomToBottom:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iget v0, p0, baselineToBaseline:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    iget v0, p0, startToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToEnd:I

    iget v0, p0, startToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iget v0, p0, endToStart:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    iget v0, p0, endToEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iget v0, p0, leftMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, rightMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, topMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, bottomMargin:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, goneStartMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneStartMargin:I

    iget v0, p0, goneEndMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->goneEndMargin:I

    iget v0, p0, horizontalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalBias:F

    iget v0, p0, verticalBias:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalBias:F

    iget v0, p0, circleConstraint:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleConstraint:I

    iget v0, p0, circleRadius:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleRadius:I

    iget v0, p0, circleAngle:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->circleAngle:F

    iget-object v0, p0, dimensionRatio:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->dimensionRatio:Ljava/lang/String;

    iget v0, p0, editorAbsoluteX:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteX:I

    iget v0, p0, editorAbsoluteY:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->editorAbsoluteY:I

    iget v0, p0, verticalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalWeight:F

    iget v0, p0, horizontalWeight:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalWeight:F

    iget v0, p0, verticalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->verticalChainStyle:I

    iget v0, p0, horizontalChainStyle:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->horizontalChainStyle:I

    iget-boolean v0, p0, constrainedWidth:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedWidth:Z

    iget-boolean v0, p0, constrainedHeight:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constrainedHeight:Z

    iget v0, p0, widthDefault:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultWidth:I

    iget v0, p0, heightDefault:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintDefaultHeight:I

    iget v0, p0, widthMax:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxWidth:I

    iget v0, p0, heightMax:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMaxHeight:I

    iget v0, p0, widthMin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinWidth:I

    iget v0, p0, heightMin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintMinHeight:I

    iget v0, p0, widthPercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentWidth:F

    iget v0, p0, heightPercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->matchConstraintPercentHeight:F

    iget v0, p0, orientation:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->orientation:I

    iget v0, p0, guidePercent:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

    iget v0, p0, guideBegin:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    iget v0, p0, guideEnd:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

    iget v0, p0, mWidth:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, mHeight:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    iget v0, p0, startMargin:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, endMargin:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :cond_0
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->validate()V

    return-void
.end method

.method public clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;
    .locals 3

    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    invoke-direct {v0}, <init>()V

    iget-boolean v1, p0, mIsGuideline:Z

    iput-boolean v1, v0, mIsGuideline:Z

    iget v1, p0, mWidth:I

    iput v1, v0, mWidth:I

    iget v1, p0, mHeight:I

    iput v1, v0, mHeight:I

    iget v1, p0, guideBegin:I

    iput v1, v0, guideBegin:I

    iget v1, p0, guideEnd:I

    iput v1, v0, guideEnd:I

    iget v1, p0, guidePercent:F

    iput v1, v0, guidePercent:F

    iget v1, p0, leftToLeft:I

    iput v1, v0, leftToLeft:I

    iget v1, p0, leftToRight:I

    iput v1, v0, leftToRight:I

    iget v1, p0, rightToLeft:I

    iput v1, v0, rightToLeft:I

    iget v1, p0, rightToRight:I

    iput v1, v0, rightToRight:I

    iget v1, p0, topToTop:I

    iput v1, v0, topToTop:I

    iget v1, p0, topToBottom:I

    iput v1, v0, topToBottom:I

    iget v1, p0, bottomToTop:I

    iput v1, v0, bottomToTop:I

    iget v1, p0, bottomToBottom:I

    iput v1, v0, bottomToBottom:I

    iget v1, p0, baselineToBaseline:I

    iput v1, v0, baselineToBaseline:I

    iget v1, p0, startToEnd:I

    iput v1, v0, startToEnd:I

    iget v1, p0, startToStart:I

    iput v1, v0, startToStart:I

    iget v1, p0, endToStart:I

    iput v1, v0, endToStart:I

    iget v1, p0, endToEnd:I

    iput v1, v0, endToEnd:I

    iget v1, p0, horizontalBias:F

    iput v1, v0, horizontalBias:F

    iget v1, p0, verticalBias:F

    iput v1, v0, verticalBias:F

    iget-object v1, p0, dimensionRatio:Ljava/lang/String;

    iput-object v1, v0, dimensionRatio:Ljava/lang/String;

    iget v1, p0, editorAbsoluteX:I

    iput v1, v0, editorAbsoluteX:I

    iget v1, p0, editorAbsoluteY:I

    iput v1, v0, editorAbsoluteY:I

    iget v1, p0, horizontalBias:F

    iput v1, v0, horizontalBias:F

    iget v1, p0, horizontalBias:F

    iput v1, v0, horizontalBias:F

    iget v1, p0, horizontalBias:F

    iput v1, v0, horizontalBias:F

    iget v1, p0, horizontalBias:F

    iput v1, v0, horizontalBias:F

    iget v1, p0, horizontalBias:F

    iput v1, v0, horizontalBias:F

    iget v1, p0, orientation:I

    iput v1, v0, orientation:I

    iget v1, p0, leftMargin:I

    iput v1, v0, leftMargin:I

    iget v1, p0, rightMargin:I

    iput v1, v0, rightMargin:I

    iget v1, p0, topMargin:I

    iput v1, v0, topMargin:I

    iget v1, p0, bottomMargin:I

    iput v1, v0, bottomMargin:I

    iget v1, p0, endMargin:I

    iput v1, v0, endMargin:I

    iget v1, p0, startMargin:I

    iput v1, v0, startMargin:I

    iget v1, p0, visibility:I

    iput v1, v0, visibility:I

    iget v1, p0, goneLeftMargin:I

    iput v1, v0, goneLeftMargin:I

    iget v1, p0, goneTopMargin:I

    iput v1, v0, goneTopMargin:I

    iget v1, p0, goneRightMargin:I

    iput v1, v0, goneRightMargin:I

    iget v1, p0, goneBottomMargin:I

    iput v1, v0, goneBottomMargin:I

    iget v1, p0, goneEndMargin:I

    iput v1, v0, goneEndMargin:I

    iget v1, p0, goneStartMargin:I

    iput v1, v0, goneStartMargin:I

    iget v1, p0, verticalWeight:F

    iput v1, v0, verticalWeight:F

    iget v1, p0, horizontalWeight:F

    iput v1, v0, horizontalWeight:F

    iget v1, p0, horizontalChainStyle:I

    iput v1, v0, horizontalChainStyle:I

    iget v1, p0, verticalChainStyle:I

    iput v1, v0, verticalChainStyle:I

    iget v1, p0, alpha:F

    iput v1, v0, alpha:F

    iget-boolean v1, p0, applyElevation:Z

    iput-boolean v1, v0, applyElevation:Z

    iget v1, p0, elevation:F

    iput v1, v0, elevation:F

    iget v1, p0, rotation:F

    iput v1, v0, rotation:F

    iget v1, p0, rotationX:F

    iput v1, v0, rotationX:F

    iget v1, p0, rotationY:F

    iput v1, v0, rotationY:F

    iget v1, p0, scaleX:F

    iput v1, v0, scaleX:F

    iget v1, p0, scaleY:F

    iput v1, v0, scaleY:F

    iget v1, p0, transformPivotX:F

    iput v1, v0, transformPivotX:F

    iget v1, p0, transformPivotY:F

    iput v1, v0, transformPivotY:F

    iget v1, p0, translationX:F

    iput v1, v0, translationX:F

    iget v1, p0, translationY:F

    iput v1, v0, translationY:F

    iget v1, p0, translationZ:F

    iput v1, v0, translationZ:F

    iget-boolean v1, p0, constrainedWidth:Z

    iput-boolean v1, v0, constrainedWidth:Z

    iget-boolean v1, p0, constrainedHeight:Z

    iput-boolean v1, v0, constrainedHeight:Z

    iget v1, p0, widthDefault:I

    iput v1, v0, widthDefault:I

    iget v1, p0, heightDefault:I

    iput v1, v0, heightDefault:I

    iget v1, p0, widthMax:I

    iput v1, v0, widthMax:I

    iget v1, p0, heightMax:I

    iput v1, v0, heightMax:I

    iget v1, p0, widthMin:I

    iput v1, v0, widthMin:I

    iget v1, p0, heightMin:I

    iput v1, v0, heightMin:I

    iget v1, p0, widthPercent:F

    iput v1, v0, widthPercent:F

    iget v1, p0, heightPercent:F

    iput v1, v0, heightPercent:F

    iget v1, p0, mBarrierDirection:I

    iput v1, v0, mBarrierDirection:I

    iget v1, p0, mHelperType:I

    iput v1, v0, mHelperType:I

    iget-object v1, p0, mReferenceIds:[I

    if-eqz v1, :cond_0

    array-length v2, v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, mReferenceIds:[I

    :cond_0
    iget v1, p0, circleConstraint:I

    iput v1, v0, circleConstraint:I

    iget v1, p0, circleRadius:I

    iput v1, v0, circleRadius:I

    iget p0, p0, circleAngle:F

    iput p0, v0, circleAngle:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object p0

    return-object p0
.end method
