.class public Lcom/oneplus/settings/others/OPExperienceImprovementFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPExperienceImprovementFragment.java"


# static fields
.field private static final KEY_BUILT_IN_APP_UPDATES:Ljava/lang/String; = "built_in_app_updates"

.field private static final KEY_ONEPLUS_SERVICE_MESSAGING:Ljava/lang/String; = "oneplus_service_messaging"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TAG:Ljava/lang/String; = "OPExperienceImprovementFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/others/OPExperienceImprovementFragment$1;

    invoke-direct {v0}, Lcom/oneplus/settings/others/OPExperienceImprovementFragment$1;-><init>()V

    sput-object v0, SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;

    invoke-direct {v1, p1}, Lcom/oneplus/settings/others/OPReceiveNotificationsSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;

    invoke-direct {v2, p1}, Lcom/oneplus/settings/others/OPUserExperienceSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;

    invoke-direct {v3, p1}, Lcom/oneplus/settings/others/OPSystemStabilitySwitchPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v4, Lcom/oneplus/settings/others/OPSplashScreeenInfoServiceSwitchPreferenceController;

    invoke-direct {v4, p1}, Lcom/oneplus/settings/others/OPSplashScreeenInfoServiceSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v5, Lcom/oneplus/settings/others/OPServiceMessageSwitchPreferenceController;

    invoke-direct {v5, p1}, Lcom/oneplus/settings/others/OPServiceMessageSwitchPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/oneplus/settings/others/OPServiceAppUpdatePreferenceController;

    invoke-direct {v6, p1}, Lcom/oneplus/settings/others/OPServiceAppUpdatePreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v7, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;

    invoke-direct {v7, p1}, Lcom/oneplus/settings/utils/OPPreferenceDividerLine;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-virtual {p0}, getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPExperienceImprovementFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160098

    return v0
.end method
