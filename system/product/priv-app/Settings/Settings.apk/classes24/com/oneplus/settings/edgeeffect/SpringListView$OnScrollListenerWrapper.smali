.class Lcom/oneplus/settings/edgeeffect/SpringListView$OnScrollListenerWrapper;
.super Ljava/lang/Object;
.source "SpringListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnScrollListenerWrapper"
.end annotation


# instance fields
.field state:I

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, state:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 7

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget v0, p0, state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    instance-of v1, v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    move-object v2, v0

    check-cast v2, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v1, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$002(Lcom/oneplus/settings/edgeeffect/SpringListView;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    :cond_1
    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView;)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->onRecyclerViewScrolled()V

    :cond_2
    const/4 v0, 0x0

    const/high16 v1, 0x41a00000    # 20.0f

    if-nez p2, :cond_4

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getListPaddingTop()I

    move-result v4

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$100(Lcom/oneplus/settings/edgeeffect/SpringListView;)I

    move-result v4

    if-le v3, v4, :cond_6

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$300(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v4

    iget-object v5, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v5

    iget-object v6, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v6}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v6

    div-float/2addr v6, v1

    invoke-static {v3, v4, v0, v5, v6}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$600(Lcom/oneplus/settings/edgeeffect/SpringListView;FFFF)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$700(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto/16 :goto_0

    :cond_3
    if-eqz v2, :cond_6

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$102(Lcom/oneplus/settings/edgeeffect/SpringListView;I)I

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v2}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    if-eqz v2, :cond_6

    add-int v2, p2, p3

    if-ne v2, p4, :cond_6

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    add-int/lit8 v3, p3, -0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v4}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getHeight()I

    move-result v4

    iget-object v5, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->getListPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    if-ne v3, v4, :cond_5

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    iget-object v4, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget v4, v4, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    if-ge v3, v4, :cond_7

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$300(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v4

    iget-object v5, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v5}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v5

    iget-object v6, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v6}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v6

    div-float/2addr v6, v1

    invoke-static {v3, v4, v0, v5, v6}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$600(Lcom/oneplus/settings/edgeeffect/SpringListView;FFFF)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$800(Lcom/oneplus/settings/edgeeffect/SpringListView;)Landroid/widget/EdgeEffect;

    move-result-object v0

    iget-object v3, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-static {v3}, Lcom/oneplus/settings/edgeeffect/SpringListView;->access$500(Lcom/oneplus/settings/edgeeffect/SpringListView;)F

    move-result v3

    div-float/2addr v3, v1

    float-to-int v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_7

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    iput v1, v0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mLastChildBottom:I

    goto :goto_1

    :cond_6
    :goto_0
    nop

    :cond_7
    :goto_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iput p2, p0, state:I

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView;

    iget-object v0, v0, Lcom/oneplus/settings/edgeeffect/SpringListView;->mGivenOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
