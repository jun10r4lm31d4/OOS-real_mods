.class final Lcom/android/server/hdmi/SendKeyAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "SendKeyAction.java"


# static fields
.field private static final AWAIT_LONGPRESS_MS:I = 0x190

.field private static final AWAIT_RELEASE_KEY_MS:I = 0x3e8

.field private static final STATE_CHECKING_LONGPRESS:I = 0x1

.field private static final STATE_PROCESSING_KEYCODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "SendKeyAction"


# instance fields
.field private mLastKeycode:I

.field private mLastSendKeyTime:J

.field private final mTargetAddress:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;II)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    iput p2, p0, mTargetAddress:I

    iput p3, p0, mLastKeycode:I

    return-void
.end method

.method private getCurrentTime()J
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private sendKeyDown(I)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->androidKeyToCecKey(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, mTargetAddress:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    invoke-virtual {p0}, localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v1

    iget v1, v1, Lcom/android/server/hdmi/HdmiCecLocalDevice;->mAddress:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    iget v2, p0, mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/SendKeyAction$1;

    invoke-direct {v2, p0}, Lcom/android/server/hdmi/SendKeyAction$1;-><init>(Lcom/android/server/hdmi/SendKeyAction;)V

    invoke-virtual {p0, v1, v2}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, getSourceAddress()I

    move-result v1

    iget v2, p0, mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    invoke-virtual {p0, v1}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    :goto_0
    return-void
.end method

.method private sendKeyUp()V
    .locals 2

    invoke-virtual {p0}, getSourceAddress()I

    move-result v0

    iget v1, p0, mTargetAddress:I

    invoke-static {v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 3

    iget v0, p0, mState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0}, sendKeyUp()V

    invoke-virtual {p0}, finish()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    iput v2, p0, mState:I

    iget v0, p0, mLastKeycode:I

    invoke-direct {p0, v0}, sendKeyDown(I)V

    invoke-direct {p0}, getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, mLastSendKeyTime:J

    iget v0, p0, mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    nop

    :goto_0
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method processKeyEvent(IZ)V
    .locals 4

    iget v0, p0, mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, mState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "SendKeyAction"

    const-string v1, "Not in a valid state"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_3

    iget v0, p0, mLastKeycode:I

    if-eq p1, v0, :cond_1

    invoke-direct {p0, p1}, sendKeyDown(I)V

    invoke-direct {p0}, getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, mLastSendKeyTime:J

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, sendKeyUp()V

    invoke-virtual {p0}, finish()V

    return-void

    :cond_1
    invoke-direct {p0}, getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, mLastSendKeyTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    invoke-direct {p0, p1}, sendKeyDown(I)V

    invoke-direct {p0}, getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, mLastSendKeyTime:J

    :cond_2
    iget-object v0, p0, mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    iget v0, p0, mState:I

    const/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1}, addTimer(II)V

    iput p1, p0, mLastKeycode:I

    goto :goto_0

    :cond_3
    iget v0, p0, mLastKeycode:I

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, sendKeyUp()V

    invoke-virtual {p0}, finish()V

    :cond_4
    :goto_0
    return-void
.end method

.method public start()Z
    .locals 3

    iget v0, p0, mLastKeycode:I

    invoke-direct {p0, v0}, sendKeyDown(I)V

    invoke-direct {p0}, getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, mLastSendKeyTime:J

    iget v0, p0, mLastKeycode:I

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecKeycode;->isRepeatableKey(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0}, sendKeyUp()V

    invoke-virtual {p0}, finish()V

    return v1

    :cond_0
    iput v1, p0, mState:I

    iget v0, p0, mState:I

    const/16 v2, 0x190

    invoke-virtual {p0, v0, v2}, addTimer(II)V

    return v1
.end method
