.class Lcom/android/server/NetworkManagementService$Injector;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Injector"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method reset()V
    .locals 7

    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, setDataSaverMode(Z)V

    const/4 v2, 0x3

    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v4, v3, v1

    const/4 v5, 0x2

    aput v5, v3, v4

    aput v2, v3, v5

    move-object v2, v3

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v2, v4

    invoke-virtual {p0, v5, v1}, setFirewallChainState(IZ)V

    iget-object v6, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v6, v5}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    iget-object v1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setDataSaverMode(Z)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->access$1502(Lcom/android/server/NetworkManagementService;Z)Z

    return-void
.end method

.method setFirewallChainState(IZ)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0, p1, p2}, Lcom/android/server/NetworkManagementService;->access$1600(Lcom/android/server/NetworkManagementService;IZ)V

    return-void
.end method

.method setFirewallRule(III)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1, p1}, Lcom/android/server/NetworkManagementService;->access$1800(Lcom/android/server/NetworkManagementService;I)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseIntArray;->put(II)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setUidOnMeteredNetworkList(ZIZ)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$1700(Lcom/android/server/NetworkManagementService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$1900(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, this$0:Lcom/android/server/NetworkManagementService;

    invoke-static {v1}, Lcom/android/server/NetworkManagementService;->access$2000(Lcom/android/server/NetworkManagementService;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
