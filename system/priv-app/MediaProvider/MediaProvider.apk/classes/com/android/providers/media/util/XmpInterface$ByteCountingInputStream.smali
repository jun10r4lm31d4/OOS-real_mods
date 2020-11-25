.class public Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;
.super Ljava/io/InputStream;
.source "XmpInterface.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/util/XmpInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ByteCountingInputStream"
.end annotation


# instance fields
.field private mLine:I

.field private mOffset:I

.field private final mOffsets:Landroid/util/LongArray;

.field private final mWrapped:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, mWrapped:Ljava/io/InputStream;

    new-instance p1, Landroid/util/LongArray;

    invoke-direct {p1}, Landroid/util/LongArray;-><init>()V

    iput-object p1, p0, mOffsets:Landroid/util/LongArray;

    const/4 p1, 0x1

    iput p1, p0, mLine:I

    const/4 p1, 0x0

    iput p1, p0, mOffset:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, mWrapped:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    return p0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, mWrapped:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public getOffset(Lorg/xmlpull/v1/XmlPullParser;)J
    .locals 2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, mOffsets:Landroid/util/LongArray;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getColumnNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    int-to-long p0, p0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v1, p0, mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mOffset:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v1, p0, mOffsets:Landroid/util/LongArray;

    iget v2, p0, mLine:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, mOffset:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongArray;->add(IJ)V

    iget v1, p0, mLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mLine:I

    :cond_1
    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, read([BII)I

    move-result p0

    return p0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, mWrapped:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    iget-object v1, p0, mOffsets:Landroid/util/LongArray;

    iget v2, p0, mLine:I

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, mOffset:I

    add-int/2addr v3, v0

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/util/LongArray;->add(IJ)V

    iget v1, p0, mLine:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, mLine:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p1, p0, mOffset:I

    add-int/2addr p1, p3

    iput p1, p0, mOffset:I

    return p3
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mOffsets:Landroid/util/LongArray;

    invoke-virtual {p0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
