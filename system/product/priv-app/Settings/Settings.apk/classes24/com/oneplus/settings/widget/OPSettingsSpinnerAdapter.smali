.class public Lcom/oneplus/settings/widget/OPSettingsSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "OPSettingsSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0d0233

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const v0, 0x1090009

    invoke-virtual {p0, v0}, setDropDownViewResource(I)V

    return-void
.end method
