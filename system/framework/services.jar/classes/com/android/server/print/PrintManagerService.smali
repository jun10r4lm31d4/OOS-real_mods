.class public final Lcom/android/server/print/PrintManagerService;
.super Lcom/android/server/SystemService;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintManagerService"


# instance fields
.field private final mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;-><init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V

    iput-object v0, p0, mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    const-string/jumbo v1, "print"

    invoke-virtual {p0, v1, v0}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    iget-object v0, p0, mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$100(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1

    iget-object v0, p0, mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->access$000(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    return-void
.end method
