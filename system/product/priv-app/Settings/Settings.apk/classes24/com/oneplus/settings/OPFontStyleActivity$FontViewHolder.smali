.class Lcom/oneplus/settings/OPFontStyleActivity$FontViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "OPFontStyleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPFontStyleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FontViewHolder"
.end annotation


# instance fields
.field fontContent:Landroid/widget/TextView;

.field fontFlag:Landroid/widget/TextView;

.field fontTitle:Landroid/widget/TextView;

.field squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0297

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, fontTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0292

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, fontContent:Landroid/widget/TextView;

    const v0, 0x7f0a0293

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, fontFlag:Landroid/widget/TextView;

    const v0, 0x7f0a0291

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    iput-object v0, p0, squarelLinearLayout:Lcom/oneplus/settings/ui/OPSquarelLinearLayout;

    return-void
.end method
