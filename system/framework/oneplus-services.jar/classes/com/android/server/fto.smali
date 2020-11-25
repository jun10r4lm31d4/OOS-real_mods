.class Lcom/android/server/fto;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/veq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/veq;


# direct methods
.method constructor <init>(Lcom/android/server/veq;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/veq;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const-string p0, "CommonFrontMonitor"

    const-string p1, "[scene] arguments is null while handling CMD_FETCH_CONFIG"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string p1, "CONFIG_NAME"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v2, p0, this$0:Lcom/android/server/veq;

    invoke-static {v2, p1}, Lcom/android/server/veq;->zta(Lcom/android/server/veq;Ljava/lang/String;)V

    :cond_2
    new-array p1, v1, [I

    const/4 v1, 0x0

    const/16 v2, 0x116

    aput v2, p1, v1

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "CONFIG_NAME_FASTOUTPUT"

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p0, p0, this$0:Lcom/android/server/veq;

    invoke-static {p0, p1}, Lcom/android/server/veq;->zta(Lcom/android/server/veq;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
