.class Lcom/android/server/tsu$zta;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tsu;


# direct methods
.method private constructor <init>(Lcom/android/server/tsu;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/tsu;Lcom/android/server/sis;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/tsu;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusChargingGuarder"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "net.oneplus.charingguarder.intent.mdm"

    if-ne p1, v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object v0

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v0}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v0}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "net.oneplus.chargingguarder.intent.enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v5

    goto :goto_1

    :sswitch_1
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v7

    goto :goto_1

    :sswitch_3
    const-string v0, "net.oneplus.charingguarder.intent.OPCG"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v8

    goto :goto_1

    :sswitch_4
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v6

    goto :goto_1

    :sswitch_5
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move p1, v2

    :goto_1
    if-eqz p1, :cond_8

    if-eq p1, v8, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_4

    if-eq p1, v7, :cond_3

    goto/16 :goto_4

    :cond_3
    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_2

    :cond_4
    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_2

    :cond_5
    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_2

    :cond_6
    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    invoke-virtual {p0, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    goto :goto_2

    :cond_7
    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    :goto_2
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_8
    const-string p1, "level"

    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v0, 0x64

    mul-int/2addr p1, v0

    const-string v3, "scale"

    invoke-virtual {p2, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    div-int/2addr p1, v0

    const-string v0, "status"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v5, :cond_a

    if-ne v0, v7, :cond_9

    goto :goto_3

    :cond_9
    move v8, v6

    :cond_a
    :goto_3
    iget-object v0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v0}, Lcom/android/server/tsu;->gck(Lcom/android/server/tsu;)I

    move-result v0

    if-eq p1, v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " level="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p2, p1}, Lcom/android/server/tsu;->you(Lcom/android/server/tsu;I)I

    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p1, p0, Landroid/os/Message;->arg1:I

    goto :goto_2

    :cond_b
    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7073f927 -> :sswitch_5
        -0x5bb23923 -> :sswitch_4
        -0x52b53c72 -> :sswitch_3
        -0x185734ab -> :sswitch_2
        0x3cbf870b -> :sswitch_1
        0x5bfb1469 -> :sswitch_0
    .end sparse-switch
.end method
