.class public Lcom/oneplus/lib/app/OPEditTextDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OPEditTextDialog.java"


# instance fields
.field private mEditText:Lcom/oneplus/lib/widget/OPEditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getEditText()Lcom/oneplus/lib/widget/OPEditText;
    .locals 1

    iget-object v0, p0, mEditText:Lcom/oneplus/lib/widget/OPEditText;

    if-nez v0, :cond_0

    sget v0, Lcom/oneplus/commonctrl/R$id;->edit_text:I

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v0, p0, mEditText:Lcom/oneplus/lib/widget/OPEditText;

    :cond_0
    iget-object v0, p0, mEditText:Lcom/oneplus/lib/widget/OPEditText;

    return-object v0
.end method

.method initView(Landroid/view/View;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$id;->edit_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v0, p0, mEditText:Lcom/oneplus/lib/widget/OPEditText;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "OPEditTextDialog"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$layout;->oneplus_control_alert_dialog_with_edittext:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, initView(Landroid/view/View;)V

    invoke-virtual {p0, v1}, setView(Landroid/view/View;)V

    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
