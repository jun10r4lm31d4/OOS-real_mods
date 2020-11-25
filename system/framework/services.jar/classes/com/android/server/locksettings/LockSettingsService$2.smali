.class Lcom/android/server/locksettings/LockSettingsService$2;
.super Landroid/content/BroadcastReceiver;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ACTION_PACKAGE_DATA_CLEARED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", userId ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LockSettingsService"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2, v1}, Lcom/android/server/locksettings/LockSettingsService;->access$700(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v2}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    iget-object v6, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v6, v7}, Lcom/android/server/locksettings/LockSettingsService;->access$500(Lcom/android/server/locksettings/LockSettingsService;I)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v7, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7}, Lcom/oneplus/android/os/OnePlusParallelAppUtils;->isParallelUser(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v7

    iget-object v8, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v8}, Lcom/android/server/locksettings/LockSettingsService;->access$400(Lcom/android/server/locksettings/LockSettingsService;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-string/jumbo v8, "restore keystore for user"

    invoke-static {v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget-object v8, v8, Lcom/android/server/locksettings/LockSettingsService;->mStorage:Lcom/android/server/locksettings/LockSettingsStorage;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v8, v9}, Lcom/android/server/locksettings/LockSettingsStorage;->removeChildProfileLock(I)V

    iget-object v8, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8, v9}, Lcom/android/server/locksettings/LockSettingsService;->access$800(Lcom/android/server/locksettings/LockSettingsService;I)V

    iget-object v8, p0, this$0:Lcom/android/server/locksettings/LockSettingsService;

    iget v9, v5, Landroid/content/pm/UserInfo;->id:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/android/server/locksettings/LockSettingsService;->tieManagedProfileLockIfNecessary(I[B)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
