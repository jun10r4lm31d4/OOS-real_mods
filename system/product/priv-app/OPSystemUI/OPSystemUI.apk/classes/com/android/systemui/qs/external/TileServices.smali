.class public Lcom/android/systemui/qs/external/TileServices;
.super Landroid/service/quicksettings/IQSService$Stub;
.source "TileServices.java"


# static fields
.field private static final SERVICE_SORT:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mHost:Lcom/android/systemui/qs/QSTileHost;

.field private final mMainHandler:Landroid/os/Handler;

.field private mMaxBound:I

.field private final mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

.field private final mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/systemui/qs/external/CustomTile;",
            "Lcom/android/systemui/qs/external/TileServiceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mTiles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field

.field private final mTokenMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/systemui/qs/external/CustomTile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/external/TileServices$3;

    invoke-direct {v0}, Lcom/android/systemui/qs/external/TileServices$3;-><init>()V

    sput-object v0, SERVICE_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTileHost;Landroid/os/Looper;)V
    .locals 3

    invoke-direct {p0}, Landroid/service/quicksettings/IQSService$Stub;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mServices:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mTiles:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mTokenMap:Landroid/util/ArrayMap;

    const/16 v0, 0xa

    iput v0, p0, mMaxBound:I

    new-instance v0, Lcom/android/systemui/qs/external/TileServices$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServices$2;-><init>(Lcom/android/systemui/qs/external/TileServices;)V

    iput-object v0, p0, mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    iget-object p1, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSTileHost;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, mContext:Landroid/content/Context;

    iget-object p1, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mRequestListeningReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.service.quicksettings.action.REQUEST_LISTENING"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/qs/external/TileServices;)Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    iget-object p0, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, requestListening(Landroid/content/ComponentName;)V

    return-void
.end method

.method private getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 1

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, mTiles:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTile;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;
    .locals 1

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTile;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private requestListening(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, getTileForComponent(Landroid/content/ComponentName;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "TileServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t find tile for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isActiveTile()Z

    move-result p1

    if-nez p1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindRequested(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->getTileService()Landroid/service/quicksettings/IQSTileService;

    move-result-object p0

    invoke-interface {p0}, Landroid/service/quicksettings/IQSTileService;->onStartListening()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Component outside caller\'s uid"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public freeService(Lcom/android/systemui/qs/external/CustomTile;Lcom/android/systemui/qs/external/TileServiceManager;)V
    .locals 2

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->handleDestroy()V

    iget-object v1, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, mTiles:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$m2qCzd8BVbBUzSnClFn7o_chF7k;-><init>(Lcom/android/systemui/qs/external/TileServices;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getHost()Lcom/android/systemui/qs/QSTileHost;
    .locals 0

    iget-object p0, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    return-object p0
.end method

.method public getTile(Landroid/os/IBinder;)Landroid/service/quicksettings/Tile;
    .locals 0

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTileWrapper(Lcom/android/systemui/qs/external/CustomTile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .locals 4

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;

    move-result-object v1

    iget-object v2, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, mTiles:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, mTokenMap:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->getToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lcom/android/systemui/qs/external/TileServiceManager;->startLifecycleManagerAndAddTile()V

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public isLocked()Z
    .locals 0

    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    return p0
.end method

.method public isSecure()Z
    .locals 1

    const-class p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;->isShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$freeService$0$TileServices(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->getIconController()Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->removeAllIconsForSlot(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreateTileService(Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)Lcom/android/systemui/qs/external/TileServiceManager;
    .locals 2

    new-instance v0, Lcom/android/systemui/qs/external/TileServiceManager;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/systemui/qs/external/TileServiceManager;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/os/Handler;Landroid/content/ComponentName;Landroid/service/quicksettings/Tile;)V

    return-object v0
.end method

.method public onDialogHidden(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    iget-object p0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->onDialogHidden()V

    :cond_0
    return-void
.end method

.method public onShowDialog(Landroid/os/IBinder;)V
    .locals 1

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->onDialogShown()V

    iget-object v0, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSTileHost;->forceCollapsePanels()V

    iget-object p0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/external/TileServiceManager;->setShowingDialog(Z)V

    :cond_0
    return-void
.end method

.method public onStartActivity(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    iget-object p0, p0, mHost:Lcom/android/systemui/qs/QSTileHost;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHost;->forceCollapsePanels()V

    :cond_0
    return-void
.end method

.method public onStartSuccessful(Landroid/os/IBinder;)V
    .locals 3

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isLifecycleStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "TileServices"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TileServiceManager not started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public recalculateBindAllowance()V
    .locals 7

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, mMaxBound:I

    const/4 v3, 0x0

    if-le v0, v2, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->calculateBindPriority(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, SERVICE_SORT:Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    move v2, v3

    :goto_1
    iget v4, p0, mMaxBound:I

    if-ge v2, v4, :cond_2

    if-ge v2, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/qs/external/TileServiceManager;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v2, v0, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/external/TileServiceManager;->setBindAllowed(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public startUnlockAndRun(Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->startUnlockAndRun()V

    :cond_0
    return-void
.end method

.method public updateQsTile(Landroid/service/quicksettings/Tile;Landroid/os/IBinder;)V
    .locals 3

    invoke-direct {p0, p2}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-direct {p0, p2}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    iget-object v0, p0, mServices:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, mServices:Landroid/util/ArrayMap;

    invoke-virtual {p0, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/TileServiceManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->isLifecycleStarted()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/TileServiceManager;->clearPendingBind()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/qs/external/TileServiceManager;->setLastUpdate(J)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, p1}, Lcom/android/systemui/qs/external/CustomTile;->updateState(Landroid/service/quicksettings/Tile;)V

    invoke-virtual {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState()V

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    const-string p0, "TileServices"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TileServiceManager not started for "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method

.method public updateStatusIcon(Landroid/os/IBinder;Landroid/graphics/drawable/Icon;Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0, p1}, getTileForToken(Landroid/os/IBinder;)Lcom/android/systemui/qs/external/CustomTile;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-direct {p0, p1}, verifyCaller(Lcom/android/systemui/qs/external/CustomTile;)V

    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/qs/external/CustomTile;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/service/quicksettings/IQSService$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    new-instance v7, Lcom/android/internal/statusbar/StatusBarIcon;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Landroid/os/UserHandle;Ljava/lang/String;Landroid/graphics/drawable/Icon;IILjava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    :goto_0
    iget-object p2, p0, mMainHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/systemui/qs/external/TileServices$1;

    invoke-direct {p3, p0, p1, v7}, Lcom/android/systemui/qs/external/TileServices$1;-><init>(Lcom/android/systemui/qs/external/TileServices;Landroid/content/ComponentName;Lcom/android/internal/statusbar/StatusBarIcon;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
