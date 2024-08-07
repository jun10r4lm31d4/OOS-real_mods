.class public Lcom/android/server/TestNetworkService$TestNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "TestNetworkService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TestNetworkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestNetworkAgent"
.end annotation


# static fields
.field private static final NETWORK_SCORE:I = 0x1


# instance fields
.field private mBinder:Landroid/os/IBinder;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mBinderLock"
        }
    .end annotation
.end field

.field private final mBinderLock:Ljava/lang/Object;

.field private final mLp:Landroid/net/LinkProperties;

.field private final mNc:Landroid/net/NetworkCapabilities;

.field private final mNi:Landroid/net/NetworkInfo;

.field private final mUid:I

.field final synthetic this$0:Lcom/android/server/TestNetworkService;


# direct methods
.method private constructor <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v9, p0

    move-object v10, p1

    iput-object v10, v9, this$0:Lcom/android/server/TestNetworkService;

    const-string v4, "TEST_NETWORK"

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v1 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;I)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v9, mBinderLock:Ljava/lang/Object;

    move/from16 v1, p7

    iput v1, v9, mUid:I

    move-object v2, p4

    iput-object v2, v9, mNi:Landroid/net/NetworkInfo;

    move-object/from16 v3, p5

    iput-object v3, v9, mNc:Landroid/net/NetworkCapabilities;

    move-object/from16 v4, p6

    iput-object v4, v9, mLp:Landroid/net/LinkProperties;

    iget-object v5, v9, mBinderLock:Ljava/lang/Object;

    monitor-enter v5

    move-object/from16 v6, p8

    :try_start_0
    iput-object v6, v9, mBinder:Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v9, mBinder:Landroid/os/IBinder;

    const/4 v7, 0x0

    invoke-interface {v0, p0, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v5

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, binderDied()V

    nop

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method synthetic constructor <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;Lcom/android/server/TestNetworkService$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct/range {p0 .. p8}, <init>(Lcom/android/server/TestNetworkService;Landroid/os/Looper;Landroid/content/Context;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/TestNetworkService$TestNetworkAgent;)I
    .locals 1

    iget v0, p0, mUid:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/TestNetworkService$TestNetworkAgent;)V
    .locals 0

    invoke-direct {p0}, teardown()V

    return-void
.end method

.method private teardown()V
    .locals 4

    iget-object v0, p0, mNi:Landroid/net/NetworkInfo;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/net/NetworkInfo;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, mNi:Landroid/net/NetworkInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    iget-object v0, p0, mNi:Landroid/net/NetworkInfo;

    invoke-virtual {p0, v0}, sendNetworkInfo(Landroid/net/NetworkInfo;)V

    iget-object v0, p0, mBinderLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v3, p0, mBinder:Landroid/os/IBinder;

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p0, mBinder:Landroid/os/IBinder;

    invoke-interface {v3, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v2, p0, mBinder:Landroid/os/IBinder;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, this$0:Lcom/android/server/TestNetworkService;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, this$0:Lcom/android/server/TestNetworkService;

    invoke-static {v0}, Lcom/android/server/TestNetworkService;->access$000(Lcom/android/server/TestNetworkService;)Landroid/util/SparseArray;

    move-result-object v0

    iget v2, p0, netId:I

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    invoke-direct {p0}, teardown()V

    return-void
.end method

.method protected unwanted()V
    .locals 0

    invoke-direct {p0}, teardown()V

    return-void
.end method
