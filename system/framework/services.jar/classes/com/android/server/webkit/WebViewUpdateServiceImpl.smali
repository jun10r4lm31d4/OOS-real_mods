.class public Lcom/android/server/webkit/WebViewUpdateServiceImpl;
.super Ljava/lang/Object;
.source "WebViewUpdateServiceImpl.java"


# static fields
.field private static final MULTIPROCESS_SETTING_OFF_VALUE:I = -0x80000000

.field private static final MULTIPROCESS_SETTING_ON_VALUE:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSystemInterface:Lcom/android/server/webkit/SystemInterface;

.field private mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/webkit/WebViewUpdateServiceImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mContext:Landroid/content/Context;

    iput-object p2, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    new-instance v0, Lcom/android/server/webkit/WebViewUpdater;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-direct {v0, v1, v2}, Lcom/android/server/webkit/WebViewUpdater;-><init>(Landroid/content/Context;Lcom/android/server/webkit/SystemInterface;)V

    iput-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    return-void
.end method

.method private static getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    iget-boolean v3, v2, Landroid/webkit/WebViewProviderInfo;->isFallback:Z

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleUserChange()V
    .locals 2

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/webkit/WebViewUpdater;->updateCurrentWebViewPackage(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    return-void
.end method

.method private migrateFallbackStateOnBoot()V
    .locals 6

    iget-object v0, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    invoke-static {v0}, getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "One-time migration: enabling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "Skipping one-time migration: no fallback provider"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v2, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/server/webkit/SystemInterface;->enableFallbackLogic(Z)V

    return-void
.end method


# virtual methods
.method changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdater;->changeProviderAndSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method dumpState(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "Current WebView Update Service state"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v2}, Lcom/android/server/webkit/SystemInterface;->isFallbackLogicEnabled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "  Fallback logic enabled: %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, isMultiProcessEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "  Multiprocess enabled: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1}, Lcom/android/server/webkit/WebViewUpdater;->dumpState(Ljava/io/PrintWriter;)V

    return-void
.end method

.method enableMultiProcess(Z)V
    .locals 4

    invoke-virtual {p0}, getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v1, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, p0, mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    const v3, 0x7fffffff

    goto :goto_0

    :cond_0
    const/high16 v3, -0x80000000

    :goto_0
    invoke-interface {v1, v2, v3}, Lcom/android/server/webkit/SystemInterface;->setMultiProcessSetting(Landroid/content/Context;I)V

    iget-object v1, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1, p1}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    if-eqz v0, :cond_1

    iget-object v1, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/webkit/SystemInterface;->killPackageDependents(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    return-object v0
.end method

.method getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->getValidWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;
    .locals 1

    iget-object v0, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    return-object v0
.end method

.method handleNewUser(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, handleUserChange()V

    return-void
.end method

.method handleUserRemoved(I)V
    .locals 0

    invoke-direct {p0}, handleUserChange()V

    return-void
.end method

.method isMultiProcessEnabled()Z
    .locals 4

    iget-object v0, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/webkit/SystemInterface;->getMultiProcessSetting(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1}, Lcom/android/server/webkit/SystemInterface;->isMultiProcessDefaultEnabled()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/high16 v1, -0x80000000

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    const v1, 0x7fffffff

    if-lt v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    return v2
.end method

.method notifyRelroCreationCompleted()V
    .locals 1

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->notifyRelroCreationCompleted()V

    return-void
.end method

.method packageStateChanged(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/webkit/WebViewUpdater;->packageStateChanged(Ljava/lang/String;I)V

    return-void
.end method

.method prepareWebViewInSystemServer()V
    .locals 6

    invoke-direct {p0}, migrateFallbackStateOnBoot()V

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->prepareWebViewInSystemServer()V

    invoke-virtual {p0}, getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->getWebViewPackages()[Landroid/webkit/WebViewProviderInfo;

    move-result-object v0

    invoke-static {v0}, getFallbackProvider([Landroid/webkit/WebViewProviderInfo;)Landroid/webkit/WebViewProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v2, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No valid provider, trying to enable "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, v1, Landroid/webkit/WebViewProviderInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-interface {v2, v3, v4, v5}, Lcom/android/server/webkit/SystemInterface;->enablePackageForAllUsers(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    sget-object v2, TAG:Ljava/lang/String;

    const-string v3, "No valid provider and no fallback available."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-virtual {p0}, isMultiProcessEnabled()Z

    move-result v0

    iget-object v1, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v1, v0}, Lcom/android/server/webkit/SystemInterface;->notifyZygote(Z)V

    if-eqz v0, :cond_2

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/webkit/-$$Lambda$lAUGMGZZth095wGxrAtUYbmlIJY;

    invoke-direct {v2, p0}, Lcom/android/server/webkit/-$$Lambda$lAUGMGZZth095wGxrAtUYbmlIJY;-><init>(Lcom/android/server/webkit/WebViewUpdateServiceImpl;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method startZygoteWhenReady()V
    .locals 1

    invoke-virtual {p0}, waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    iget-object v0, p0, mSystemInterface:Lcom/android/server/webkit/SystemInterface;

    invoke-interface {v0}, Lcom/android/server/webkit/SystemInterface;->ensureZygoteStarted()V

    return-void
.end method

.method waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;
    .locals 1

    iget-object v0, p0, mWebViewUpdater:Lcom/android/server/webkit/WebViewUpdater;

    invoke-virtual {v0}, Lcom/android/server/webkit/WebViewUpdater;->waitForAndGetProvider()Landroid/webkit/WebViewProviderResponse;

    move-result-object v0

    return-object v0
.end method
