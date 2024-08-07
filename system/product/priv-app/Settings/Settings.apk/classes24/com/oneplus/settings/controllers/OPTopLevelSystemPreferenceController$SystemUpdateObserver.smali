.class Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController$SystemUpdateObserver;
.super Landroid/database/ContentObserver;
.source "OPTopLevelSystemPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SystemUpdateObserver"
.end annotation


# static fields
.field public static final HAS_NEW_VERSION_TO_UPDATE:Ljava/lang/String; = "has_new_version_to_update"


# instance fields
.field private final SYSTEM_UPDATE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    nop

    const-string p1, "has_new_version_to_update"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, SYSTEM_UPDATE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;

    iget-object v1, v0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;

    iget-object v1, v0, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->mUpdatePreference:Lcom/oneplus/settings/system/OPSystemUpdatePreference;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public startObserving()V
    .locals 4

    iget-object v0, p0, this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, SYSTEM_UPDATE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public stopObserving()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;

    invoke-static {v0}, Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;->access$000(Lcom/oneplus/settings/controllers/OPTopLevelSystemPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
