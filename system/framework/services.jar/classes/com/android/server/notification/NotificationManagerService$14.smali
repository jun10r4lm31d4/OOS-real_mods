.class Lcom/android/server/notification/NotificationManagerService$14;
.super Ljava/lang/Thread;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/NotificationManagerService;->playInCallNotification()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingtonePlayer()Landroid/media/IRingtonePlayer;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$9500(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$9500(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/media/IRingtonePlayer;->stop(Landroid/os/IBinder;)V

    :cond_0
    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    new-instance v4, Landroid/os/Binder;

    invoke-direct {v4}, Landroid/os/Binder;-><init>()V

    invoke-static {v3, v4}, Lcom/android/server/notification/NotificationManagerService;->access$9502(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Binder;)Landroid/os/Binder;

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$9500(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/Binder;

    move-result-object v4

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$9600(Lcom/android/server/notification/NotificationManagerService;)Landroid/net/Uri;

    move-result-object v5

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$9700(Lcom/android/server/notification/NotificationManagerService;)Landroid/media/AudioAttributes;

    move-result-object v6

    iget-object v3, p0, this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->access$9800(Lcom/android/server/notification/NotificationManagerService;)F

    move-result v7

    const/4 v8, 0x0

    move-object v3, v2

    invoke-interface/range {v3 .. v8}, Landroid/media/IRingtonePlayer;->play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void
.end method
