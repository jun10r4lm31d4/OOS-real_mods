.class public Lcom/android/server/os/BugreportManagerService;
.super Lcom/android/server/SystemService;
.source "BugreportManagerService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BugreportManagerService"


# instance fields
.field private mService:Lcom/android/server/os/BugreportManagerServiceImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/os/BugreportManagerServiceImpl;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/os/BugreportManagerServiceImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mService:Lcom/android/server/os/BugreportManagerServiceImpl;

    iget-object v0, p0, mService:Lcom/android/server/os/BugreportManagerServiceImpl;

    const-string v1, "bugreport"

    invoke-virtual {p0, v1, v0}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
