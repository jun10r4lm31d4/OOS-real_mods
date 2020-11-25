.class public Landroidx/constraintlayout/widget/Constraints$LayoutParams;
.super Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, alpha:F

    const/4 p2, 0x0

    iput-boolean p2, p0, applyElevation:Z

    const/4 p2, 0x0

    iput p2, p0, elevation:F

    iput p2, p0, rotation:F

    iput p2, p0, rotationX:F

    iput p2, p0, rotationY:F

    iput p1, p0, scaleX:F

    iput p1, p0, scaleY:F

    iput p2, p0, transformPivotX:F

    iput p2, p0, transformPivotY:F

    iput p2, p0, translationX:F

    iput p2, p0, translationY:F

    iput p2, p0, translationZ:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, alpha:F

    const/4 v1, 0x0

    iput-boolean v1, p0, applyElevation:Z

    const/4 v2, 0x0

    iput v2, p0, elevation:F

    iput v2, p0, rotation:F

    iput v2, p0, rotationX:F

    iput v2, p0, rotationY:F

    iput v0, p0, scaleX:F

    iput v0, p0, scaleY:F

    iput v2, p0, transformPivotX:F

    iput v2, p0, transformPivotY:F

    iput v2, p0, translationX:F

    iput v2, p0, translationY:F

    iput v2, p0, translationZ:F

    sget-object v0, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    :goto_0
    if-ge v1, p2, :cond_c

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v0

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    if-ne v0, v2, :cond_0

    iget v2, p0, alpha:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, alpha:F

    goto/16 :goto_1

    :cond_0
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    if-ne v0, v2, :cond_1

    iget v2, p0, elevation:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, elevation:F

    const/4 v0, 0x1

    iput-boolean v0, p0, applyElevation:Z

    goto/16 :goto_1

    :cond_1
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, rotationX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, rotationX:F

    goto/16 :goto_1

    :cond_2
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    if-ne v0, v2, :cond_3

    iget v2, p0, rotationY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, rotationY:F

    goto/16 :goto_1

    :cond_3
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotation:I

    if-ne v0, v2, :cond_4

    iget v2, p0, rotation:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, rotation:F

    goto :goto_1

    :cond_4
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    if-ne v0, v2, :cond_5

    iget v2, p0, scaleX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, scaleX:F

    goto :goto_1

    :cond_5
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    if-ne v0, v2, :cond_6

    iget v2, p0, scaleY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, scaleY:F

    goto :goto_1

    :cond_6
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    if-ne v0, v2, :cond_7

    iget v2, p0, transformPivotX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, transformPivotX:F

    goto :goto_1

    :cond_7
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    if-ne v0, v2, :cond_8

    iget v2, p0, transformPivotY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, transformPivotY:F

    goto :goto_1

    :cond_8
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    if-ne v0, v2, :cond_9

    iget v2, p0, translationX:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, translationX:F

    goto :goto_1

    :cond_9
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    if-ne v0, v2, :cond_a

    iget v2, p0, translationY:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, translationY:F

    goto :goto_1

    :cond_a
    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    if-ne v0, v2, :cond_b

    iget v2, p0, translationZ:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, translationX:F

    :cond_b
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_c
    return-void
.end method
