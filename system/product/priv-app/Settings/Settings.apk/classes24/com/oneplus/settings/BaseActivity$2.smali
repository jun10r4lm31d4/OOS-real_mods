.class Lcom/oneplus/settings/BaseActivity$2;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/BaseActivity;->showWarningDialog(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/BaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/BaseActivity;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/settings/BaseActivity;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/BaseActivity;

    iget-object v0, v0, Lcom/oneplus/settings/BaseActivity;->mOnBackPressListener:Lcom/oneplus/settings/OnBackPressListener;

    invoke-interface {v0}, Lcom/oneplus/settings/OnBackPressListener;->onCancelPressed()V

    :cond_0
    return-void
.end method
