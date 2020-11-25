.class final Lcom/android/server/hdmi/DeviceSelectAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "DeviceSelectAction.java"


# static fields
.field private static final LOOP_COUNTER_MAX:I = 0x14

.field private static final STATE_WAIT_FOR_DEVICE_POWER_ON:I = 0x3

.field private static final STATE_WAIT_FOR_DEVICE_TO_TRANSIT_TO_STANDBY:I = 0x2

.field private static final STATE_WAIT_FOR_REPORT_POWER_STATUS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DeviceSelect"

.field private static final TIMEOUT_POWER_ON_MS:I = 0x1388

.field private static final TIMEOUT_TRANSIT_TO_STANDBY_MS:I = 0x1388


# instance fields
.field private final mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

.field private final mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

.field private mPowerStatusCounter:I

.field private final mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Landroid/hardware/hdmi/HdmiDeviceInfo;Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 v0, 0x0

    iput v0, p0, mPowerStatusCounter:I

    iput-object p3, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    iput-object p2, p0, mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    nop

    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    invoke-virtual {p0}, getTargetAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    iput-object v0, p0, mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/hdmi/DeviceSelectAction;I)V
    .locals 0

    invoke-direct {p0, p1}, invokeCallback(I)V

    return-void
.end method

.method private handleReportPowerStatus(I)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    if-eq p1, v0, :cond_4

    const/16 v1, 0x1388

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v2, p0, mPowerStatusCounter:I

    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    iput v3, p0, mState:I

    iget v2, p0, mState:I

    invoke-virtual {p0, v2, v1}, addTimer(II)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, sendSetStreamPath()V

    :goto_0
    return v0

    :cond_2
    iget v3, p0, mPowerStatusCounter:I

    const/16 v4, 0x14

    if-ge v3, v4, :cond_3

    iput v2, p0, mState:I

    iget v2, p0, mState:I

    invoke-virtual {p0, v2, v1}, addTimer(II)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, sendSetStreamPath()V

    :goto_1
    return v0

    :cond_4
    iget v1, p0, mPowerStatusCounter:I

    if-nez v1, :cond_5

    invoke-direct {p0}, turnOnDevice()V

    goto :goto_2

    :cond_5
    invoke-direct {p0}, sendSetStreamPath()V

    :goto_2
    return v0

    :cond_6
    invoke-direct {p0}, sendSetStreamPath()V

    return v0
.end method

.method private invokeCallback(I)V
    .locals 3

    iget-object v0, p0, mCallback:Landroid/hardware/hdmi/IHdmiControlCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/hdmi/IHdmiControlCallback;->onComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DeviceSelect"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private queryDevicePowerStatus()V
    .locals 2

    iget-object v0, p0, mGivePowerStatus:Lcom/android/server/hdmi/HdmiCecMessage;

    new-instance v1, Lcom/android/server/hdmi/DeviceSelectAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/DeviceSelectAction$1;-><init>(Lcom/android/server/hdmi/DeviceSelectAction;)V

    invoke-virtual {p0, v0, v1}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    const/4 v0, 0x1

    iput v0, p0, mState:I

    iget v0, p0, mState:I

    const/16 v1, 0x7d0

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    return-void
.end method

.method private sendSetStreamPath()V
    .locals 2

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getActiveSource()Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    iget-object v1, p0, mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setActivePath(I)V

    nop

    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget-object v1, p0, mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, invokeCallback(I)V

    invoke-virtual {p0}, finish()V

    return-void
.end method

.method private turnOnDevice()V
    .locals 2

    iget-object v0, p0, mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x40

    invoke-virtual {p0, v0, v1}, sendUserControlPressedAndReleased(II)V

    iget-object v0, p0, mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    const/16 v1, 0x6d

    invoke-virtual {p0, v0, v1}, sendUserControlPressedAndReleased(II)V

    const/4 v0, 0x3

    iput v0, p0, mState:I

    iget v0, p0, mState:I

    const/16 v1, 0x1388

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    return-void
.end method


# virtual methods
.method getTargetAddress()I
    .locals 1

    iget-object v0, p0, mTarget:Landroid/hardware/hdmi/HdmiDeviceInfo;

    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result v0

    return v0
.end method

.method public handleTimerEvent(I)V
    .locals 3

    iget v0, p0, mState:I

    if-eq v0, p1, :cond_0

    const-string v0, "DeviceSelect"

    const-string v1, "Timer in a wrong state. Ignored."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p0, mPowerStatusCounter:I

    add-int/2addr v0, v1

    iput v0, p0, mPowerStatusCounter:I

    invoke-direct {p0}, queryDevicePowerStatus()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->isPowerStandbyOrTransient()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x6

    invoke-direct {p0, v0}, invokeCallback(I)V

    invoke-virtual {p0}, finish()V

    return-void

    :cond_3
    invoke-direct {p0}, sendSetStreamPath()V

    nop

    :goto_0
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v0

    invoke-virtual {p0}, getTargetAddress()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v1

    iget v3, p0, mState:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    const/16 v3, 0x90

    if-ne v0, v3, :cond_2

    aget-byte v2, v1, v2

    invoke-direct {p0, v2}, handleReportPowerStatus(I)Z

    move-result v2

    return v2

    :cond_2
    return v2
.end method

.method public start()Z
    .locals 1

    invoke-direct {p0}, queryDevicePowerStatus()V

    const/4 v0, 0x1

    return v0
.end method
