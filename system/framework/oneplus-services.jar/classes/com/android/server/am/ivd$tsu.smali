.class Lcom/android/server/am/ivd$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ivd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ivd;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ivd;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->oif(Lcom/android/server/am/ivd;I)I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/am/ivd;->bvj(Lcom/android/server/am/ivd;I)I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/ivd;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v6, :cond_0

    move v5, v6

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v5}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Z)V

    goto/16 :goto_4

    :pswitch_1
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v6, :cond_1

    move v5, v6

    :cond_1
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p1, "TRAFFIC_HIGH"

    goto :goto_0

    :pswitch_2
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v6, :cond_2

    move v5, v6

    :cond_2
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p1, "DOWNLOAD"

    :goto_0
    invoke-static {p0, p1, v5}, Lcom/android/server/am/ivd$igw;->zta(Lcom/android/server/am/ivd$igw;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :pswitch_3
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0, v5}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IZ)V

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p1, "AUDIO"

    goto :goto_1

    :pswitch_4
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0, v5}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;IZ)V

    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0, v5}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IZ)V

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p1, "FOREGROUND_SWITCH_PROTECT"

    :goto_1
    invoke-static {p0, p1, v6}, Lcom/android/server/am/ivd$igw;->zta(Lcom/android/server/am/ivd$igw;Ljava/lang/String;Z)V

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object v0

    if-eqz v0, :cond_3

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Lcom/android/server/am/ivd$igw;->zta(Lcom/android/server/am/ivd$igw;I)V

    :cond_3
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    iget v0, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p0

    if-eqz p0, :cond_d

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/am/ivd$igw;->you(Lcom/android/server/am/ivd$igw;I)V

    goto/16 :goto_4

    :pswitch_6
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-static {p1}, Lcom/android/server/am/ivd$igw;->you(Lcom/android/server/am/ivd$igw;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    iget-object v1, p1, Lcom/android/server/am/ivd$igw;->packageName:Ljava/lang/String;

    invoke-static {p0, v1, v0, v5, v6}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/lang/String;IZZ)I

    move-result p0

    if-nez p0, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "do freeze for uid is not shown fg notification, uid:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " pkg:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/android/server/am/ivd$igw;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    monitor-enter p1

    :try_start_0
    iput-boolean v5, p1, Lcom/android/server/am/ivd$igw;->hs:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/android/server/am/ivd$igw;->Tr:J

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, v2}, Lcom/android/server/am/ivd$igw;->rtg(Lcom/android/server/am/ivd$igw;Ljava/lang/String;)V

    goto/16 :goto_4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_7
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v6, :cond_4

    move v5, v6

    :cond_4
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p1

    if-eqz p1, :cond_5

    if-eqz v5, :cond_5

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    iget-object p1, p1, Lcom/android/server/am/ivd$igw;->packageName:Ljava/lang/String;

    invoke-static {v1, v0, p1, v6}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;ILjava/lang/String;Z)V

    :cond_5
    if-eqz v5, :cond_d

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IMPERCEPTIBLE_CHANGE change to:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cause by:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, v6, p1}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_8
    :try_start_2
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->rtg(Lcom/android/server/am/ivd;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_OPT_APPLIST_CHANGE e:"

    goto/16 :goto_3

    :pswitch_9
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;I)Z

    move-result p1

    const/16 v1, 0xd

    if-nez p1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_6
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p0

    if-eqz p0, :cond_d

    monitor-enter p0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object p1

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GeneralThread------MSG_GT_FOREGROUND_SWITCH_PROTECT end uid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " there is also the same uid message behind, return"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    monitor-exit p0

    return-void

    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event removeForegroundSwitchProtect uid:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/ivd$igw;->zta(Lcom/android/server/am/ivd$igw;)V

    monitor-exit p0

    goto/16 :goto_4

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :pswitch_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_8

    instance-of v2, p1, Ljava/lang/Boolean;

    if-eqz v2, :cond_8

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :cond_8
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    const-string v2, "writePidToTasksFile"

    invoke-static {p1, v2}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0, v1, v5}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IIZ)V

    :goto_2
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->qbh(Lcom/android/server/am/ivd;)V

    goto/16 :goto_4

    :pswitch_b
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->tsu(Lcom/android/server/am/ivd;I)V

    goto/16 :goto_4

    :pswitch_c
    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object p1

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0, v2}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;ILjava/lang/String;)V

    goto/16 :goto_4

    :pswitch_d
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0, p1}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;II)V

    goto/16 :goto_4

    :pswitch_e
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;I)V

    goto/16 :goto_4

    :pswitch_f
    :try_start_4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/util/HashSet;

    if-eqz v1, :cond_9

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/util/HashSet;

    :cond_9
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Ljava/util/HashSet;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MSG_GT_IMPORTANT_CHANGE e:"

    :goto_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OPBF"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :pswitch_10
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;)V

    goto/16 :goto_4

    :pswitch_11
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0, v0}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;I)V

    goto/16 :goto_4

    :pswitch_12
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->kth(Lcom/android/server/am/ivd;)V

    goto/16 :goto_4

    :pswitch_13
    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->bio(Lcom/android/server/am/ivd;)V

    goto/16 :goto_4

    :pswitch_14
    invoke-static {}, Lcom/android/server/am/ivd;->Zb()Z

    move-result p1

    if-nez p1, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " |sEnable:false , return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return-void

    :cond_a
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;I)Z

    move-result p1

    if-nez p1, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end, uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not exist, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object p0

    invoke-static {v0, v3}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    :cond_b
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1, v0}, Lcom/android/server/am/ivd;->cno(Lcom/android/server/am/ivd;I)Lcom/android/server/am/ivd$igw;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1, v0, v6}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IZ)V

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1, v0, v6}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;IZ)V

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    const-string v5, "uid to freeze"

    invoke-static {v1, v0, v6, v5}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;IZLjava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/ivd;->access$5900()Landroid/os/Handler;

    move-result-object v1

    invoke-static {v0, v3}, Lcom/android/server/am/ivd;->ywr(II)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "GeneralThread------MSG_GT_DELAY_FREEZE end uid:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " there is also the same uid message behind, return"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/server/am/ivd;->tsu(ILjava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    const-string v1, "handleDelayFreeze"

    invoke-static {v0, v1}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;Ljava/lang/String;)V

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0, p1, v2}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Lcom/android/server/am/ivd$igw;Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_15
    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;)V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v0}, Lcom/android/server/am/ivd;->oif(Lcom/android/server/am/ivd;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "ProcessFreezer"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/ivd;->zta(Lcom/android/server/am/ivd;Lorg/json/JSONArray;)V

    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->you(Lcom/android/server/am/ivd;)V

    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->cjf(Lcom/android/server/am/ivd;)V

    iget-object p1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p1}, Lcom/android/server/am/ivd;->oxb(Lcom/android/server/am/ivd;)Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "oneplus_opbf_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {v1}, Lcom/android/server/am/ivd;->sis(Lcom/android/server/am/ivd;)Lcom/android/server/am/ivd$ssp;

    move-result-object v1

    invoke-virtual {p1, v0, v5, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/ivd;

    invoke-static {p0}, Lcom/android/server/am/ivd;->tsu(Lcom/android/server/am/ivd;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_d
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
