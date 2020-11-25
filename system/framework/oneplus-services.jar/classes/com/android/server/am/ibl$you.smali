.class Lcom/android/server/am/ibl$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ibl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ibl;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ibl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/ibl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private you(Landroid/os/Message;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/ibl;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePkgMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ibl;->myLog(Ljava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ibl;->sis(Lcom/android/server/am/ibl;Ljava/lang/String;)Lcom/android/server/am/ibl$sis;

    sget-boolean p0, Lcom/android/server/am/ibl;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePkgMessage # install "

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ibl;->tsu(Lcom/android/server/am/ibl;Ljava/lang/String;)V

    sget-boolean p0, Lcom/android/server/am/ibl;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePkgMessage # remove "

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ibl;->sis(Lcom/android/server/am/ibl;Ljava/lang/String;)Lcom/android/server/am/ibl$sis;

    sget-boolean p0, Lcom/android/server/am/ibl;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handlePkgMessage # reinstall "

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/ibl;->myLog(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/ibl;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/ibl;->myLog(Ljava/lang/String;)V

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    packed-switch v0, :pswitch_data_0

    invoke-direct {p0, p1}, you(Landroid/os/Message;)V

    goto/16 :goto_1

    :pswitch_0
    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    invoke-static {p0}, Lcom/android/server/am/ibl;->ssp(Lcom/android/server/am/ibl;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object p1, p0, this$0:Lcom/android/server/am/ibl;

    invoke-static {p1}, Lcom/android/server/am/ibl;->ssp(Lcom/android/server/am/ibl;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    const-wide/32 v0, 0x5265c00

    invoke-static {p0, v0, v1}, Lcom/android/server/am/ibl;->zta(Lcom/android/server/am/ibl;J)V

    goto :goto_1

    :pswitch_2
    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p0, v1}, Lcom/android/server/am/ibl;->zta(Lcom/android/server/am/ibl;Z)V

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, this$0:Lcom/android/server/am/ibl;

    invoke-static {v0}, Lcom/android/server/am/ibl;->rtg(Lcom/android/server/am/ibl;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "AppBoot"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/ibl;->zta(Lcom/android/server/am/ibl;Lorg/json/JSONArray;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/server/am/ibl;->you(Lcom/android/server/am/ibl;Ljava/lang/String;)I

    move-result p0

    sget-boolean v0, Lcom/android/server/am/ibl;->sDebug:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopPkg # ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/ibl;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, this$0:Lcom/android/server/am/ibl;

    invoke-static {}, Lcom/android/server/am/ibl;->nb()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ibl;->zta(Ljava/util/HashMap;)I

    invoke-static {}, Lcom/android/server/am/ibl;->access$2100()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p0, p0, this$0:Lcom/android/server/am/ibl;

    invoke-static {p0}, Lcom/android/server/am/ibl;->sis(Lcom/android/server/am/ibl;)Lcom/android/server/am/ugm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/ugm;->yb()V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
