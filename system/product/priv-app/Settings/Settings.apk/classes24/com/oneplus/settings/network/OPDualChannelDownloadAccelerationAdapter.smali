.class public Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;
.super Landroid/widget/BaseAdapter;
.source "OPDualChannelDownloadAccelerationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;
    }
.end annotation


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mSelectedList:Ljava/util/List;

    iput-object p2, p0, mAppList:Ljava/util/List;

    iput-object p1, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, mAppList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1

    iget-object v0, p0, mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, getItem(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getSelected(I)Z
    .locals 1

    iget-object v0, p0, mSelectedList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, mAppList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v2, 0x0

    if-nez p2, :cond_0

    iget-object v3, p0, mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0d01aa

    invoke-virtual {v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v3, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;-><init>(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;)V

    move-object v0, v3

    const v3, 0x7f0a0526

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->parent:Landroid/widget/RelativeLayout;

    const v3, 0x7f0a0750

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v3, 0x7f0a0308

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    const v3, 0x7f0a043e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    const v3, 0x7f0a06c7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->summaryTv:Landroid/widget/TextView;

    const v3, 0x7f0a02c3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const v3, 0x7f0a06d3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;

    :goto_0
    iget-object v3, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->groupDivider:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    if-nez p1, :cond_1

    iget-object v4, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v4, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    const v5, 0x7f120fd7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    iget-object v5, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->titleTv:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    iget-object v4, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->appIconIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->appNameTv:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v4, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v4, v2}, Landroid/widget/Switch;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, getSelected(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter$ItemViewHolder;->switchBt:Landroid/widget/Switch;

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_2
    return-object p2
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, mAppList:Ljava/util/List;

    iget-object v0, p0, mSelectedList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, mAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, mSelectedList:Ljava/util/List;

    iget-object v2, p0, mAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->isSelected()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, notifyDataSetChanged()V

    return-void
.end method

.method public setSelected(IZ)V
    .locals 2

    iget-object v0, p0, mSelectedList:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, notifyDataSetChanged()V

    return-void
.end method
