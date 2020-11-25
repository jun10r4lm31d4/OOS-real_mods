.class public Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field private mEnd:I

.field private mExplicitLeft:I

.field private mExplicitRight:I

.field private mIsRelative:Z

.field private mIsRtl:Z

.field private mLeft:I

.field private mRight:I

.field private mStart:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mLeft:I

    iput v0, p0, mRight:I

    const/high16 v1, -0x80000000

    iput v1, p0, mStart:I

    iput v1, p0, mEnd:I

    iput v0, p0, mExplicitLeft:I

    iput v0, p0, mExplicitRight:I

    iput-boolean v0, p0, mIsRtl:Z

    iput-boolean v0, p0, mIsRelative:Z

    return-void
.end method


# virtual methods
.method public getEnd()I
    .locals 1

    iget-boolean v0, p0, mIsRtl:Z

    if-eqz v0, :cond_0

    iget p0, p0, mLeft:I

    goto :goto_0

    :cond_0
    iget p0, p0, mRight:I

    :goto_0
    return p0
.end method

.method public getLeft()I
    .locals 0

    iget p0, p0, mLeft:I

    return p0
.end method

.method public getRight()I
    .locals 0

    iget p0, p0, mRight:I

    return p0
.end method

.method public getStart()I
    .locals 1

    iget-boolean v0, p0, mIsRtl:Z

    if-eqz v0, :cond_0

    iget p0, p0, mRight:I

    goto :goto_0

    :cond_0
    iget p0, p0, mLeft:I

    :goto_0
    return p0
.end method

.method public setAbsolute(II)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsRelative:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    iput p1, p0, mExplicitLeft:I

    iput p1, p0, mLeft:I

    :cond_0
    if-eq p2, v0, :cond_1

    iput p2, p0, mExplicitRight:I

    iput p2, p0, mRight:I

    :cond_1
    return-void
.end method

.method public setDirection(Z)V
    .locals 1

    iget-boolean v0, p0, mIsRtl:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, mIsRtl:Z

    iget-boolean v0, p0, mIsRelative:Z

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    iget p1, p0, mEnd:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, mExplicitLeft:I

    :goto_0
    iput p1, p0, mLeft:I

    iget p1, p0, mStart:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, mExplicitRight:I

    :goto_1
    iput p1, p0, mRight:I

    goto :goto_4

    :cond_3
    iget p1, p0, mStart:I

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, mExplicitLeft:I

    :goto_2
    iput p1, p0, mLeft:I

    iget p1, p0, mEnd:I

    if-eq p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget p1, p0, mExplicitRight:I

    :goto_3
    iput p1, p0, mRight:I

    goto :goto_4

    :cond_6
    iget p1, p0, mExplicitLeft:I

    iput p1, p0, mLeft:I

    iget p1, p0, mExplicitRight:I

    iput p1, p0, mRight:I

    :goto_4
    return-void
.end method

.method public setRelative(II)V
    .locals 2

    iput p1, p0, mStart:I

    iput p2, p0, mEnd:I

    const/4 v0, 0x1

    iput-boolean v0, p0, mIsRelative:Z

    iget-boolean v0, p0, mIsRtl:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    iput p2, p0, mLeft:I

    :cond_0
    if-eq p1, v1, :cond_3

    iput p1, p0, mRight:I

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    iput p1, p0, mLeft:I

    :cond_2
    if-eq p2, v1, :cond_3

    iput p2, p0, mRight:I

    :cond_3
    :goto_0
    return-void
.end method
