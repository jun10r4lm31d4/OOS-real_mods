.class Lcom/oneplus/android/server/bluetooth/cno;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final DBG:Z = true

.field static final TAG:Ljava/lang/String; = "OpBluetoothMonitorIotDevice"

.field private static final ema:Ljava/lang/String; = "F6X2WLDK2K"

.field private static final fma:Ljava/lang/String; = "bt_iot_device_broadcast"

.field private static final gma:I = 0x1

.field private static final hma:I = 0x493e0


# instance fields
.field private Rla:Ljava/lang/String;

.field private Sla:I

.field private Tla:I

.field private Ula:I

.field private Vla:I

.field private Wla:I

.field private Xla:I

.field private Yla:Ljava/lang/String;

.field private Zla:I

.field private _la:I

.field private ama:I

.field private bma:I

.field private cma:Landroid/bluetooth/BluetoothDevice;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private sRecorder:Lcom/oneplus/android/server/bluetooth/qbh;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/android/server/bluetooth/ssp;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/ssp;-><init>(Lcom/oneplus/android/server/bluetooth/cno;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    iput-object p1, p0, mContext:Landroid/content/Context;

    const-string p1, ""

    iput-object p1, p0, Rla:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Sla:I

    iput v0, p0, Tla:I

    iput v0, p0, Ula:I

    iput v0, p0, Vla:I

    iput v0, p0, Wla:I

    iput v0, p0, Xla:I

    iput-object p1, p0, Yla:Ljava/lang/String;

    iput v0, p0, Zla:I

    iput v0, p0, _la:I

    iput v0, p0, ama:I

    iput v0, p0, bma:I

    const/4 p1, 0x0

    iput-object p1, p0, cma:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Tla:I

    return p0
.end method

.method static synthetic cno(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Xla:I

    return p0
.end method

.method static synthetic gck(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Wla:I

    return p0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Ula:I

    return p0
.end method

.method static synthetic kth(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Sla:I

    return p0
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Zla:I

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, bma:I

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, _la:I

    return p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/bluetooth/cno;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    iget-object p0, p0, cma:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, ama:I

    return p0
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/bluetooth/cno;)I
    .locals 0

    iget p0, p0, Vla:I

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/bluetooth/cno;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Rla:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/bluetooth/cno;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Yla:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/cno;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iget-object p0, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/cno;Lnet/oneplus/odm/OpDeviceManagerInjector;)Lnet/oneplus/odm/OpDeviceManagerInjector;
    .locals 0

    iput-object p1, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    return-object p1
.end method


# virtual methods
.method public zta(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;IIIIIILjava/lang/String;IIII)V
    .locals 4

    move-object v0, p0

    iget-object v1, v0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    const-string v3, "OpBluetoothMonitorIotDevice"

    if-eqz v1, :cond_0

    const-string v0, "ignore"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-object v1, p2

    iput-object v1, v0, Rla:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Sla:I

    move v1, p4

    iput v1, v0, Tla:I

    move v1, p5

    iput v1, v0, Ula:I

    move v1, p6

    iput v1, v0, Vla:I

    move v1, p7

    iput v1, v0, Wla:I

    move v1, p8

    iput v1, v0, Xla:I

    move-object v1, p9

    iput-object v1, v0, Yla:Ljava/lang/String;

    move v1, p10

    iput v1, v0, Zla:I

    move v1, p11

    iput v1, v0, _la:I

    move/from16 v1, p12

    iput v1, v0, ama:I

    move/from16 v1, p13

    iput v1, v0, bma:I

    move-object v1, p1

    iput-object v1, v0, cma:Landroid/bluetooth/BluetoothDevice;

    iget-object v1, v0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-string v2, "Receive Device IOT Broadcast"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, mHandler:Landroid/os/Handler;

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public zta(Lcom/oneplus/android/server/bluetooth/qbh;)V
    .locals 0

    iput-object p1, p0, sRecorder:Lcom/oneplus/android/server/bluetooth/qbh;

    return-void
.end method
