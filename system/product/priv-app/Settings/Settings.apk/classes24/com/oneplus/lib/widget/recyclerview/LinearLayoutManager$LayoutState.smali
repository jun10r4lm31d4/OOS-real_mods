.class Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager$LayoutState;
.super Ljava/lang/Object;
.source "LinearLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayoutState"
.end annotation


# static fields
.field static final INVALID_LAYOUT:I = -0x80000000

.field static final ITEM_DIRECTION_HEAD:I = -0x1

.field static final ITEM_DIRECTION_TAIL:I = 0x1

.field static final LAYOUT_END:I = 0x1

.field static final LAYOUT_START:I = -0x1

.field static final SCOLLING_OFFSET_NaN:I = -0x80000000

.field static final TAG:Ljava/lang/String; = "LinearLayoutManager#LayoutState"


# instance fields
.field mAvailable:I

.field mCurrentPosition:I

.field mExtra:I

.field mIsPreLayout:Z

.field mItemDirection:I

.field mLastScrollDelta:I

.field mLayoutDirection:I

.field mOffset:I

.field mRecycle:Z

.field mScrapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mScrollingOffset:I


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, mRecycle:Z

    const/4 v0, 0x0

    iput v0, p0, mExtra:I

    iput-boolean v0, p0, mIsPreLayout:Z

    const/4 v0, 0x0

    iput-object v0, p0, mScrapList:Ljava/util/List;

    return-void
.end method

.method private nextViewFromScrapList()Landroid/view/View;
    .locals 6

    iget-object v0, p0, mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, mScrapList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v2, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    iget v4, p0, mCurrentPosition:I

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {p0, v2}, assignPositionFromScrapList(Landroid/view/View;)V

    return-object v2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public assignPositionFromScrapList()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, assignPositionFromScrapList(Landroid/view/View;)V

    return-void
.end method

.method public assignPositionFromScrapList(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, -0x1

    iput v1, p0, mCurrentPosition:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v1

    iput v1, p0, mCurrentPosition:I

    :goto_0
    return-void
.end method

.method hasMore(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z
    .locals 2

    iget v0, p0, mCurrentPosition:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method log()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mAvailable:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ind:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mCurrentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mItemDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", layoutDir:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mLayoutDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LinearLayoutManager#LayoutState"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method next(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Landroid/view/View;
    .locals 3

    iget-object v0, p0, mScrapList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-direct {p0}, nextViewFromScrapList()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget v0, p0, mCurrentPosition:I

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getViewForPosition(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, mCurrentPosition:I

    iget v2, p0, mItemDirection:I

    add-int/2addr v1, v2

    iput v1, p0, mCurrentPosition:I

    return-object v0
.end method

.method public nextViewInLimitedList(Landroid/view/View;)Landroid/view/View;
    .locals 8

    iget-object v0, p0, mScrapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, mScrapList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eq v4, p1, :cond_2

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->isItemRemoved()Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result v6

    iget v7, p0, mCurrentPosition:I

    sub-int/2addr v6, v7

    iget v7, p0, mItemDirection:I

    mul-int/2addr v6, v7

    if-gez v6, :cond_1

    goto :goto_1

    :cond_1
    if-ge v6, v2, :cond_2

    move-object v1, v4

    move v2, v6

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-object v1
.end method
