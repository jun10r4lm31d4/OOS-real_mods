.class Lcom/android/server/print/UserState$1;
.super Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method


# virtual methods
.method public onDestroyed()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/print/UserState;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/print/UserState;->access$102(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;)Lcom/android/server/print/UserState$PrinterDiscoverySessionMediator;

    return-void
.end method
