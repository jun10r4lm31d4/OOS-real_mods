.class Lcom/oneplus/android/server/scene/cgv;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/vju;->cv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/vju;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/vju;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->ssp(Lcom/oneplus/android/server/scene/vju;)Z

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iget-object v0, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {v0, p2}, Lcom/oneplus/android/server/scene/vju;->you(Lcom/oneplus/android/server/scene/vju;Z)Z

    invoke-static {}, Lcom/oneplus/android/server/scene/vju;->access$600()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "oldBtA2dpOn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "/ mBtA2dpOn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/vju;->ssp(Lcom/oneplus/android/server/scene/vju;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OemSceneGameModePanel"

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/vju;->ssp(Lcom/oneplus/android/server/scene/vju;)Z

    move-result p2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->you(Lcom/oneplus/android/server/scene/vju;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/oneplus/android/server/scene/veq;

    invoke-direct {p2, p0}, Lcom/oneplus/android/server/scene/veq;-><init>(Lcom/oneplus/android/server/scene/cgv;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
