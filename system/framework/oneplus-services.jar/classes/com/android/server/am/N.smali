.class public Lcom/android/server/am/N;
.super Lcom/android/server/am/Q;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/N$you;,
        Lcom/android/server/am/N$sis;,
        Lcom/android/server/am/N$zta;
    }
.end annotation


# static fields
.field public static final AAa:I = 0x1

.field private static BAa:Ljava/lang/Object; = null

.field private static CAa:Landroid/net/LocalSocket; = null

.field private static DAa:Ljava/io/OutputStream; = null

.field private static EAa:Ljava/io/InputStream; = null

.field private static FAa:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static GAa:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static HAa:Ljava/util/Set; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static IAa:Z = false

.field private static final INVALID:I = -0x1

.field private static JAa:Z = false

.field private static final NAME:Ljava/lang/String; = "ORMSocketServerHandler"

.field public static final TAG:Ljava/lang/String; = "LORM-SocketTransition"

.field private static final mAa:Ljava/lang/String; = "com.bluetooth.resetAll"

.field public static final nAa:Ljava/lang/String; = "uid"

.field public static final oAa:Ljava/lang/String; = "pid"

.field public static final pAa:Ljava/lang/String; = "proc"

.field public static final qAa:Ljava/lang/String; = "pkg"

.field public static final rAa:Ljava/lang/String; = "pss"

.field public static final sAa:Ljava/lang/String; = "bm"

.field private static sIntance:Lcom/android/server/am/N; = null

.field public static final tAa:Ljava/lang/String; = "reason"

.field public static final uAa:Ljava/lang/String; = "diedAdj"

.field public static final vAa:Ljava/lang/String; = "processStart"

.field public static final wAa:Ljava/lang/String; = "processRemove"

.field public static final xAa:Ljava/lang/String; = "processStateBM"

.field public static final yAa:Ljava/lang/String; = "appStateBM"

.field public static final zAa:Ljava/lang/String; = "pssUpdate"


# instance fields
.field private aj:Lcom/android/server/am/N$zta;

.field final dAa:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eAa:Lcom/android/server/am/N$you;

.field private fAa:I

.field private gAa:I

.field private hAa:Ljava/lang/String;

.field private iAa:I

.field private jAa:Ljava/lang/String;

.field private kAa:I

.field private lAa:Ljava/lang/Runnable;

.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field final mBluetoothList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/am/N$sis;

.field private mRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, BAa:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, FAa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, GAa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, HAa:Ljava/util/Set;

    const-string v0, "persist.sys.orm.feature.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, IAa:Z

    const-string v0, "persist.vendor.orm.restart"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, JAa:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-string v0, "ORMSocketServerHandler"

    invoke-direct {p0, v0}, Lcom/android/server/am/Q;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/am/N$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/N$zta;-><init>(Lcom/android/server/am/N;Lcom/android/server/am/L;)V

    iput-object v0, p0, aj:Lcom/android/server/am/N$zta;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, dAa:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, mBluetoothList:Ljava/util/Set;

    iput-object v1, p0, mThread:Landroid/os/HandlerThread;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, mAMS:Lcom/android/server/am/ActivityManagerService;

    new-instance v0, Lcom/android/server/am/N$you;

    invoke-direct {v0, p0}, Lcom/android/server/am/N$you;-><init>(Lcom/android/server/am/N;)V

    iput-object v0, p0, eAa:Lcom/android/server/am/N$you;

    const/4 v0, -0x1

    iput v0, p0, fAa:I

    iput v0, p0, gAa:I

    iput-object v1, p0, hAa:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, iAa:I

    iput-object v1, p0, jAa:Ljava/lang/String;

    iput v0, p0, kAa:I

    new-instance v1, Lcom/android/server/am/L;

    invoke-direct {v1, p0}, Lcom/android/server/am/L;-><init>(Lcom/android/server/am/N;)V

    iput-object v1, p0, lAa:Ljava/lang/Runnable;

    sget-boolean v1, Lcom/android/server/am/gck;->tl:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x11e

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, IAa:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SocketTransition"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, mThread:Landroid/os/HandlerThread;

    iget-object v0, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/am/N$sis;

    iget-object v1, p0, mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/N$sis;-><init>(Lcom/android/server/am/N;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Lcom/android/server/am/N$sis;

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->GPS:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->iwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->_va:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->awa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->bwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->ewa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->TRAFFIC:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->cwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->dwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->fwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->gwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->lwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->hwa:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, aj:Lcom/android/server/am/N$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/qbh;)V

    const-string v0, "LORM-SocketTransition"

    const-string v1, "SocketTransition init part1"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, lAa:Ljava/lang/Runnable;

    invoke-static {p0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static Xv()Z
    .locals 4

    :try_start_0
    new-instance v0, Landroid/net/LocalSocket;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v0, CAa:Landroid/net/LocalSocket;

    sget-object v0, CAa:Landroid/net/LocalSocket;

    new-instance v1, Landroid/net/LocalSocketAddress;

    const-string v2, "ommsocket"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v1, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v0, v1}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    sget-object v0, CAa:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    sput-object v0, DAa:Ljava/io/OutputStream;

    sget-object v0, CAa:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    sput-object v0, EAa:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const-string v0, "LORM-SocketTransition"

    const-string v1, "ommsocket open failed"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, CAa:Landroid/net/LocalSocket;

    const/4 v0, 0x0

    return v0
.end method

.method private Yv()V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object p0, p0, mHandler:Lcom/android/server/am/N$sis;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private Zv()V
    .locals 3

    invoke-direct {p0}, Yv()V

    iget-object v0, p0, mHandler:Lcom/android/server/am/N$sis;

    iget-object p0, p0, mRunnable:Ljava/lang/Runnable;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$100()Ljava/lang/Object;
    .locals 1

    sget-object v0, BAa:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, JAa:Z

    return p0
.end method

.method static synthetic access$300(I)I
    .locals 0

    invoke-static {p0}, kd(I)I

    move-result p0

    return p0
.end method

.method private b(II)V
    .locals 8

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/tsu;->Ga()Ljava/util/HashMap;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/K;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getPackageName(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/K;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/K;->getFlag()I

    move-result v1

    and-int/lit8 v1, v1, -0x5

    int-to-long v6, v1

    move-object v2, p0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v2 .. v7}, you(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, zta([BLjava/nio/ByteBuffer;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static bio(IILjava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lcom/android/server/am/AppRecordManagerService;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    invoke-static {p2, p0}, lqr(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p2, FAa:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    sget-object p0, FAa:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    sget-object p1, HAa:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, HAa:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget-object p0, GAa:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, GAa:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private c(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getPackageName(II)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/android/server/am/N;)I
    .locals 0

    iget p0, p0, gAa:I

    return p0
.end method

.method private cno(IILjava/lang/String;)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result p0

    int-to-long v0, p0

    invoke-static {p3, p1, p2, v0, v1}, zta(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, zta([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method static cno([B)Z
    .locals 1

    :try_start_0
    sget-object v0, DAa:Ljava/io/OutputStream;

    invoke-virtual {v0, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "LORM-SocketTransition"

    const-string v0, "Error writing to omm socket"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, CAa:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    sput-object p0, CAa:Landroid/net/LocalSocket;

    const/4 p0, 0x0

    return p0
.end method

.method public static getInstance()Lcom/android/server/am/N;
    .locals 1

    sget-object v0, sIntance:Lcom/android/server/am/N;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/N;

    invoke-direct {v0}, <init>()V

    sput-object v0, sIntance:Lcom/android/server/am/N;

    :cond_0
    sget-object v0, sIntance:Lcom/android/server/am/N;

    return-object v0
.end method

.method public static igw(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, lqr(Ljava/lang/String;I)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, HAa:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static kd(I)I
    .locals 2

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/am/AppRecordManagerService;->getOwnerUid(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p0
.end method

.method private kth(IILjava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v0

    int-to-long v5, v0

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, you(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, zta([BLjava/nio/ByteBuffer;)Z

    :cond_1
    return-void
.end method

.method private ld(I)V
    .locals 6

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRecordManagerService;->getPackagesFromUid(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {p1, v2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v2, p1, v3, v4, v5}, zta(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, zta([BLjava/nio/ByteBuffer;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static lqr(Ljava/lang/String;I)Ljava/lang/StringBuilder;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "@"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private md(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SCREEN OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static oxb(II)V
    .locals 0

    return-void
.end method

.method static qbh(ILjava/lang/String;)V
    .locals 3

    invoke-static {p0}, kd(I)I

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManager;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result p0

    int-to-long v1, p0

    const/4 p0, -0x1

    invoke-static {p1, v0, p0, v1, v2}, zta(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, zta([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method private rd(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, kd(I)I

    move-result p0

    invoke-static {p0, p1}, Lcom/android/server/am/AppRecordManager;->getAppRecord(ILjava/lang/String;)Lcom/android/server/am/tsu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/tsu;->getFlag()I

    move-result v0

    int-to-long v0, v0

    const/4 v2, -0x1

    invoke-static {p1, p0, v2, v0, v1}, zta(Ljava/lang/String;IIJ)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, zta([BLjava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/N;)V
    .locals 0

    invoke-direct {p0}, Zv()V

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/am/N;I)Z
    .locals 0

    invoke-direct {p0, p1}, md(I)Z

    move-result p0

    return p0
.end method

.method private sd(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "SCREEN OFF"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/am/N;I)I
    .locals 0

    iput p1, p0, fAa:I

    return p1
.end method

.method static synthetic sis(Lcom/android/server/am/N;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, jAa:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/am/N;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, sd(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/N;)I
    .locals 0

    iget p0, p0, fAa:I

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/am/N;I)V
    .locals 0

    invoke-direct {p0, p1}, ld(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/N;)I
    .locals 0

    iget p0, p0, kAa:I

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/am/N;I)I
    .locals 0

    iput p1, p0, gAa:I

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/am/N;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, rd(Ljava/lang/String;)V

    return-void
.end method

.method public static wa(I)V
    .locals 1

    sget-object v0, FAa:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static xa(I)V
    .locals 1

    sget-object v0, GAa:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/N;)I
    .locals 0

    iget p0, p0, iAa:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/N;I)I
    .locals 0

    iput p1, p0, kAa:I

    return p1
.end method

.method static synthetic you(Lcom/android/server/am/N;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, jAa:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic you(Lcom/android/server/am/N;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, b(II)V

    return-void
.end method

.method static synthetic you(IILjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1, p2}, bio(IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/N;I)I
    .locals 0

    iput p1, p0, iAa:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/am/N;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, hAa:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/N;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, hAa:Ljava/lang/String;

    return-object p1
.end method

.method public static zta(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "pkg"

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "uid"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "pid"

    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "bm"

    invoke-virtual {v0, p0, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "appStateBM"

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createAppStateBM Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->qeg(Ljava/lang/String;)V

    return-object v1
.end method

.method static synthetic zta(Lcom/android/server/am/N;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, cno(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/N;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, c(II)Z

    move-result p0

    return p0
.end method

.method static zta(Ljava/nio/ByteBuffer;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, EAa:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length p0, p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "LORM-SocketTransition"

    const-string v1, "Error reading from omm socket"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, CAa:Landroid/net/LocalSocket;

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 p0, 0x0

    sput-object p0, CAa:Landroid/net/LocalSocket;

    return v0
.end method

.method public static zta([BLjava/nio/ByteBuffer;)Z
    .locals 7

    sget-object v0, BAa:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/E;->getInstance()Lcom/android/server/am/E;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/E;->Fc()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    sget-boolean v1, JAa:Z

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    move v1, v2

    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_4

    sget-object v3, CAa:Landroid/net/LocalSocket;

    if-nez v3, :cond_1

    invoke-static {}, Xv()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const-wide/16 v3, 0xa

    :try_start_1
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "LORM-SocketTransition"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "writeOMM InterruptedException "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {p0}, cno([B)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz p1, :cond_2

    invoke-static {p1}, zta(Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ne v1, v3, :cond_5

    const-string p0, "LORM-SocketTransition"

    const-string p1, "openOMMSocketLS times out"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    monitor-exit v0

    return v2

    :cond_6
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public Ga(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method bio(Ljava/lang/String;I)Z
    .locals 1

    iget-object p0, p0, mAMS:Lcom/android/server/am/ActivityManagerService;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;IZ)Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method gck(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/gck;->tl:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x11e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, IAa:Z

    if-eqz v0, :cond_0

    iput-object p1, p0, mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    iget-object v0, p0, eAa:Lcom/android/server/am/N$you;

    invoke-virtual {p1, v0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$zta;)V

    invoke-direct {p0}, Yv()V

    new-instance p1, Lcom/android/server/am/M;

    invoke-direct {p1, p0}, Lcom/android/server/am/M;-><init>(Lcom/android/server/am/N;)V

    iput-object p1, p0, mRunnable:Ljava/lang/Runnable;

    iget-object p1, p0, mHandler:Lcom/android/server/am/N$sis;

    iget-object p0, p0, mRunnable:Ljava/lang/Runnable;

    const-wide/32 v0, 0x5265c00

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string p0, "LORM-SocketTransition"

    const-string p1, "SocketTransition init part2"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method obl(II)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/K;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/am/K;->gE:Z

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method removeProc(II)V
    .locals 2

    invoke-static {p1, p2}, Lcom/android/server/am/AppRecordManager;->getAppRecord(II)Lcom/android/server/am/tsu;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/am/tsu;->cjf(I)Lcom/android/server/am/K;

    move-result-object p1

    iget-object p2, p0, dAa:Ljava/util/Set;

    monitor-enter p2

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, dAa:Ljava/util/Set;

    iget-object v1, p1, Lcom/android/server/am/K;->eE:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, dAa:Ljava/util/Set;

    iget-object p1, p1, Lcom/android/server/am/K;->eE:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public sis(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pss"

    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "pssUpdate"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createPssUpdate Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->qeg(Ljava/lang/String;)V

    return-object v0
.end method

.method public you(Ljava/lang/String;IIJ)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "bm"

    invoke-virtual {p0, p1, p4, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p1, "processStateBM"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createProcessStateBM Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->qeg(Ljava/lang/String;)V

    return-object v0
.end method

.method public you(Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public zta(Ljava/lang/String;IILjava/lang/String;I)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "proc"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "bm"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "processStart"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createProcessStart Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->qeg(Ljava/lang/String;)V

    return-object v0
.end method

.method public zta(Ljava/lang/String;IILjava/lang/String;II)Lorg/json/JSONObject;
    .locals 2

    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "pkg"

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "uid"

    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pid"

    invoke-virtual {p0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "proc"

    invoke-virtual {p0, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "reason"

    invoke-virtual {p0, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "diedAdj"

    invoke-virtual {p0, p1, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "processRemove"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object p0

    const-string p1, "LORM-SocketTransition"

    const-string p2, "createProcessRemove Exception"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/gck;->qeg(Ljava/lang/String;)V

    return-object v0
.end method
