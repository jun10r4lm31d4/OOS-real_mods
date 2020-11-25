.class public Lcom/oneplus/settings/widget/OPThemePresetDialogPreference;
.super Lcom/android/settingslib/CustomDialogPreferenceCompat;
.source "OPThemePresetDialogPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;,
        Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;
    }
.end annotation


# static fields
.field private static final THEME_ANDROID_MODE:I = 0x2

.field private static final THEME_DARK_MODE:I = 0x1

.field private static final THEME_LIGHT_MODE:I = 0x0

.field private static final THEME_MCL_MODE:I = 0x3


# instance fields
.field private mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

.field private mThemeColorChecked:Landroid/widget/CheckedTextView;

.field private mThemeDarkChecked:Landroid/widget/CheckedTextView;

.field private mThemeLightChecked:Landroid/widget/CheckedTextView;

.field private mThemeMCLChecked:Landroid/widget/CheckedTextView;

.field private themeChooose:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const v0, 0x7f04012d

    const v1, 0x1010091

    invoke-static {p1, v0, v1}, Landroidx/core/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

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
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomDialogPreferenceCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onBindDialogView(Landroid/view/View;)V

    const v0, 0x7f0a048a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    iget-object v0, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0487

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, mThemeColorChecked:Landroid/widget/CheckedTextView;

    iget-object v0, p0, mThemeColorChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0489

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, mThemeLightChecked:Landroid/widget/CheckedTextView;

    iget-object v0, p0, mThemeLightChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0488

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, mThemeDarkChecked:Landroid/widget/CheckedTextView;

    iget-object v0, p0, mThemeDarkChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, p0}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    const v1, 0x7f121006

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportAVGTheme()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    const v1, 0x7f121125

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportSwTheme()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    const v1, 0x7f12111c

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setText(I)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportCustomeTheme()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentCustomizationTheme(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, mThemeColorChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, mThemeLightChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    iget-object v1, p0, mThemeDarkChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-object v1, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    invoke-virtual {v1, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    :cond_7
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    instance-of v0, p1, Landroid/widget/CheckedTextView;

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    iput v0, p0, themeChooose:I

    iget-object v1, p0, mThemeMCLChecked:Landroid/widget/CheckedTextView;

    if-ne v1, p1, :cond_0

    const/4 v1, 0x3

    iput v1, p0, themeChooose:I

    :cond_0
    iget-object v1, p0, mThemeColorChecked:Landroid/widget/CheckedTextView;

    if-ne v1, p1, :cond_1

    iput v0, p0, themeChooose:I

    :cond_1
    iget-object v0, p0, mThemeLightChecked:Landroid/widget/CheckedTextView;

    if-ne v0, p1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, themeChooose:I

    :cond_2
    iget-object v0, p0, mThemeDarkChecked:Landroid/widget/CheckedTextView;

    if-ne v0, p1, :cond_3

    const/4 v0, 0x1

    iput v0, p0, themeChooose:I

    :cond_3
    iget-object v0, p0, mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

    iget v1, p0, themeChooose:I

    invoke-interface {v0, v1}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;->onDialogClickListener(I)V

    :cond_4
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreferenceCompat;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-virtual {p0}, isPersistent()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, themeChooose:I

    iput v2, v1, Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$SavedState;->value:I

    return-object v1
.end method

.method public setOnOPThemePresetDialogClickListener(Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;)V
    .locals 0

    iput-object p1, p0, mOnOPThemePresetDialogClickListener:Lcom/oneplus/settings/widget/OPThemePresetDialogPreference$OnOPThemePresetDialogClickListener;

    return-void
.end method
