.class Lcom/android/server/pm/UserManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "UserManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/pm/UserManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onReceive$0$UserManagerService$1(ILandroid/content/IntentSender;)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/pm/UserManagerService;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, p1, v1, p2, v2}, Lcom/android/server/pm/UserManagerService;->access$000(Lcom/android/server/pm/UserManagerService;IZLandroid/content/IntentSender;Ljava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.server.pm.DISABLE_QUIET_MODE_AFTER_UNLOCK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/IntentSender;

    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/server/pm/-$$Lambda$UserManagerService$1$DQ_02g7kZ7QrJXO6aCATwE6DYCE;-><init>(Lcom/android/server/pm/UserManagerService$1;ILandroid/content/IntentSender;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
