.class public Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# static fields
.field private static final OSD_NAME_MAX_LENGTH:I = 0xd


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    nop

    invoke-static {p1}, physicalAddressToParam(I)[B

    move-result-object v0

    const/16 v1, 0xf

    const/16 v2, 0x82

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x9e

    invoke-static {p0, p1, v1, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x33

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x99

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa1

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method private static buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    sget-object v1, Lcom/android/server/hdmi/HdmiCecMessage;->EMPTY_PARAM:[B

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v0
.end method

.method private static buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    invoke-static {p0, p1, p2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    const/16 v2, 0x87

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p3, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    invoke-static {p0, p1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x71

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x8f

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x8c

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x46

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x83

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x7d

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    nop

    invoke-static {p1}, physicalAddressToParam(I)[B

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9d

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc0

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc1

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc2

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 v1, 0x80

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    int-to-byte v1, v1

    int-to-byte v2, p2

    and-int/lit8 v2, v2, 0x7f

    or-int/2addr v1, v2

    int-to-byte v1, v1

    const/4 v2, 0x1

    new-array v2, v2, [B

    aput-byte v1, v2, v0

    move-object v0, v2

    const/16 v2, 0x7a

    invoke-static {p0, p1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x8e

    invoke-static {p0, p1, v1, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    const/16 v2, 0x84

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x90

    invoke-static {p0, p1, v1, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa3

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x7e

    invoke-static {p0, p1, v0, p2}, buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x85

    invoke-static {p0, v0, v1}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc3

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc4

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    array-length v0, p2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget v2, p2, v1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0xa4

    invoke-static {p0, p1, v1, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    const/16 v2, 0x80

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    nop

    invoke-static {p1}, physicalAddressToParam(I)[B

    move-result-object v0

    const/16 v1, 0xf

    const/16 v2, 0x81

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x34

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x97

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa2

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    const/16 v3, 0x32

    invoke-static {p0, v2, v3, v1}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2
.end method

.method static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xd

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "US-ASCII"

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/16 v2, 0x47

    invoke-static {p0, p1, v2, v1}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    return-object v2
.end method

.method static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    nop

    invoke-static {p1}, physicalAddressToParam(I)[B

    move-result-object v0

    const/16 v1, 0xf

    const/16 v2, 0x86

    invoke-static {p0, v1, v2, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x72

    invoke-static {p0, p1, v0, p2}, buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x36

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0x70

    if-eqz p3, :cond_0

    nop

    invoke-static {p2}, physicalAddressToParam(I)[B

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc5

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    invoke-static {p0, p1, v0}, buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x44

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x45

    invoke-static {p0, p1, v0}, buildCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x89

    invoke-static {p0, p1, v0, p2}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    return-object v0
.end method

.method static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5

    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x2

    aput-byte v2, v0, v4

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa0

    invoke-static {p0, p1, v1, v0}, buildCommand(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v1

    return-object v1
.end method

.method static of(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    const/4 v0, 0x0

    aget-byte v0, p2, v0

    array-length v1, p2

    const/4 v2, 0x1

    invoke-static {p2, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[B)V

    return-object v2
.end method

.method private static physicalAddressToParam(I)[B
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [B

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    return-object v0
.end method
