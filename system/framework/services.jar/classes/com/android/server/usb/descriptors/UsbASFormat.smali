.class public Lcom/android/server/usb/descriptors/UsbASFormat;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbASFormat.java"


# static fields
.field public static final EXT_FORMAT_TYPE_I:B = -0x7ft

.field public static final EXT_FORMAT_TYPE_II:B = -0x7et

.field public static final EXT_FORMAT_TYPE_III:B = -0x7dt

.field public static final FORMAT_TYPE_I:B = 0x1t

.field public static final FORMAT_TYPE_II:B = 0x2t

.field public static final FORMAT_TYPE_III:B = 0x3t

.field public static final FORMAT_TYPE_IV:B = 0x4t

.field private static final TAG:Ljava/lang/String; = "UsbASFormat"


# instance fields
.field private final mFormatType:B


# direct methods
.method public constructor <init>(IBBBI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    iput-byte p4, p0, mFormatType:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 9

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result v7

    const/4 v0, 0x1

    const/16 v1, 0x200

    if-eq v6, v0, :cond_3

    const/4 v0, 0x2

    if-eq v6, v0, :cond_1

    const/4 v0, 0x3

    if-eq v6, v0, :cond_0

    new-instance v8, Lcom/android/server/usb/descriptors/UsbASFormat;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, <init>(IBBBI)V

    return-object v8

    :cond_0
    new-instance v8, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;-><init>(IBBBI)V

    return-object v8

    :cond_1
    if-ne v7, v1, :cond_2

    new-instance v8, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatII;-><init>(IBBBI)V

    return-object v8

    :cond_2
    new-instance v8, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;-><init>(IBBBI)V

    return-object v8

    :cond_3
    if-ne v7, v1, :cond_4

    new-instance v8, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb20ASFormatI;-><init>(IBBBI)V

    return-object v8

    :cond_4
    new-instance v8, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    move-object v0, v8

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, v6

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;-><init>(IBBBI)V

    return-object v8
.end method


# virtual methods
.method public getBitDepths()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getChannelCounts()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFormatType()B
    .locals 1

    iget-byte v0, p0, mFormatType:B

    return v0
.end method

.method public getSampleRates()[I
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p0}, getFormatType()B

    move-result v0

    invoke-static {v0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getFormatName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    return-void
.end method
