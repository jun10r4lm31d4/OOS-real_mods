.class Lcom/android/server/audio/BtHelper$BluetoothA2dpDeviceInfo;
.super Ljava/lang/Object;
.source "BtHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/BtHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BluetoothA2dpDeviceInfo"
.end annotation


# instance fields
.field private final mBtDevice:Landroid/bluetooth/BluetoothDevice;

.field private final mCodec:I

.field private final mVolume:I


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, <init>(Landroid/bluetooth/BluetoothDevice;II)V

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mBtDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, mVolume:I

    iput p3, p0, mCodec:I

    return-void
.end method


# virtual methods
.method public getBtDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, mBtDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getCodec()I
    .locals 1

    iget v0, p0, mCodec:I

    return v0
.end method

.method public getVolume()I
    .locals 1

    iget v0, p0, mVolume:I

    return v0
.end method
