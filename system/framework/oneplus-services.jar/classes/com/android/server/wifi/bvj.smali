.class Lcom/android/server/wifi/bvj;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/ire;->hr()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/ire;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/ire;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendPidAndListen tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1d

    :try_start_0
    invoke-static {v0}, Landroid/net/netlink/NetlinkSocket;->forProto(I)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wifi/ire;->zta(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;

    invoke-static {}, Lcom/android/server/wifi/ire;->ye()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Landroid/system/NetlinkSocketAddress;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/system/NetlinkSocketAddress;-><init>(II)V

    invoke-static {v2, v3}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    const/16 v3, 0x12

    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/ire;->zta(Lcom/android/server/wifi/ire;SI)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "After sending pid:result="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/wifi/ire;->ye()Ljava/io/FileDescriptor;

    move-result-object v2

    const/16 v3, 0x2000

    const-wide/16 v5, 0x0

    invoke-static {v2, v3, v5, v6}, Landroid/net/netlink/NetlinkSocket;->recvMessage(Ljava/io/FileDescriptor;IJ)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroid/net/netlink/StructNlMsgHdr;->parse(Ljava/nio/ByteBuffer;)Landroid/net/netlink/StructNlMsgHdr;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-short v5, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/16 v6, 0x13

    if-eq v5, v6, :cond_f

    const/16 v6, 0x14

    const/4 v7, 0x2

    if-eq v5, v6, :cond_e

    const/16 v8, 0x19

    const/4 v9, 0x1

    if-eq v5, v8, :cond_c

    const/16 v8, 0x1b

    const/16 v10, 0x10

    if-eq v5, v8, :cond_a

    const/16 v6, 0x26

    if-eq v5, v6, :cond_9

    const/16 v6, 0x31

    if-eq v5, v6, :cond_7

    if-eq v5, v0, :cond_5

    const/16 v6, 0x1e

    if-eq v5, v6, :cond_0

    const/16 v6, 0x22

    if-eq v5, v6, :cond_0

    const/16 v6, 0x23

    if-eq v5, v6, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received unknow message:type="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    new-array v5, v7, [I

    iget v6, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    const/16 v8, 0x18

    if-ge v6, v8, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message:OP_SLA_SWITCH_GAME_NETWORK invalid length:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_2
    if-ge v3, v7, :cond_3

    mul-int/lit8 v6, v3, 0x4

    add-int/2addr v6, v10

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v6

    aput v6, v5, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when read game switch "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    aget v2, v5, v4

    aget v3, v5, v9

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "gameType:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " gameMark:"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x100

    if-ne v3, v2, :cond_4

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->vdw(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->k(Lcom/android/server/wifi/ire;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->reportBadNetwork(Landroid/net/Network;)V

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->wtn(Lcom/android/server/wifi/ire;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00d3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->l(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v5}, Lcom/android/server/wifi/ire;->l(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->vdw(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->n(Lcom/android/server/wifi/ire;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->reportBadNetwork(Landroid/net/Network;)V

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->wtn(Lcom/android/server/wifi/ire;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00d2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->l(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v3

    iget-object v5, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v5}, Lcom/android/server/wifi/ire;->l(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    goto :goto_3

    :cond_5
    const-string v2, "OP_SLA_ENABLED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2, v9}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;I)I

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->o(Lcom/android/server/wifi/ire;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/ire;->cno(Lcom/android/server/wifi/ire;Z)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->h(Lcom/android/server/wifi/ire;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;Z)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->vdb(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->p(Lcom/android/server/wifi/ire;)I

    move-result v3

    :goto_4
    invoke-static {v2, v3}, Lcom/android/server/wifi/ire;->bio(Lcom/android/server/wifi/ire;I)I

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->ibl(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->p(Lcom/android/server/wifi/ire;)I

    move-result v3

    goto :goto_4

    :cond_7
    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->h(Lcom/android/server/wifi/ire;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;Z)Z

    invoke-static {}, Lcom/android/server/wifi/ire;->access$400()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->i(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "Received message: OP_SLA_NOTIFY_SWITCH_APP_NETWORK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->ibl(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->i(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->j(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->e(Lcom/android/server/wifi/ire;)V

    goto/16 :goto_0

    :cond_9
    invoke-static {}, Lcom/android/server/wifi/ire;->access$400()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Received message:OP_SLA_SEND_GAME_APP_STATISTIC"

    goto/16 :goto_1

    :cond_a
    iget v3, v3, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    if-ge v3, v6, :cond_b

    const-string v2, "Received message:OP_SLA_NOTIFY_GAME_RTT invalid length."

    goto/16 :goto_1

    :cond_b
    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    invoke-static {}, Lcom/android/server/wifi/ire;->access$400()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received message:OP_SLA_NOTIFY_GAME_RTT RTT="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when read rtt "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    :cond_c
    invoke-static {}, Lcom/android/server/wifi/ire;->access$400()Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "Received message: OP_SLA_SWITCH_APP_NETWORK"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    iget-object v3, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v3}, Lcom/android/server/wifi/ire;->h(Lcom/android/server/wifi/ire;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/wifi/ire;->rtg(Lcom/android/server/wifi/ire;Z)Z

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->ibl(Lcom/android/server/wifi/ire;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->ear(Lcom/android/server/wifi/ire;)I

    move-result v2

    goto/16 :goto_0

    :cond_e
    const-string v2, "Received message:OP_SLA_DISABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_f
    const-string v2, "Received message: OP_SLA_ENABLE"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {v2}, Lcom/android/server/wifi/ire;->qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when sendPidAndListen:tid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p0, p0, this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->q(Lcom/android/server/wifi/ire;)V

    return-void
.end method
