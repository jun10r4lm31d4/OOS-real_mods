.class Lcom/android/server/wifi/ssp;
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

    invoke-static {p1}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object p1

    const/16 v0, 0xf

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->bvj(Lcom/android/server/wifi/ire;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->r(Lcom/android/server/wifi/ire;)V

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/wifi/ire;->ssp(Lcom/android/server/wifi/ire;Z)V

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->ugm(Lcom/android/server/wifi/ire;)V

    goto :goto_0

    :cond_0
    const-string p1, "OpSlaNetlinkHelper"

    const-string v0, "SLA disabled by app Settings, disableSla().."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->oif(Lcom/android/server/wifi/ire;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->vdb(Lcom/android/server/wifi/ire;)Z

    move-result p1

    if-nez p1, :cond_2

    :cond_1
    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->gwm(Lcom/android/server/wifi/ire;)V

    :cond_2
    :goto_0
    return-void
.end method
