.class Lcom/android/server/pm/UserManagerService$2;
.super Ljava/lang/Object;
.source "UserManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/UserManagerService;->updateUserRestrictionsInternalLR(Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/UserManagerService;

.field final synthetic val$effective:Landroid/os/Bundle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/UserManagerService;Landroid/os/Bundle;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/pm/UserManagerService;

    iput-object p2, p0, val$effective:Landroid/os/Bundle;

    iput p3, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, this$0:Lcom/android/server/pm/UserManagerService;

    invoke-static {v0}, Lcom/android/server/pm/UserManagerService;->access$600(Lcom/android/server/pm/UserManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iget-object v1, p0, val$effective:Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->access$500()Landroid/os/IBinder;

    move-result-object v2

    iget v3, p0, val$userId:I

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->setUserRestrictions(Landroid/os/Bundle;Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UserManagerService"

    const-string v2, "Unable to notify AppOpsService of UserRestrictions"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
