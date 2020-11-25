.class public abstract Lcom/oneplus/lib/preference/DialogPreference;
.super Lcom/oneplus/lib/preference/Preference;
.source "DialogPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/DialogPreference$SavedState;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

.field private mDialog:Landroid/app/Dialog;

.field private mDialogIcon:Landroid/graphics/drawable/Drawable;

.field private mDialogLayoutResId:I

.field private mDialogMessage:Ljava/lang/CharSequence;

.field private mDialogTitle:Ljava/lang/CharSequence;

.field private mNegativeButtonText:Ljava/lang/CharSequence;

.field private mOnlyDarkTheme:Z

.field private mPositiveButtonText:Ljava/lang/CharSequence;

.field private mWhichButtonClicked:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_dialogPreferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogTitle:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mDialogTitle:Ljava/lang/CharSequence;

    iget-object v1, p0, mDialogTitle:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    invoke-virtual {p0}, getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, mDialogTitle:Ljava/lang/CharSequence;

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_opOnlyDarkTheme:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, mOnlyDarkTheme:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogMessage:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mDialogMessage:Ljava/lang/CharSequence;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogIcon:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mDialogIcon:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_positiveButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mPositiveButtonText:Ljava/lang/CharSequence;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_negativeButtonText:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mNegativeButtonText:Ljava/lang/CharSequence;

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->DialogPreference_android_dialogLayout:I

    iget v2, p0, mDialogLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, mDialogLayoutResId:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private requestInputMethod(Landroid/app/Dialog;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0xf5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const v1, 0x10100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getDialogLayoutResource()I
    .locals 1

    iget v0, p0, mDialogLayoutResId:I

    return v0
.end method

.method public getDialogMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, mDialogMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDialogTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, mDialogTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getNegativeButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, mNegativeButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, mPositiveButtonText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method protected needInputMethod()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onActivityDestroy()V
    .locals 1

    iget-object v0, p0, mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onClick()V
    .locals 1

    iget-object v0, p0, mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, showDialog(Landroid/os/Bundle;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iput p2, p0, mWhichButtonClicked:I

    return-void
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 3

    iget v0, p0, mDialogLayoutResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v2, p0, mDialogLayoutResId:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-virtual {p0}, getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->unregisterOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V

    const/4 v0, 0x0

    iput-object v0, p0, mDialog:Landroid/app/Dialog;

    iget v0, p0, mWhichButtonClicked:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V
    .locals 0

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-boolean v1, v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, showDialog(Landroid/os/Bundle;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/preference/DialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->isDialogShowing:Z

    iget-object v2, p0, mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v1, Lcom/oneplus/lib/preference/DialogPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    return-object v1

    :cond_1
    :goto_0
    return-object v0
.end method

.method public setDialogIcon(I)V
    .locals 1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, mDialogIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDialogLayoutResource(I)V
    .locals 0

    iput p1, p0, mDialogLayoutResId:I

    return-void
.end method

.method public setDialogMessage(I)V
    .locals 1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setDialogMessage(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogMessage(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, mDialogMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setDialogTitle(I)V
    .locals 1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setDialogTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogTitle(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, mDialogTitle:Ljava/lang/CharSequence;

    return-void
.end method

.method public setNegativeButtonText(I)V
    .locals 1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setNegativeButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, mNegativeButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setPositiveButtonText(I)V
    .locals 1

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, setPositiveButtonText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, mPositiveButtonText:Ljava/lang/CharSequence;

    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, p0, mWhichButtonClicked:I

    new-instance v1, Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v2, p0, mOnlyDarkTheme:Z

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setOnlyDarkTheme(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, mDialogTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, mDialogIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2, p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    move-result-object v1

    iput-object v1, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0}, onCreateDialogView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, onBindDialogView(Landroid/view/View;)V

    iget-object v2, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v2, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v3, p0, mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    goto :goto_0

    :cond_0
    iget-object v2, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    iget-object v3, p0, mDialogMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    :goto_0
    iget-object v2, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {p0, v2}, onPrepareDialogBuilder(Lcom/oneplus/lib/app/OPAlertDialog$Builder;)V

    invoke-virtual {p0}, getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->registerOnActivityDestroyListener(Lcom/oneplus/lib/preference/PreferenceManager$OnActivityDestroyListener;)V

    iget-object v2, p0, mBuilder:Lcom/oneplus/lib/app/OPAlertDialog$Builder;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v2

    iput-object v2, p0, mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_1

    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    :cond_1
    invoke-virtual {p0}, needInputMethod()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v2}, requestInputMethod(Landroid/app/Dialog;)V

    :cond_2
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    return-void
.end method
