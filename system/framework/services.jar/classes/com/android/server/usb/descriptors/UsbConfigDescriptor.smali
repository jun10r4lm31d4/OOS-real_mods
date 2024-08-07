.class public final Lcom/android/server/usb/descriptors/UsbConfigDescriptor;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbConfigDescriptor.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "UsbConfigDescriptor"


# instance fields
.field private mAttribs:I

.field private mConfigIndex:B

.field private mConfigValue:I

.field private mInterfaceDescriptors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxPower:I

.field private mNumInterfaces:B

.field private mTotalLength:I


# direct methods
.method constructor <init>(IB)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mInterfaceDescriptors:Ljava/util/ArrayList;

    const/4 v0, 0x2

    iput v0, p0, mHierarchyLevel:I

    return-void
.end method


# virtual methods
.method addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V
    .locals 1

    iget-object v0, p0, mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAttribs()I
    .locals 1

    iget v0, p0, mAttribs:I

    return v0
.end method

.method public getConfigIndex()B
    .locals 1

    iget-byte v0, p0, mConfigIndex:B

    return v0
.end method

.method public getConfigValue()I
    .locals 1

    iget v0, p0, mConfigValue:I

    return v0
.end method

.method public getMaxPower()I
    .locals 1

    iget v0, p0, mMaxPower:I

    return v0
.end method

.method public getNumInterfaces()B
    .locals 1

    iget-byte v0, p0, mNumInterfaces:B

    return v0
.end method

.method public getTotalLength()I
    .locals 1

    iget v0, p0, mTotalLength:I

    return v0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, mTotalLength:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, mNumInterfaces:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, mConfigValue:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, mConfigIndex:B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, mAttribs:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    iput v0, p0, mMaxPower:I

    iget v0, p0, mLength:I

    return v0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Config # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, getConfigValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, getNumInterfaces()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Interfaces."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, getAttribs()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method

.method toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbConfiguration;
    .locals 5

    iget-byte v0, p0, mConfigIndex:B

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/hardware/usb/UsbConfiguration;

    iget v2, p0, mConfigValue:I

    iget v3, p0, mAttribs:I

    iget v4, p0, mMaxPower:I

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/hardware/usb/UsbConfiguration;-><init>(ILjava/lang/String;II)V

    iget-object v2, p0, mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/hardware/usb/UsbInterface;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    iget-object v4, p0, mInterfaceDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {v4, p1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbConfiguration;->setInterfaces([Landroid/os/Parcelable;)V

    return-object v1
.end method
