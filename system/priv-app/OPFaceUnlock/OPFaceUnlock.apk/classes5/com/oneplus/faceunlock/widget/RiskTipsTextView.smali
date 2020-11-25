.class public Lcom/oneplus/faceunlock/widget/RiskTipsTextView;
.super Landroid/widget/TextView;
.source "RiskTipsTextView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v2, 0x7f020022

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    instance-of v2, p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getThemeMode()Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;

    move-result-object v1

    sget-object v2, Lcom/oneplus/faceunlock/widget/RiskTipsTextView$1;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$ThemeMode:[I

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity$ThemeMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    invoke-virtual {p0, v0}, setTextColor(I)V

    return-void

    :pswitch_0
    const v2, 0x7f020021

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_1
    const v2, 0x7f020023

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
