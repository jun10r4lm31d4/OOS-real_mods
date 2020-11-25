.class Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SoftwareInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

.field tvSummary:Landroid/widget/TextView;

.field tvTitle:Landroid/widget/TextView;

.field viewDividerBottom:Landroid/view/View;

.field viewDividerRight:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/settings/aboutphone/SoftwareInfoAdapter;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a075c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, tvTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0758

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, tvSummary:Landroid/widget/TextView;

    const v0, 0x7f0a0324

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0215

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, viewDividerRight:Landroid/view/View;

    const v0, 0x7f0a0212

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, viewDividerBottom:Landroid/view/View;

    return-void
.end method
