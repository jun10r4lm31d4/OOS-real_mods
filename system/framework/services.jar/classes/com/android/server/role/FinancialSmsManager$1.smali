.class Lcom/android/server/role/FinancialSmsManager$1;
.super Ljava/lang/Object;
.source "FinancialSmsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/role/FinancialSmsManager;->connectAndRun(Lcom/android/server/role/FinancialSmsManager$Command;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/FinancialSmsManager;


# direct methods
.method constructor <init>(Lcom/android/server/role/FinancialSmsManager;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    iget-object v0, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {p2}, Landroid/service/sms/IFinancialSmsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/sms/IFinancialSmsService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    iget-object v1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v1}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v1}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v3}, Lcom/android/server/role/FinancialSmsManager;->access$200(Lcom/android/server/role/FinancialSmsManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/role/FinancialSmsManager$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v4}, Lcom/android/server/role/FinancialSmsManager;->access$100(Lcom/android/server/role/FinancialSmsManager;)Landroid/service/sms/IFinancialSmsService;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/server/role/FinancialSmsManager$Command;->run(Landroid/service/sms/IFinancialSmsService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "FinancialSmsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/role/FinancialSmsManager;->access$202(Lcom/android/server/role/FinancialSmsManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    invoke-static {v0}, Lcom/android/server/role/FinancialSmsManager;->access$000(Lcom/android/server/role/FinancialSmsManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/role/FinancialSmsManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/role/FinancialSmsManager;->access$102(Lcom/android/server/role/FinancialSmsManager;Landroid/service/sms/IFinancialSmsService;)Landroid/service/sms/IFinancialSmsService;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
