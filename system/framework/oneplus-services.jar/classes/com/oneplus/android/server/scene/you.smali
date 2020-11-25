.class Lcom/oneplus/android/server/scene/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/rtg;->you(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/rtg;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/rtg;->zta(Lcom/oneplus/android/server/scene/rtg;)Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/rtg;->zta(Lcom/oneplus/android/server/scene/rtg;)Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    invoke-static {}, Lcom/oneplus/android/server/scene/rtg;->access$100()Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/rtg;->you(Lcom/oneplus/android/server/scene/rtg;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "game_mode_show_fnatic_intr"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/rtg;->sis(Lcom/oneplus/android/server/scene/rtg;)Lcom/oneplus/android/server/scene/rtg$zta;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/rtg;->sis(Lcom/oneplus/android/server/scene/rtg;)Lcom/oneplus/android/server/scene/rtg$zta;

    move-result-object p1

    invoke-interface {p1}, Lcom/oneplus/android/server/scene/rtg$zta;->kth()V

    :cond_1
    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/rtg;->hide()V

    return-void
.end method
