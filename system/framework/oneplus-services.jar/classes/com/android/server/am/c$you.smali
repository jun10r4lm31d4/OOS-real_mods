.class Lcom/android/server/am/c$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/c;


# direct methods
.method public constructor <init>(Lcom/android/server/am/c;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/c;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/c;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(): msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusDuallteManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x1388

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, this$0:Lcom/android/server/am/c;

    invoke-static {p0}, Lcom/android/server/am/c;->wtn(Lcom/android/server/am/c;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/c;->rtg(Lcom/android/server/am/c;Z)Z

    goto :goto_1

    :pswitch_1
    iget-object p0, p0, this$0:Lcom/android/server/am/c;

    invoke-static {p0}, Lcom/android/server/am/c;->igw(Lcom/android/server/am/c;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/c;->sis(Lcom/android/server/am/c;Z)Z

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, this$0:Lcom/android/server/am/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/am/c;->tsu(Lcom/android/server/am/c;Z)Z

    iget-object p1, p0, this$0:Lcom/android/server/am/c;

    invoke-static {p1}, Lcom/android/server/am/c;->gck(Lcom/android/server/am/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, this$0:Lcom/android/server/am/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/am/c;->you(Lcom/android/server/am/c;Z)Z

    const/4 p1, 0x6

    :goto_0
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :pswitch_4
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, this$0:Lcom/android/server/am/c;

    invoke-static {v0}, Lcom/android/server/am/c;->bio(Lcom/android/server/am/c;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "Duallte"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/c;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/c;->zta(Lcom/android/server/am/c;Lorg/json/JSONArray;)V

    goto :goto_1

    :pswitch_5
    iget-object p0, p0, this$0:Lcom/android/server/am/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/am/c;->zta(Lcom/android/server/am/c;Z)Z

    goto :goto_1

    :pswitch_6
    iget-object p0, p0, this$0:Lcom/android/server/am/c;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/am/c;->zta(Lcom/android/server/am/c;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
