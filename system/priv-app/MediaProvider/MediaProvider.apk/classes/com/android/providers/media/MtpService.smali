.class public Lcom/android/providers/media/MtpService;
.super Landroid/app/Service;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MtpService$OnServerTerminated;,
        Lcom/android/providers/media/MtpService$ServerHolder;
    }
.end annotation


# static fields
.field private static final LOGD:Z

.field private static final PTP_DIRECTORIES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MtpService"

.field private static sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "MtpService.class"
        }
    .end annotation
.end field


# instance fields
.field private final mBinder:Lcom/android/providers/media/IMtpService$Stub;

.field private mIsPerfLockAcquired:Z

.field private mPerfBoost:Landroid/util/BoostFramework;

.field private mPtpMode:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mStorageEventListener:Landroid/os/storage/StorageEventListener;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUnlocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private mVolumeMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private mVolumes:[Landroid/os/storage/StorageVolume;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->DBG:Z

    sput-boolean v0, LOGD:Z

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, PTP_DIRECTORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mPerfBoost:Landroid/util/BoostFramework;

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPerfLockAcquired:Z

    new-instance v0, Lcom/android/providers/media/MtpService$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$1;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, mStorageEventListener:Landroid/os/storage/StorageEventListener;

    new-instance v0, Lcom/android/providers/media/MtpService$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MtpService$2;-><init>(Lcom/android/providers/media/MtpService;)V

    iput-object v0, p0, mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MtpService;)[Landroid/os/storage/StorageVolume;
    .locals 0

    iget-object p0, p0, mVolumes:[Landroid/os/storage/StorageVolume;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, mVolumeMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/providers/media/MtpService;)Z
    .locals 0

    iget-boolean p0, p0, mUnlocked:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/providers/media/MtpService;)Z
    .locals 0

    iget-boolean p0, p0, mPtpMode:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V
    .locals 0

    invoke-direct {p0, p1}, addStorage(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V
    .locals 0

    invoke-direct {p0, p1}, removeStorage(Landroid/os/storage/StorageVolume;)V

    return-void
.end method

.method static synthetic access$700()Lcom/android/providers/media/MtpService$ServerHolder;
    .locals 1

    sget-object v0, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/providers/media/MtpService$ServerHolder;)Lcom/android/providers/media/MtpService$ServerHolder;
    .locals 0

    sput-object p0, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    return-object p0
.end method

.method private addStorage(Landroid/os/storage/StorageVolume;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding MTP storage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtpService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/providers/media/MtpService;

    monitor-enter v0

    :try_start_0
    sget-object v1, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    if-eqz v1, :cond_0

    sget-object v1, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    iget-object v1, v1, Lcom/android/providers/media/MtpService$ServerHolder;->database:Landroid/mtp/MtpDatabase;

    invoke-virtual {v1, p1}, Landroid/mtp/MtpDatabase;->addStorage(Landroid/os/storage/StorageVolume;)V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, mPerfBoost:Landroid/util/BoostFramework;

    const/4 v0, 0x1

    if-nez p1, :cond_1

    new-instance p1, Landroid/util/BoostFramework;

    invoke-direct {p1, v0}, Landroid/util/BoostFramework;-><init>(Z)V

    iput-object p1, p0, mPerfBoost:Landroid/util/BoostFramework;

    :cond_1
    iget-object p1, p0, mPerfBoost:Landroid/util/BoostFramework;

    if-eqz p1, :cond_2

    iget-boolean v1, p0, mIsPerfLockAcquired:Z

    if-nez v1, :cond_2

    const/16 v1, 0x1086

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, -0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    iput-boolean v0, p0, mIsPerfLockAcquired:Z

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private removeStorage(Landroid/os/storage/StorageVolume;)V
    .locals 1

    iget-boolean v0, p0, mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPerfLockAcquired:Z

    :cond_0
    const-class p0, Lcom/android/providers/media/MtpService;

    monitor-enter p0

    :try_start_0
    sget-object v0, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    if-eqz v0, :cond_1

    sget-object v0, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    iget-object v0, v0, Lcom/android/providers/media/MtpService$ServerHolder;->database:Landroid/mtp/MtpDatabase;

    invoke-virtual {v0, p1}, Landroid/mtp/MtpDatabase;->removeStorage(Landroid/os/storage/StorageVolume;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private declared-synchronized startServer(Landroid/os/storage/StorageVolume;[Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-class v0, Lcom/android/providers/media/MtpService;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v1, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    if-eqz v1, :cond_2

    sget-boolean p1, LOGD:Z

    if-eqz p1, :cond_1

    const-string p1, "MtpService"

    const-string p2, "Cannot launch second MTP server."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting MTP server in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, mPtpMode:Z

    if-eqz v3, :cond_3

    const-string v3, "PTP mode"

    goto :goto_0

    :cond_3
    const-string v3, "MTP mode"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with storage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, mUnlocked:Z

    if-eqz v3, :cond_4

    const-string v3, " unlocked"

    goto :goto_1

    :cond_4
    const-string v3, ""

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " as user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/mtp/MtpDatabase;

    invoke-direct {v1, p0, p2}, Landroid/mtp/MtpDatabase;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    const-string p2, "usb"

    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    :try_start_4
    iget-boolean v3, p0, mPtpMode:Z

    if-eqz v3, :cond_5

    const-wide/16 v3, 0x10

    goto :goto_2

    :cond_5
    const-wide/16 v3, 0x4

    :goto_2
    invoke-interface {p2, v3, v4}, Landroid/hardware/usb/IUsbManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_0
    move-exception p2

    :try_start_5
    const-string v3, "MtpService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error communicating with UsbManager: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p2, v2

    :goto_3
    if-nez p2, :cond_6

    const-string p2, "MtpService"

    const-string v3, "Couldn\'t get control FD!"

    invoke-static {p2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v2

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p2

    move-object v5, p2

    :goto_4
    new-instance p2, Landroid/mtp/MtpServer;

    iget-boolean v6, p0, mPtpMode:Z

    new-instance v7, Lcom/android/providers/media/MtpService$OnServerTerminated;

    invoke-direct {v7, p0, v2}, Lcom/android/providers/media/MtpService$OnServerTerminated;-><init>(Lcom/android/providers/media/MtpService;Lcom/android/providers/media/MtpService$1;)V

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v10, "1.0"

    move-object v3, p2

    move-object v4, v1

    invoke-direct/range {v3 .. v10}, Landroid/mtp/MtpServer;-><init>(Landroid/mtp/MtpDatabase;Ljava/io/FileDescriptor;ZLjava/lang/Runnable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    new-instance v2, Lcom/android/providers/media/MtpService$ServerHolder;

    invoke-direct {v2, p2, v1}, Lcom/android/providers/media/MtpService$ServerHolder;-><init>(Landroid/mtp/MtpServer;Landroid/mtp/MtpDatabase;)V

    sput-object v2, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    iget-boolean v1, p0, mUnlocked:Z

    if-eqz v1, :cond_8

    iget-boolean v1, p0, mPtpMode:Z

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, addStorage(Landroid/os/storage/StorageVolume;)V

    goto :goto_6

    :cond_7
    iget-object p1, p0, mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageVolume;

    invoke-direct {p0, v1}, addStorage(Landroid/os/storage/StorageVolume;)V

    goto :goto_5

    :cond_8
    :goto_6
    invoke-virtual {p2}, Landroid/mtp/MtpServer;->start()V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, mBinder:Lcom/android/providers/media/IMtpService$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Service;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeList(II)[Landroid/os/storage/StorageVolume;

    move-result-object v0

    iput-object v0, p0, mVolumes:[Landroid/os/storage/StorageVolume;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, mVolumeMap:Ljava/util/HashMap;

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    iget-object p0, p0, mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, p0}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v1, p0, mStorageEventListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->unregisterListener(Landroid/os/storage/StorageEventListener;)V

    iget-boolean v0, p0, mIsPerfLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/util/BoostFramework;->perfLockRelease()I

    const/4 v0, 0x0

    iput-boolean v0, p0, mIsPerfLockAcquired:Z

    :cond_0
    const-class p0, Lcom/android/providers/media/MtpService;

    monitor-enter p0

    :try_start_0
    sget-object v0, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    if-eqz v0, :cond_1

    sget-object v0, sServerHolder:Lcom/android/providers/media/MtpService$ServerHolder;

    iget-object v0, v0, Lcom/android/providers/media/MtpService$ServerHolder;->database:Landroid/mtp/MtpDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/mtp/MtpDatabase;->setServer(Landroid/mtp/MtpServer;)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized onStartCommand(Landroid/content/Intent;II)I
    .locals 4

    monitor-enter p0

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    const-string p3, "unlocked"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, mUnlocked:Z

    const-string p3, "ptp"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iput-boolean p3, p0, mPtpMode:Z

    sget-boolean p3, LOGD:Z

    if-eqz p3, :cond_2

    const-string p3, "MtpService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartCommand intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mUnlocked="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, mUnlocked:Z

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-boolean p1, LOGD:Z

    if-eqz p1, :cond_1

    const-string p1, "MtpService"

    const-string p3, "onStartCommand: intent is null"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p2, p0, mUnlocked:Z

    iput-boolean p2, p0, mPtpMode:Z

    :cond_2
    :goto_0
    iget-object p1, p0, mVolumes:[Landroid/os/storage/StorageVolume;

    array-length p3, p1

    move v0, p2

    :goto_1
    if-ge v0, p3, :cond_4

    aget-object v1, p1, v0

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, mVolumeMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    iget-boolean p3, p0, mPtpMode:Z

    if-eqz p3, :cond_6

    new-instance p1, Landroid/os/Environment$UserEnvironment;

    invoke-virtual {p0}, Landroid/app/Service;->getUserId()I

    move-result p3

    invoke-direct {p1, p3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    sget-object p3, PTP_DIRECTORIES:[Ljava/lang/String;

    array-length p3, p3

    new-array v0, p3, [Ljava/lang/String;

    move v1, p2

    :goto_2
    if-ge v1, p3, :cond_5

    sget-object v2, PTP_DIRECTORIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/os/Environment$UserEnvironment;->buildExternalStoragePublicDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move-object p1, v0

    :cond_6
    iget-object p2, p0, mVolumes:[Landroid/os/storage/StorageVolume;

    invoke-static {p2}, Landroid/os/storage/StorageManager;->getPrimaryVolume([Landroid/os/storage/StorageVolume;)Landroid/os/storage/StorageVolume;

    move-result-object p2

    invoke-direct {p0, p2, p1}, startServer(Landroid/os/storage/StorageVolume;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x3

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
