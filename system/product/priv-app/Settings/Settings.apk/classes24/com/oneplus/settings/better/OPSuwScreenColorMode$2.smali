.class Lcom/oneplus/settings/better/OPSuwScreenColorMode$2;
.super Landroid/database/ContentObserver;
.source "OPSuwScreenColorMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPSuwScreenColorMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPSuwScreenColorMode;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    iget-object v0, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "night_display_activated"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "reading_mode_status_manual"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    move v1, v2

    :cond_2
    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$200(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$300(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$400(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$500(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$600(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$700(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$800(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/RadioButtonPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$900(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/android/settings/ui/OPSuwPreferenceCategory;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/settings/ui/OPSuwPreferenceCategory;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1000(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPSuwSeekBarPreference;->setEnabled(Z)V

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v2

    if-eqz v2, :cond_6

    if-nez v0, :cond_3

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v2

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v5, 0x7f120f3f

    invoke-virtual {v4, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    if-nez v3, :cond_4

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v2

    sget-object v4, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v5, 0x7f120f3c

    invoke-virtual {v4, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/ui/OPScreenColorModeSummary;->setSummary(Ljava/lang/CharSequence;)V

    :cond_4
    if-nez v1, :cond_5

    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_2

    :cond_5
    iget-object v2, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, this$0:Lcom/oneplus/settings/better/OPSuwScreenColorMode;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPSuwScreenColorMode;->access$1100(Lcom/oneplus/settings/better/OPSuwScreenColorMode;)Lcom/oneplus/settings/ui/OPScreenColorModeSummary;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_6
    :goto_2
    return-void
.end method
