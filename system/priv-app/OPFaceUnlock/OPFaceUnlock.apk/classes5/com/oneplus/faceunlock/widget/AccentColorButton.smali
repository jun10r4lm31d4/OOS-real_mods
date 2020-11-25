.class public Lcom/oneplus/faceunlock/widget/AccentColorButton;
.super Landroid/widget/Button;
.source "AccentColorButton.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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
    .locals 8
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    const/4 v7, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    instance-of v5, p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-eqz v5, :cond_0

    check-cast p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {p1}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getAccentColor()I

    move-result v0

    invoke-virtual {p0}, getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v5, v1, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_0

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v4, v7}, Landroid/graphics/drawable/RippleDrawable;->getId(I)I

    move-result v5

    const v6, 0x102002e

    if-ne v5, v6, :cond_1

    invoke-virtual {p0, v0}, setTextColor(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v4, v7}, Landroid/graphics/drawable/RippleDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v5, v3, Landroid/graphics/drawable/InsetDrawable;

    if-eqz v5, :cond_0

    move-object v2, v3

    check-cast v2, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0
.end method
