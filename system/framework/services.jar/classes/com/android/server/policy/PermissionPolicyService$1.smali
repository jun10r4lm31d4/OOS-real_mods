.class Lcom/android/server/policy/PermissionPolicyService$1;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackageListObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PermissionPolicyService;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PermissionPolicyService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, onPackageChanged(Ljava/lang/String;I)V

    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I)V
    .locals 2

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$100(Lcom/android/server/policy/PermissionPolicyService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v1, p1, v0}, Lcom/android/server/policy/PermissionPolicyService;->access$200(Lcom/android/server/policy/PermissionPolicyService;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
