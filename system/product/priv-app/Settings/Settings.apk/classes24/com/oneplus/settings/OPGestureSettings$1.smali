.class Lcom/oneplus/settings/OPGestureSettings$1;
.super Landroid/database/ContentObserver;
.source "OPGestureSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPGestureSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPGestureSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPGestureSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    invoke-static {}, Lcom/oneplus/settings/OPGestureSettings;->access$000()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-static {v0}, Lcom/oneplus/settings/OPGestureSettings;->access$100(Lcom/oneplus/settings/OPGestureSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/OPGestureSettings;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oem_acc_sensor_rotate_silent"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    iget-object v1, p0, this$0:Lcom/oneplus/settings/OPGestureSettings;

    invoke-static {v1}, Lcom/oneplus/settings/OPGestureSettings;->access$100(Lcom/oneplus/settings/OPGestureSettings;)Landroidx/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method