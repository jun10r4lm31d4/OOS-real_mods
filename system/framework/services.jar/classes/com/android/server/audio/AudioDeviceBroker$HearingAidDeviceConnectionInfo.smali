.class final Lcom/android/server/audio/AudioDeviceBroker$HearingAidDeviceConnectionInfo;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioDeviceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HearingAidDeviceConnectionInfo"
.end annotation


# instance fields
.field final mDevice:Landroid/bluetooth/BluetoothDevice;

.field final mEventSource:Ljava/lang/String;

.field final mMusicDevice:I

.field final mState:I

.field final mSupprNoisy:Z


# direct methods
.method constructor <init>(Landroid/bluetooth/BluetoothDevice;IZILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mDevice:Landroid/bluetooth/BluetoothDevice;

    iput p2, p0, mState:I

    iput-boolean p3, p0, mSupprNoisy:Z

    iput p4, p0, mMusicDevice:I

    iput-object p5, p0, mEventSource:Ljava/lang/String;

    return-void
.end method
