.class final Lcom/android/server/display/DisplayDeviceInfo;
.super Ljava/lang/Object;
.source "DisplayDeviceInfo.java"


# static fields
.field public static final DIFF_COLOR_MODE:I = 0x4

.field public static final DIFF_OTHER:I = 0x2

.field public static final DIFF_STATE:I = 0x1

.field public static final FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD:I = 0x200

.field public static final FLAG_DEFAULT_DISPLAY:I = 0x1

.field public static final FLAG_DESTROY_CONTENT_ON_REMOVAL:I = 0x400

.field public static final FLAG_MASK_DISPLAY_CUTOUT:I = 0x800

.field public static final FLAG_NEVER_BLANK:I = 0x20

.field public static final FLAG_OWN_CONTENT_ONLY:I = 0x80

.field public static final FLAG_PRESENTATION:I = 0x40

.field public static final FLAG_PRIVATE:I = 0x10

.field public static final FLAG_ROTATES_WITH_CONTENT:I = 0x2

.field public static final FLAG_ROUND:I = 0x100

.field public static final FLAG_SECURE:I = 0x4

.field public static final FLAG_SHOULD_SHOW_SYSTEM_DECORATIONS:I = 0x1000

.field public static final FLAG_SUPPORTS_PROTECTED_BUFFERS:I = 0x8

.field public static final TOUCH_EXTERNAL:I = 0x2

.field public static final TOUCH_INTERNAL:I = 0x1

.field public static final TOUCH_NONE:I = 0x0

.field public static final TOUCH_VIRTUAL:I = 0x3


# instance fields
.field public address:Landroid/view/DisplayAddress;

.field public appVsyncOffsetNanos:J

.field public colorMode:I

.field public defaultModeId:I

.field public densityDpi:I

.field public displayCutout:Landroid/view/DisplayCutout;

.field public flags:I

.field public hdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public height:I

.field public modeId:I

.field public name:Ljava/lang/String;

.field public ownerPackageName:Ljava/lang/String;

.field public ownerUid:I

.field public presentationDeadlineNanos:J

.field public rotation:I

.field public state:I

.field public supportedColorModes:[I

.field public supportedModes:[Landroid/view/Display$Mode;

.field public touch:I

.field public type:I

.field public uniqueId:Ljava/lang/String;

.field public width:I

.field public xDpi:F

.field public yDpi:F


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/view/Display$Mode;->EMPTY_ARRAY:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    iput-object v0, p0, supportedColorModes:[I

    iput v1, p0, rotation:I

    const/4 v0, 0x2

    iput v0, p0, state:I

    return-void
.end method

.method private static flagsToString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, ", FLAG_DEFAULT_DISPLAY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, ", FLAG_ROTATES_WITH_CONTENT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_2

    const-string v1, ", FLAG_SECURE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_3

    const-string v1, ", FLAG_SUPPORTS_PROTECTED_BUFFERS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_4

    const-string v1, ", FLAG_PRIVATE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_5

    const-string v1, ", FLAG_NEVER_BLANK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_6

    const-string v1, ", FLAG_PRESENTATION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_7

    const-string v1, ", FLAG_OWN_CONTENT_ONLY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_8

    const-string v1, ", FLAG_ROUND"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_9

    const-string v1, ", FLAG_CAN_SHOW_WITH_INSECURE_KEYGUARD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    and-int/lit16 v1, p0, 0x800

    if-eqz v1, :cond_a

    const-string v1, ", FLAG_MASK_DISPLAY_CUTOUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static touchToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "VIRTUAL"

    return-object v0

    :cond_1
    const-string v0, "EXTERNAL"

    return-object v0

    :cond_2
    const-string v0, "INTERNAL"

    return-object v0

    :cond_3
    const-string v0, "NONE"

    return-object v0
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/display/DisplayDeviceInfo;)V
    .locals 2

    iget-object v0, p1, name:Ljava/lang/String;

    iput-object v0, p0, name:Ljava/lang/String;

    iget-object v0, p1, uniqueId:Ljava/lang/String;

    iput-object v0, p0, uniqueId:Ljava/lang/String;

    iget v0, p1, width:I

    iput v0, p0, width:I

    iget v0, p1, height:I

    iput v0, p0, height:I

    iget v0, p1, modeId:I

    iput v0, p0, modeId:I

    iget v0, p1, defaultModeId:I

    iput v0, p0, defaultModeId:I

    iget-object v0, p1, supportedModes:[Landroid/view/Display$Mode;

    iput-object v0, p0, supportedModes:[Landroid/view/Display$Mode;

    iget v0, p1, colorMode:I

    iput v0, p0, colorMode:I

    iget-object v0, p1, supportedColorModes:[I

    iput-object v0, p0, supportedColorModes:[I

    iget-object v0, p1, hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v0, p0, hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget v0, p1, densityDpi:I

    iput v0, p0, densityDpi:I

    iget v0, p1, xDpi:F

    iput v0, p0, xDpi:F

    iget v0, p1, yDpi:F

    iput v0, p0, yDpi:F

    iget-wide v0, p1, appVsyncOffsetNanos:J

    iput-wide v0, p0, appVsyncOffsetNanos:J

    iget-wide v0, p1, presentationDeadlineNanos:J

    iput-wide v0, p0, presentationDeadlineNanos:J

    iget v0, p1, flags:I

    iput v0, p0, flags:I

    iget-object v0, p1, displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, displayCutout:Landroid/view/DisplayCutout;

    iget v0, p1, touch:I

    iput v0, p0, touch:I

    iget v0, p1, rotation:I

    iput v0, p0, rotation:I

    iget v0, p1, type:I

    iput v0, p0, type:I

    iget-object v0, p1, address:Landroid/view/DisplayAddress;

    iput-object v0, p0, address:Landroid/view/DisplayAddress;

    iget v0, p1, state:I

    iput v0, p0, state:I

    iget v0, p1, ownerUid:I

    iput v0, p0, ownerUid:I

    iget-object v0, p1, ownerPackageName:Ljava/lang/String;

    iput-object v0, p0, ownerPackageName:Ljava/lang/String;

    return-void
.end method

.method public diff(Lcom/android/server/display/DisplayDeviceInfo;)I
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, state:I

    iget v2, p1, state:I

    if-eq v1, v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    iget v1, p0, colorMode:I

    iget v2, p1, colorMode:I

    if-eq v1, v2, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget-object v1, p0, name:Ljava/lang/String;

    iget-object v2, p1, name:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, uniqueId:Ljava/lang/String;

    iget-object v2, p1, uniqueId:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, width:I

    iget v2, p1, width:I

    if-ne v1, v2, :cond_2

    iget v1, p0, height:I

    iget v2, p1, height:I

    if-ne v1, v2, :cond_2

    iget v1, p0, modeId:I

    iget v2, p1, modeId:I

    if-ne v1, v2, :cond_2

    iget v1, p0, defaultModeId:I

    iget v2, p1, defaultModeId:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, supportedModes:[Landroid/view/Display$Mode;

    iget-object v2, p1, supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, supportedColorModes:[I

    iget-object v2, p1, supportedColorModes:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iget-object v2, p1, hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, densityDpi:I

    iget v2, p1, densityDpi:I

    if-ne v1, v2, :cond_2

    iget v1, p0, xDpi:F

    iget v2, p1, xDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget v1, p0, yDpi:F

    iget v2, p1, yDpi:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    iget-wide v1, p0, appVsyncOffsetNanos:J

    iget-wide v3, p1, appVsyncOffsetNanos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget-wide v1, p0, presentationDeadlineNanos:J

    iget-wide v3, p1, presentationDeadlineNanos:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    iget v1, p0, flags:I

    iget v2, p1, flags:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, displayCutout:Landroid/view/DisplayCutout;

    iget-object v2, p1, displayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, touch:I

    iget v2, p1, touch:I

    if-ne v1, v2, :cond_2

    iget v1, p0, rotation:I

    iget v2, p1, rotation:I

    if-ne v1, v2, :cond_2

    iget v1, p0, type:I

    iget v2, p1, type:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, address:Landroid/view/DisplayAddress;

    iget-object v2, p1, address:Landroid/view/DisplayAddress;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, ownerUid:I

    iget v2, p1, ownerUid:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    iget-object v2, p1, ownerPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    or-int/lit8 v0, v0, 0x2

    :cond_3
    return v0
.end method

.method public equals(Lcom/android/server/display/DisplayDeviceInfo;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, diff(Lcom/android/server/display/DisplayDeviceInfo;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/server/display/DisplayDeviceInfo;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0, v0}, equals(Lcom/android/server/display/DisplayDeviceInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAssumedDensityForExternalDisplay(II)V
    .locals 2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit16 v0, v0, 0x140

    div-int/lit16 v0, v0, 0x438

    iput v0, p0, densityDpi:I

    iget v0, p0, densityDpi:I

    int-to-float v1, v0

    iput v1, p0, xDpi:F

    int-to-float v0, v0

    iput v0, p0, yDpi:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisplayDeviceInfo{\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\": uniqueId=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, uniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, height:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", modeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, modeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", defaultModeId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, defaultModeId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", supportedModes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", colorMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, colorMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", supportedColorModes "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, supportedColorModes:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", HdrCapabilities "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", density "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, densityDpi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, xDpi:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, yDpi:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " dpi"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", appVsyncOff "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, appVsyncOffsetNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", presDeadline "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, presentationDeadlineNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, displayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_0

    const-string v1, ", cutout "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ", touch "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, touch:I

    invoke-static {v1}, touchToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rotation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, rotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, type:I

    invoke-static {v1}, Landroid/view/Display;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, address:Landroid/view/DisplayAddress;

    if-eqz v1, :cond_1

    const-string v1, ", address "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, address:Landroid/view/DisplayAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ", state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, state:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, ownerUid:I

    if-nez v1, :cond_2

    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, ", owner "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, ownerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, ownerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget v1, p0, flags:I

    invoke-static {v1}, flagsToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method