.class public Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppBgOptimizeBridge.java"


# static fields
.field public static final FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final NOT_SHOWN_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_SHOWN_PACKAGES:[Ljava/lang/String;

.field private static mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "com.oneplus.card"

    const-string v1, "com.oneplus.cloud"

    const-string v2, "com.oneplus.appupgrader"

    const-string v3, "net.oneplus.launcher"

    const-string v4, "com.oneplus.dirac.simplemanager"

    const-string v5, "com.oneplus.soundrecorder"

    const-string v6, "com.oneplus.sound.tuner"

    const-string v7, "com.oneplus.soundrecorder"

    const-string v8, "com.android.dialer"

    const-string v9, "com.oneplus.mms"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, NOT_SHOWN_PACKAGES:[Ljava/lang/String;

    sget-object v0, NOT_SHOWN_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, NOT_SHOWN_LIST:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$1;-><init>()V

    sput-object v0, FILTER_APP_BG_All:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;

    invoke-direct {v0}, Lcom/oneplus/settings/backgroundoptimize/AppBgOptimizeBridge$2;-><init>()V

    sput-object v0, FILTER_APP_BG_NOT_OPTIMIZE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 1

    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getInstance(Landroid/content/Context;)Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    move-result-object v0

    iput-object v0, p0, mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    sput-object v0, mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .locals 1

    sget-object v0, mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-object v0
.end method

.method public static needShown(Ljava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)Z
    .locals 2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isMultiAppUser()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, NOT_SHOWN_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1, p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 6

    iget-object v0, p0, mAppSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAllAppControlModesMap(I)Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;

    iget-object v1, p0, mManager:Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/settings/backgroundoptimize/BgOActivityManager;->getAppControlMode(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, p2, v2, v1}, Lcom/oneplus/settings/backgroundoptimize/AppControlMode;-><init>(Ljava/lang/String;II)V

    iput-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    return-void
.end method
