.class Lcom/android/server/wifi/oxb;
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

    invoke-static {p1}, Lcom/android/server/wifi/ire;->igw(Lcom/android/server/wifi/ire;)Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/server/wifi/ire;->tsu(Lcom/android/server/wifi/ire;Z)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDownloadingHeytapNotify:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v0}, Lcom/android/server/wifi/ire;->ssp(Lcom/android/server/wifi/ire;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->sis(Lcom/android/server/wifi/ire;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->ssp(Lcom/android/server/wifi/ire;)Z

    move-result p1

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/android/server/wifi/ire;->cno(Lcom/android/server/wifi/ire;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/server/wifi/ire;->kth(Lcom/android/server/wifi/ire;)V

    :cond_1
    :goto_0
    return-void
.end method
