.class public Lcom/oneplus/settings/ringtone/PreferenceHeaderMargin;
.super Landroid/preference/Preference;
.source "PreferenceHeaderMargin.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-direct {p0}, initViews()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, initViews()V

    return-void
.end method

.method private initViews()V
    .locals 1

    const v0, 0x7f0d01f9

    invoke-virtual {p0, v0}, setLayoutResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setEnabled(Z)V

    return-void
.end method
