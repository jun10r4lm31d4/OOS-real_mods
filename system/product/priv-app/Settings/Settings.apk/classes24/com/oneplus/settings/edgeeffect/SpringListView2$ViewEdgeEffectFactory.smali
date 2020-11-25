.class Lcom/oneplus/settings/edgeeffect/SpringListView2$ViewEdgeEffectFactory;
.super Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewEdgeEffectFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-direct {p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;)V

    return-void
.end method


# virtual methods
.method protected createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SEdgeEffectFactory;->createEdgeEffect(Landroid/view/View;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    iget-object v1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, -0x41666666    # -0.3f

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Landroid/content/Context;F)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;

    iget-object v1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;-><init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Landroid/content/Context;F)V

    return-object v0
.end method
