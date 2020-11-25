.class Lcom/oneplus/android/server/bluetooth/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/bluetooth/tsu$zta;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final Jla:Ljava/lang/String; = "F6X2WLDK2K"

.field private static final Kla:Ljava/lang/String; = "bt_paired_success"

.field private static final Lla:Ljava/lang/String; = "bt_pair_fail"

.field private static final Mla:I = 0x1

.field private static final Nla:I = 0x2

.field private static final Ola:I = 0xea60

.field private static final Pla:I = 0x3a98

.field static final TAG:Ljava/lang/String; = "OpBluetoothMonitorDeviceState"

.field static final VDBG:Z = false


# instance fields
.field private Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

.field private Hla:Z

.field private Ila:Z

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private zla:Lcom/oneplus/android/server/bluetooth/zta;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/android/server/bluetooth/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mContext:Landroid/content/Context;

    iput-object v0, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iput-object v0, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    const/4 v0, 0x0

    iput-boolean v0, p0, Hla:Z

    iput-boolean v0, p0, Ila:Z

    new-instance v0, Lcom/oneplus/android/server/bluetooth/sis;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/bluetooth/sis;-><init>(Lcom/oneplus/android/server/bluetooth/tsu;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    iput-object p1, p0, mContext:Landroid/content/Context;

    iput-object p2, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    new-instance p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/bluetooth/tsu$zta;-><init>(Lcom/oneplus/android/server/bluetooth/tsu;)V

    iput-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    return-void
.end method

.method private Xc(Ljava/lang/String;)V
    .locals 6

    const-string v0, "OpBluetoothMonitorDeviceState"

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iput-object v1, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v1, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v1, :cond_4

    :try_start_0
    const-string v1, "Check remote device bonded success info"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, cno(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "F6X2WLDK2K"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v4, p0, mContext:Landroid/content/Context;

    const-string v5, "bt_paired_success"

    invoke-virtual {v3, v4, v5, v1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Check remote device bonded success fail"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    iget-object v0, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "mdm_pair_completed"

    const-string v2, "1"

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/android/server/bluetooth/zta;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object p0, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object p0, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    const-string v0, "lmp_ver"

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/android/server/bluetooth/zta;->qbh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private cno(Landroid/bluetooth/BluetoothDevice;)Ljava/util/HashMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v5, ""

    const-string v6, ":"

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "n"

    invoke-virtual {p0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    if-eqz v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v7

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "c"

    invoke-virtual {p0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "t"

    invoke-virtual {p0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "a"

    invoke-virtual {p0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    const-string v6, "model"

    if-eqz v2, :cond_3

    const-string v2, "CAR"

    goto :goto_1

    :cond_3
    const-string v2, "NONE"

    :goto_1
    invoke-virtual {p0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/oif;->ya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "s"

    invoke-virtual {p0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_7

    array-length p1, v1

    move v0, v4

    move-object v2, v5

    :goto_2
    if-ge v0, p1, :cond_6

    aget-object v6, v1, v0

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "00000000"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    :goto_3
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/ParcelUuid;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const-string p1, "u"

    invoke-virtual {p0, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_7
    return-object v0
.end method

.method private kth(Landroid/bluetooth/BluetoothDevice;)V
    .locals 10

    const-string v0, "UNKNOW"

    const-string v1, "OpBluetoothMonitorDeviceState"

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v4, v4, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iput-object v3, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v3, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v3, :cond_e

    :try_start_0
    const-string v3, "Check remote device bond fail info"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v4, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v4, v4, Lcom/oneplus/android/server/bluetooth/tsu$zta;->name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "n"

    const-string v6, ""

    if-nez v4, :cond_2

    :try_start_1
    iget-object v4, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v4, v4, Lcom/oneplus/android/server/bluetooth/tsu$zta;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v4, v4, Lcom/oneplus/android/server/bluetooth/tsu$zta;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :goto_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v5, "0"

    if-eqz v4, :cond_5

    :try_start_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothClass;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v8, "0x"

    const-string v9, "c"

    if-nez v7, :cond_4

    :try_start_3
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v3, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_4
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget v7, v7, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Fla:I

    const/16 v8, 0x10

    invoke-static {v7, v8}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_5
    :goto_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v7, ":"

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->getInstance()Lcom/oneplus/android/connectivity/OpConnectivityUtils;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-virtual {v6, v4}, Lcom/oneplus/android/connectivity/OpConnectivityUtils;->ouiToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    const-string v4, "a"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothAdapter;->isCarkit(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "model"

    if-eqz p1, :cond_7

    :try_start_4
    const-string p1, "CAR"

    :goto_5
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :cond_7
    const-string p1, "NONE"

    goto :goto_5

    :goto_6
    const-string p1, "e"

    iget-object v0, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget v0, v0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->err:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Cla:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "lv"

    if-eqz p1, :cond_8

    :try_start_5
    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Cla:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_7
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :cond_8
    iget-object p1, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object v2, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v2, v2, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    const-string v4, "lmp_ver"

    invoke-virtual {p1, v2, v4}, Lcom/oneplus/android/server/bluetooth/zta;->qbh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Dla:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v0, "lsv"

    if-eqz p1, :cond_a

    :try_start_6
    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Dla:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_9
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_a
    iget-object p1, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object v2, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v2, v2, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    const-string v4, "lmp_subver"

    invoke-virtual {p1, v2, v4}, Lcom/oneplus/android/server/bluetooth/zta;->qbh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_b

    goto :goto_9

    :cond_b
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Ela:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v0, "m"

    if-eqz p1, :cond_c

    :try_start_7
    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Ela:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_b
    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_c
    iget-object p1, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    iget-object v2, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v2, v2, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    const-string v4, "manufacturer_id"

    invoke-virtual {p1, v2, v4}, Lcom/oneplus/android/server/bluetooth/zta;->qbh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    goto :goto_b

    :cond_d
    invoke-virtual {v3, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c
    iget-object p1, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object p1, p1, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/android/server/bluetooth/oif;->ya(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "s"

    invoke-virtual {v3, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "appid"

    const-string v2, "F6X2WLDK2K"

    invoke-virtual {p1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object p0, p0, mContext:Landroid/content/Context;

    const-string v2, "bt_pair_fail"

    invoke-virtual {v0, p0, v2, v3, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_d

    :catch_0
    move-exception p0

    const-string p1, "Check remote device bonded fail fail"

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_d
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/tsu;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, kth(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/bluetooth/tsu;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Xc(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    iput-boolean p1, p0, Hla:Z

    return-void
.end method

.method public rtg(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, zla:Lcom/oneplus/android/server/bluetooth/zta;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mdm_pair_completed"

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/android/server/bluetooth/zta;->qbh(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string p1, "OpBluetoothMonitorDeviceState"

    const-string v1, "Receive Bluetooth remote device bonded"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method public tsu(Landroid/bluetooth/BluetoothDevice;)V
    .locals 3

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    if-eqz p1, :cond_1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_1
    const-string p1, "OpBluetoothMonitorDeviceState"

    const-string v1, "Receive Bluetooth remote device bond failed"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p1, p0, Hla:Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    iget-boolean p1, p0, Ila:Z

    if-nez p1, :cond_2

    iget-object p1, p0, mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3a98

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Hla:Z

    iput-boolean p1, p0, Ila:Z

    return-void
.end method

.method public z(Z)V
    .locals 0

    iput-boolean p1, p0, Ila:Z

    return-void
.end method

.method public zta(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 8

    const/16 p1, 0xb

    if-ne p2, p1, :cond_0

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const-string v1, "00:00:00:00:00:00"

    const-string v2, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, zta(Ljava/lang/String;Ljava/lang/String;IIIII)V

    :cond_0
    const/16 v0, 0xc

    const/4 v1, 0x0

    if-ne p2, v0, :cond_1

    iput-boolean v1, p0, Hla:Z

    :cond_1
    if-ne p2, p1, :cond_2

    const/16 p1, 0xa

    if-ne p3, p1, :cond_2

    iput-boolean v1, p0, Ila:Z

    :cond_2
    return-void
.end method

.method public zta(Ljava/lang/String;Ljava/lang/String;IIIII)V
    .locals 2

    iget-object v0, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iget-object v1, v0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    if-ne v1, p1, :cond_0

    iget v0, v0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->err:I

    if-eq v0, p3, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Gla:Lcom/oneplus/android/server/bluetooth/tsu$zta;

    iput-object p1, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->address:Ljava/lang/String;

    iput p3, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->err:I

    iput-object p2, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->name:Ljava/lang/String;

    iput p4, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Cla:I

    iput p5, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Dla:I

    iput p6, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Ela:I

    iput p7, p0, Lcom/oneplus/android/server/bluetooth/tsu$zta;->Fla:I

    return-void
.end method
