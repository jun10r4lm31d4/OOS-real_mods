.class Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;
.super Landroid/os/Handler;
.source "OPGloblaDarkModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$000(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$100(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$100(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/better/OPAppModel;

    const/4 v7, -0x1

    const/4 v8, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/settings/better/OPAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$300(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$000(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->setData(Ljava/util/List;)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    const v1, 0x7f0a04a7

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPEmptyPageView;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v1

    const v3, 0x7f120c16

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPEmptyPageView;->getEmptyImageView()Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f08049b

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/OPEmptyPageView;->setVisibility(I)V

    iget-object v1, p0, this$0:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;

    invoke-static {v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;->access$400(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
