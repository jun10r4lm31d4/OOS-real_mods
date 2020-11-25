.class public Lcom/android/providers/media/util/XmpInterface;
.super Ljava/lang/Object;
.source "XmpInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;
    }
.end annotation


# static fields
.field private static final NAME_DESCRIPTION:Ljava/lang/String; = "Description"

.field private static final NAME_DOCUMENT_ID:Ljava/lang/String; = "DocumentID"

.field private static final NAME_FORMAT:Ljava/lang/String; = "format"

.field private static final NAME_INSTANCE_ID:Ljava/lang/String; = "InstanceID"

.field private static final NAME_ORIGINAL_DOCUMENT_ID:Ljava/lang/String; = "OriginalDocumentID"

.field private static final NS_DC:Ljava/lang/String; = "http://purl.org/dc/elements/1.1/"

.field private static final NS_EXIF:Ljava/lang/String; = "http://ns.adobe.com/exif/1.0/"

.field private static final NS_RDF:Ljava/lang/String; = "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

.field private static final NS_XMP:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/"

.field private static final NS_XMPMM:Ljava/lang/String; = "http://ns.adobe.com/xap/1.0/mm/"


# instance fields
.field private mDocumentId:Ljava/lang/String;

.field private mFormat:Ljava/lang/String;

.field private final mIn:Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;

.field private mInstanceId:Ljava/lang/String;

.field private mOriginalDocumentId:Ljava/lang/String;

.field private final mRedactedExifTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRedactedRanges:Landroid/util/LongArray;

.field private final mXmpOffset:J


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Llibcore/util/EmptyArray;->LONG:[J

    invoke-direct {p0, p1, v0, v1}, <init>(Ljava/io/InputStream;Ljava/util/Set;[J)V

    return-void
.end method

.method private constructor <init>(Ljava/io/InputStream;Ljava/util/Set;[J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;[J)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;

    invoke-direct {v0, p1}, Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, mIn:Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;

    iput-object p2, p0, mRedactedExifTags:Ljava/util/Set;

    array-length p1, p3

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    move-wide p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    aget-wide p1, p3, p1

    :goto_0
    iput-wide p1, p0, mXmpOffset:J

    new-instance p1, Landroid/util/LongArray;

    invoke-direct {p1}, Landroid/util/LongArray;-><init>()V

    iput-object p1, p0, mRedactedRanges:Landroid/util/LongArray;

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object p1

    iget-object p2, p0, mIn:Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;

    sget-object p3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p3}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 p3, 0x1

    if-eq p2, p3, :cond_9

    const/4 p3, 0x2

    if-eq p2, p3, :cond_2

    iget-object p2, p0, mIn:Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;

    invoke-virtual {p2, p1}, Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;->getOffset(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getNamespace()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p3

    const-string v2, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "OriginalDocumentID"

    const-string v4, "InstanceID"

    const-string v5, "DocumentID"

    const-string v6, "format"

    const-string v7, "http://purl.org/dc/elements/1.1/"

    const-string v8, "http://ns.adobe.com/xap/1.0/mm/"

    if-eqz v2, :cond_3

    :try_start_1
    const-string v2, "Description"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object p2, p0, mFormat:Ljava/lang/String;

    invoke-interface {p1, v7, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mFormat:Ljava/lang/String;

    iget-object p2, p0, mDocumentId:Ljava/lang/String;

    invoke-interface {p1, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mDocumentId:Ljava/lang/String;

    iget-object p2, p0, mInstanceId:Ljava/lang/String;

    invoke-interface {p1, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mInstanceId:Ljava/lang/String;

    iget-object p2, p0, mOriginalDocumentId:Ljava/lang/String;

    invoke-interface {p1, v8, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mOriginalDocumentId:Ljava/lang/String;

    goto :goto_1

    :cond_3
    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p2, p0, mFormat:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mFormat:Ljava/lang/String;

    goto :goto_1

    :cond_4
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v5, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object p2, p0, mDocumentId:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mDocumentId:Ljava/lang/String;

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p2, p0, mInstanceId:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mInstanceId:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object p2, p0, mOriginalDocumentId:Ljava/lang/String;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, mOriginalDocumentId:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const-string v2, "http://ns.adobe.com/exif/1.0/"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, mRedactedExifTags:Ljava/util/Set;

    invoke-interface {p2, p3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_8
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_8

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, mIn:Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;

    invoke-virtual {p2, p1}, Lcom/android/providers/media/util/XmpInterface$ByteCountingInputStream;->getOffset(Lorg/xmlpull/v1/XmlPullParser;)J

    move-result-wide p2

    iget-object v2, p0, mRedactedRanges:Landroid/util/LongArray;

    iget-wide v3, p0, mXmpOffset:J

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Landroid/util/LongArray;->add(J)V

    iget-object v0, p0, mRedactedRanges:Landroid/util/LongArray;

    iget-wide v1, p0, mXmpOffset:J

    add-long/2addr v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/util/LongArray;->add(J)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v0, p2

    goto/16 :goto_1

    :cond_9
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static fromContainer(Landroid/media/ExifInterface;)Lcom/android/providers/media/util/XmpInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, fromContainer(Landroid/media/ExifInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object p0

    return-object p0
.end method

.method public static fromContainer(Landroid/media/ExifInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/ExifInterface;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/providers/media/util/XmpInterface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Xmp"

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttributeBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/media/ExifInterface;->getAttributeRange(Ljava/lang/String;)[J

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    sget-object p0, Llibcore/util/EmptyArray;->LONG:[J

    :goto_0
    new-instance v0, Lcom/android/providers/media/util/XmpInterface;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2, p1, p0}, <init>(Ljava/io/InputStream;Ljava/util/Set;[J)V

    return-object v0
.end method

.method public static fromContainer(Lcom/android/providers/media/util/IsoInterface;)Lcom/android/providers/media/util/XmpInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, v0}, fromContainer(Lcom/android/providers/media/util/IsoInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object p0

    return-object p0
.end method

.method public static fromContainer(Lcom/android/providers/media/util/IsoInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/util/IsoInterface;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/providers/media/util/XmpInterface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    const-string v0, "be7acfcb-97a9-42e8-9c71-999491e3afac"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/providers/media/util/IsoInterface;->getBoxBytes(Ljava/util/UUID;)[B

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/providers/media/util/IsoInterface;->getBoxRanges(Ljava/util/UUID;)[J

    move-result-object v0

    if-nez v1, :cond_0

    const v0, 0x584d505f

    invoke-virtual {p0, v0}, Lcom/android/providers/media/util/IsoInterface;->getBoxBytes(I)[B

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/providers/media/util/IsoInterface;->getBoxRanges(I)[J

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    :cond_1
    new-instance p0, Lcom/android/providers/media/util/XmpInterface;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v2, p1, v0}, <init>(Ljava/io/InputStream;Ljava/util/Set;[J)V

    return-object p0
.end method

.method public static fromContainer(Ljava/io/InputStream;)Lcom/android/providers/media/util/XmpInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, fromContainer(Landroid/media/ExifInterface;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object p0

    return-object p0
.end method

.method public static fromContainer(Ljava/io/InputStream;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/providers/media/util/XmpInterface;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, p1}, fromContainer(Landroid/media/ExifInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object p0

    return-object p0
.end method

.method public static fromSidecar(Ljava/io/File;)Lcom/android/providers/media/util/XmpInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/providers/media/util/XmpInterface;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, <init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method private static maybeOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getDocumentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mDocumentId:Ljava/lang/String;

    return-object p0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mFormat:Ljava/lang/String;

    return-object p0
.end method

.method public getInstanceId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mInstanceId:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginalDocumentId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mOriginalDocumentId:Ljava/lang/String;

    return-object p0
.end method

.method public getRedactionRanges()Landroid/util/LongArray;
    .locals 0

    iget-object p0, p0, mRedactedRanges:Landroid/util/LongArray;

    return-object p0
.end method
