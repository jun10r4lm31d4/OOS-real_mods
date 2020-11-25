.class Lcom/oneplus/settings/edgeeffect/SpringListView2$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringListView2.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget v0, p0, state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->onRecyclerViewScrolled()V

    :cond_1
    iget v0, p0, state:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    if-nez p2, :cond_5

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getListPaddingTop()I

    move-result v4

    if-ne v3, v4, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I

    move-result v4

    if-gt v3, v4, :cond_3

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getListPaddingTop()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I

    move-result v4

    if-ne v3, v4, :cond_8

    :cond_3
    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$900(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v4

    iget-object v5, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v5

    iget-object v6, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v6}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v6

    div-float/2addr v6, v1

    invoke-static {v3, v4, v0, v5, v6}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1200(Lcom/oneplus/settings/edgeeffect/SpringListView2;FFFF)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_0

    :cond_4
    if-eqz v2, :cond_8

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$702(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I

    goto/16 :goto_0

    :cond_5
    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_8

    add-int v2, p2, p3

    if-ne v2, p4, :cond_8

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getHeight()I

    move-result v4

    iget-object v5, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getListPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_7

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget v4, v4, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    if-lt v3, v4, :cond_6

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getHeight()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getListPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget v4, v4, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    if-ne v3, v4, :cond_9

    :cond_6
    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$900(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v4

    iget-object v5, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v5}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v5

    iget-object v6, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v6}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v6

    div-float/2addr v6, v1

    invoke-static {v3, v4, v0, v5, v6}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1200(Lcom/oneplus/settings/edgeeffect/SpringListView2;FFFF)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$1100(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_9

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mLastChildBottom:I

    goto :goto_1

    :cond_8
    :goto_0
    nop

    :cond_9
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, state:I

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView2;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
