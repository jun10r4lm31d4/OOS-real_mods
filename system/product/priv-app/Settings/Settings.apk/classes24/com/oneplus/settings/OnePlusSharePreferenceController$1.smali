.class Lcom/oneplus/settings/OnePlusSharePreferenceController$1;
.super Landroid/database/ContentObserver;
.source "OnePlusSharePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OnePlusSharePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OnePlusSharePreferenceController;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OnePlusSharePreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/OnePlusSharePreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/OnePlusSharePreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/OnePlusSharePreferenceController;->access$000(Lcom/oneplus/settings/OnePlusSharePreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OnePlusSharePreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method