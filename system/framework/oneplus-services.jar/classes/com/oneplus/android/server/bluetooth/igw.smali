.class Lcom/oneplus/android/server/bluetooth/igw;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final APPID:Ljava/lang/String; = "F6X2WLDK2K"

.field static final DBG:Z = true

.field private static final ONE_DAY:J = 0x5265c00L

.field static final TAG:Ljava/lang/String; = "OpBluetoothMonitorServiceOnOff"

.field static final VDBG:Z = false

.field private static final jma:Ljava/lang/String; = "bt_of_off_package_name"

.field private static final kma:Ljava/lang/String; = "bt_on_off_status"

.field private static final lma:I = 0x1


# instance fields
.field private ima:J

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private sRecorder:Lcom/oneplus/android/server/bluetooth/qbh;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, ima:J

    new-instance v0, Lcom/oneplus/android/server/bluetooth/kth;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/bluetooth/kth;-><init>(Lcom/oneplus/android/server/bluetooth/igw;Landroid/os/Handler;)V

    iput-object v0, p0, mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/oneplus/android/server/bluetooth/bio;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/bio;-><init>(Lcom/oneplus/android/server/bluetooth/igw;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    iput-object p1, p0, mContext:Landroid/content/Context;

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object p1, p0, mContentResolver:Landroid/content/ContentResolver;

    if-eqz p1, :cond_1

    const-string v0, "airplane_mode_radios"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-object p1, p0, mContentResolver:Landroid/content/ContentResolver;

    const-string v0, "airplane_mode_on"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x1

    iget-object p0, p0, mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p0, "OpBluetoothMonitorServiceOnOff"

    const-string p1, "AirplaneModeObserver registered"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "airplane_mode_on"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private k(J)V
    .locals 5

    const-string v0, "OpBluetoothMonitorServiceOnOff"

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v2, "Check Bluetooth Service Enabled Time info"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v3, 0x3e8

    div-long/2addr p1, v3

    long-to-int p1, p1

    const-string p2, "status"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "appid"

    const-string v3, "F6X2WLDK2K"

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, mContext:Landroid/content/Context;

    const-string p2, "bt_on_off_status"

    invoke-virtual {v1, p0, p2, v2, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Check Bluetooth Service Enabled Time info fail"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/bluetooth/igw;)Lcom/oneplus/android/server/bluetooth/qbh;
    .locals 0

    iget-object p0, p0, sRecorder:Lcom/oneplus/android/server/bluetooth/qbh;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/bluetooth/igw;)Z
    .locals 0

    invoke-direct {p0}, isAirplaneModeOn()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/igw;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    iget-object p0, p0, mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/igw;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, k(J)V

    return-void
.end method


# virtual methods
.method public B(Z)V
    .locals 6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0x5265c00

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, ima:J

    goto :goto_0

    :cond_1
    iget-object p1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-wide v0, p0, ima:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, ima:J

    sub-long/2addr v0, v4

    invoke-direct {p0, v0, v1}, k(J)V

    :cond_3
    iput-wide v2, p0, ima:J

    :goto_0
    return-void
.end method

.method public zta(Lcom/oneplus/android/server/bluetooth/qbh;)V
    .locals 0

    iput-object p1, p0, sRecorder:Lcom/oneplus/android/server/bluetooth/qbh;

    return-void
.end method

.method public zta(ZILjava/lang/String;)Z
    .locals 4

    const-string v0, "OpBluetoothMonitorServiceOnOff"

    invoke-virtual {p0, p1}, B(Z)V

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-eq p2, v2, :cond_3

    const/16 v2, 0x8

    if-eq p2, v2, :cond_3

    const/16 v2, 0x9

    if-ne p2, v2, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "com.oem.omelogkit"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v2

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const-string p1, "0"

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v3, "en"

    invoke-virtual {v1, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "rsn"

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "pn"

    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string p1, "Check Enable Info"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "appid"

    const-string p3, "F6X2WLDK2K"

    invoke-virtual {p1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, mContext:Landroid/content/Context;

    const-string p2, "bt_of_off_package_name"

    invoke-virtual {v2, p0, p2, v1, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "Check Enable Info Fail"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_2
    return v1
.end method
