.class final Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Connection"
.end annotation


# instance fields
.field private final mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

.field private final mProvider:Landroid/media/IRemoteDisplayProvider;

.field final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    new-instance p1, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-direct {p1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    iput-object p1, p0, mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    return-void
.end method


# virtual methods
.method public adjustVolume(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/IRemoteDisplayProvider;->adjustVolume(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to adjust display volume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public binderDied()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;

    invoke-direct {v1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$2;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public connect(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0, p1}, Landroid/media/IRemoteDisplayProvider;->connect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to connect to display."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public disconnect(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0, p1}, Landroid/media/IRemoteDisplayProvider;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to disconnect from display."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispose()V
    .locals 2

    iget-object v0, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-virtual {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->dispose()V

    return-void
.end method

.method postStateChanged(Landroid/media/RemoteDisplayState;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$3;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;Landroid/media/RemoteDisplayState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public register()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v1}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v1, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    iget-object v2, p0, mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    invoke-interface {v1, v2}, Landroid/media/IRemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    iget-object v1, p0, this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->access$400(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;

    invoke-direct {v2, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection$1;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, binderDied()V

    return v0
.end method

.method public setDiscoveryMode(I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0, p1}, Landroid/media/IRemoteDisplayProvider;->setDiscoveryMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to set discovery mode."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setVolume(Ljava/lang/String;I)V
    .locals 3

    :try_start_0
    iget-object v0, p0, mProvider:Landroid/media/IRemoteDisplayProvider;

    invoke-interface {v0, p1, p2}, Landroid/media/IRemoteDisplayProvider;->setVolume(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteDisplayProvider"

    const-string v2, "Failed to deliver request to set display volume."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
