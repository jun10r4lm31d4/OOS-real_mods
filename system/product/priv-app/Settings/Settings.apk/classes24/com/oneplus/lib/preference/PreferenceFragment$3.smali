.class Lcom/oneplus/lib/preference/PreferenceFragment$3;
.super Ljava/lang/Object;
.source "PreferenceFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/preference/Preference;

    if-eqz v1, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v1}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$100(Lcom/oneplus/lib/preference/PreferenceFragment;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedView()Landroid/view/View;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v2, v1, p2, p3}, Lcom/oneplus/lib/preference/Preference;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
