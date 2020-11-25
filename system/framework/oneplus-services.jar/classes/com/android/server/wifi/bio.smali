.class Lcom/android/server/wifi/bio;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ire;->registerSettingsCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ire;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->cjf(Lcom/android/server/wifi/ire;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/ire;->kth(Lcom/android/server/wifi/ire;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->oxb(Lcom/android/server/wifi/ire;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->ear(Lcom/android/server/wifi/ire;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->gwm(Lcom/android/server/wifi/ire;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->ear(Lcom/android/server/wifi/ire;)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->ugm(Lcom/android/server/wifi/ire;)V

    :cond_1
    :goto_0
    return-void
.end method
