.class public Lcom/oneplus/settings/utils/OPColseClipBoard;
.super Landroid/app/Activity;
.source "OPColseClipBoard.java"


# static fields
.field private static final CLIPBOARD_PACKAGENAME:Ljava/lang/String; = "com.oneplus.clipboard"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, getCallingPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oneplus.clipboard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "oem_quick_clipboard"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-virtual {p0}, finish()V

    return-void
.end method
