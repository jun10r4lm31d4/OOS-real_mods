.class Lcom/oneplus/settings/OPGestureAnswerSettings$1;
.super Landroid/database/ContentObserver;
.source "OPGestureAnswerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureAnswerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPGestureAnswerSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$100(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$100(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$200(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$300()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$400(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$400(Lcom/oneplus/settings/OPGestureAnswerSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/oneplus/settings/OPGestureAnswerSettings;

    invoke-static {v1}, Lcom/oneplus/settings/OPGestureAnswerSettings;->access$500(Lcom/oneplus/settings/OPGestureAnswerSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
