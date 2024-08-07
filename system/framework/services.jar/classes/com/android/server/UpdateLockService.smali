.class public Lcom/android/server/UpdateLockService;
.super Landroid/os/IUpdateLock$Stub;
.source "UpdateLockService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/UpdateLockService$LockWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_LOCK"

.field static final TAG:Ljava/lang/String; = "UpdateLockService"


# instance fields
.field mContext:Landroid/content/Context;

.field mLocks:Lcom/android/server/UpdateLockService$LockWatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/IUpdateLock$Stub;-><init>()V

    iput-object p1, p0, mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/UpdateLockService$LockWatcher;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    const-string v2, "UpdateLocks"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/UpdateLockService$LockWatcher;-><init>(Lcom/android/server/UpdateLockService;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v0, p0, mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, sendLockChangedBroadcast(Z)V

    return-void
.end method

.method private makeTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public acquireUpdateLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_LOCK"

    const-string v2, "acquireUpdateLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    invoke-direct {p0, p2}, makeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/UpdateLockService$LockWatcher;->acquire(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "UpdateLockService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    invoke-virtual {v0, p2}, Lcom/android/server/UpdateLockService$LockWatcher;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public releaseUpdateLock(Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_LOCK"

    const-string/jumbo v2, "releaseUpdateLock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, mLocks:Lcom/android/server/UpdateLockService$LockWatcher;

    invoke-virtual {v0, p1}, Lcom/android/server/UpdateLockService$LockWatcher;->release(Landroid/os/IBinder;)V

    return-void
.end method

.method sendLockChangedBroadcast(Z)V
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.os.UpdateLock.UPDATE_LOCK_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "nowisconvenient"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
