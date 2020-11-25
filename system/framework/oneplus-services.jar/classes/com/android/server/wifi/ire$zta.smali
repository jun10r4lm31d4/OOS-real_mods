.class Lcom/android/server/wifi/ire$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/ire;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ire;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/ire;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "OpSlaNetlinkHelper"

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknow message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "MSG_APP_SWITCH_STATE_CHANGE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->bud(Lcom/android/server/wifi/ire;)V

    goto/16 :goto_2

    :pswitch_1
    const-string p1, "MSG_SEND_GAME_MODE_STATE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->dma(Lcom/android/server/wifi/ire;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wifi/ire;->sis(Lcom/android/server/wifi/ire;I)V

    goto/16 :goto_2

    :pswitch_2
    const-string p1, "MSG_SEND_SLA_DISABLED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/server/wifi/ire;->bio(Lcom/android/server/wifi/ire;I)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->gwm(Lcom/android/server/wifi/ire;)V

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;I)I

    goto/16 :goto_2

    :pswitch_3
    const-string p1, "MSG_PACKAGE_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->obl(Lcom/android/server/wifi/ire;)V

    goto :goto_1

    :pswitch_4
    const-string p0, "MSG_NOTIFY_SHOW_DIALOG"

    goto :goto_0

    :pswitch_5
    const-string p1, "MSG_CELL_QUALITY_CHANGED"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :pswitch_6
    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->cgv(Lcom/android/server/wifi/ire;)V

    goto/16 :goto_2

    :pswitch_7
    const-string p1, "MSG_SCREEN_STATE_CHANGE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->les(Lcom/android/server/wifi/ire;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/wifi/ire;->wtn(Lcom/android/server/wifi/ire;Z)V

    goto :goto_2

    :pswitch_8
    const-string p1, "MSG_GAME_SWITCH_STATE_CHANGE"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->vju(Lcom/android/server/wifi/ire;)V

    goto :goto_2

    :pswitch_9
    const-string p1, "MSG_SEND_PID_AND_LISTEN"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->veq(Lcom/android/server/wifi/ire;)V

    goto :goto_2

    :pswitch_a
    const-string p1, "MSG_SEND_GAME_APPS"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->ywr(Lcom/android/server/wifi/ire;)V

    goto :goto_2

    :pswitch_b
    const-string p1, "MSG_SEND_TOP_APPS"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->obl(Lcom/android/server/wifi/ire;)V

    goto :goto_2

    :pswitch_c
    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->ugm(Lcom/android/server/wifi/ire;)V

    goto :goto_2

    :pswitch_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_DISABLE_SLA mSlaEnableState="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v0}, Lcom/android/server/wifi/ire;->ear(Lcom/android/server/wifi/ire;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p1}, Lcom/android/server/wifi/ire;->ear(Lcom/android/server/wifi/ire;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->gwm(Lcom/android/server/wifi/ire;)V

    :cond_0
    :goto_2
    :pswitch_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_8
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_c
    .end packed-switch
.end method
