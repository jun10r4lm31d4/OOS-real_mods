.class Lcom/android/server/content/SyncManager$6;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x2710

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$900(Lcom/android/server/content/SyncManager;I)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$1000(Lcom/android/server/content/SyncManager;I)V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, this$0:Lcom/android/server/content/SyncManager;

    invoke-static {v1, v2}, Lcom/android/server/content/SyncManager;->access$1100(Lcom/android/server/content/SyncManager;I)V

    :cond_3
    :goto_0
    return-void
.end method
