.class Lcom/oneplus/lib/design/widget/ViewOffsetHelper;
.super Ljava/lang/Object;
.source "ViewOffsetHelper.java"


# instance fields
.field private mLayoutLeft:I

.field private mLayoutTop:I

.field private mOffsetLeft:I

.field private mOffsetTop:I

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mView:Landroid/view/View;

    return-void
.end method

.method private updateOffsets()V
    .locals 4

    iget-object v0, p0, mView:Landroid/view/View;

    iget v1, p0, mOffsetTop:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    iget v3, p0, mLayoutTop:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    iget-object v0, p0, mView:Landroid/view/View;

    iget v1, p0, mOffsetLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, p0, mLayoutLeft:I

    sub-int/2addr v2, v3

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    return-void
.end method


# virtual methods
.method public getLayoutLeft()I
    .locals 1

    iget v0, p0, mLayoutLeft:I

    return v0
.end method

.method public getLayoutTop()I
    .locals 1

    iget v0, p0, mLayoutTop:I

    return v0
.end method

.method public getLeftAndRightOffset()I
    .locals 1

    iget v0, p0, mOffsetLeft:I

    return v0
.end method

.method public getTopAndBottomOffset()I
    .locals 1

    iget v0, p0, mOffsetTop:I

    return v0
.end method

.method public onViewLayout()V
    .locals 1

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, mLayoutTop:I

    iget-object v0, p0, mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, mLayoutLeft:I

    invoke-direct {p0}, updateOffsets()V

    return-void
.end method

.method public setLeftAndRightOffset(I)Z
    .locals 1

    iget v0, p0, mOffsetLeft:I

    if-eq v0, p1, :cond_0

    iput p1, p0, mOffsetLeft:I

    invoke-direct {p0}, updateOffsets()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setTopAndBottomOffset(I)Z
    .locals 1

    iget v0, p0, mOffsetTop:I

    if-eq v0, p1, :cond_0

    iput p1, p0, mOffsetTop:I

    invoke-direct {p0}, updateOffsets()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
