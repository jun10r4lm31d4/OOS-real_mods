.class public abstract Lcom/android/server/am/Q;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/Q$zta;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SocketTransferAbstract"

.field public static final Yza:I = 0x1

.field public static final Zza:I = 0x2

.field public static final _za:Ljava/lang/String; = "ORMQsocket"

.field private static final aAa:I = 0x1

.field private static final bAa:I = 0x32

.field private static final cAa:I = 0x200


# instance fields
.field private mClient:Landroid/net/LocalSocket;

.field private mHandler:Lcom/android/server/am/Q$zta;

.field private mma:Landroid/net/OPLocalServerSocket;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, mClient:Landroid/net/LocalSocket;

    iput-object p1, p0, mHandler:Lcom/android/server/am/Q$zta;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/am/Q$zta;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/Q$zta;-><init>(Lcom/android/server/am/Q;Landroid/os/Looper;)V

    iput-object p1, p0, mHandler:Lcom/android/server/am/Q$zta;

    invoke-direct {p0}, Wv()Z

    return-void
.end method

.method private Uv()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, mma:Landroid/net/OPLocalServerSocket;

    invoke-virtual {v1}, Landroid/net/OPLocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "SocketTransferAbstract"

    const-string v1, "ORM socket accept failed!"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, mHandler:Lcom/android/server/am/Q$zta;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method

.method private Vv()Z
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/am/O;

    invoke-direct {v1, p0}, Lcom/android/server/am/O;-><init>(Lcom/android/server/am/Q;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    const/4 p0, 0x1

    return p0
.end method

.method private Wv()Z
    .locals 0

    invoke-direct {p0}, createServerSocket()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private createServerSocket()Z
    .locals 4

    iget-object v0, p0, mma:Landroid/net/OPLocalServerSocket;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/OPLocalServerSocket;

    const-string v2, "ORMQsocket"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroid/net/OPLocalServerSocket;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, mma:Landroid/net/OPLocalServerSocket;

    invoke-direct {p0}, Vv()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method static synthetic you(Lcom/android/server/am/Q;)Landroid/net/LocalSocket;
    .locals 0

    iget-object p0, p0, mClient:Landroid/net/LocalSocket;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/Q;Landroid/net/LocalSocket;)Landroid/net/LocalSocket;
    .locals 0

    iput-object p1, p0, mClient:Landroid/net/LocalSocket;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/am/Q;)Z
    .locals 0

    invoke-direct {p0}, Uv()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract Ga(Ljava/lang/String;)V
.end method

.method public abstract you(Ljava/lang/String;Ljava/io/OutputStream;)V
.end method
