.class public Lcom/android/server/appbinding/AppBindingService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field final mService:Lcom/android/server/appbinding/AppBindingService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/android/server/appbinding/AppBindingService$Injector;

    invoke-direct {v0}, Lcom/android/server/appbinding/AppBindingService$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$Injector;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$Injector;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/appbinding/AppBindingService;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/appbinding/AppBindingService;-><init>(Lcom/android/server/appbinding/AppBindingService$Injector;Landroid/content/Context;Lcom/android/server/appbinding/AppBindingService$1;)V

    iput-object v0, p0, mService:Lcom/android/server/appbinding/AppBindingService;

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    iget-object v0, p0, mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$100(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, mService:Lcom/android/server/appbinding/AppBindingService;

    const-string v1, "app_binding"

    invoke-virtual {p0, v1, v0}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 1

    iget-object v0, p0, mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$200(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$400(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, mService:Lcom/android/server/appbinding/AppBindingService;

    invoke-static {v0, p1}, Lcom/android/server/appbinding/AppBindingService;->access$300(Lcom/android/server/appbinding/AppBindingService;I)V

    return-void
.end method
