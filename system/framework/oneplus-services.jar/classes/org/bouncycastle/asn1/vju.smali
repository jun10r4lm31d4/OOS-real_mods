.class public Lorg/bouncycastle/asn1/vju;
.super Lorg/bouncycastle/asn1/zta;
.source ""


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/cno;)V
    .locals 1

    invoke-static {p2}, tsu(Lorg/bouncycastle/asn1/cno;)[B

    move-result-object p2

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/zta;-><init>(ZI[B)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ssp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, <init>(ZILorg/bouncycastle/asn1/ssp;)V

    return-void
.end method

.method public constructor <init>(ZILorg/bouncycastle/asn1/ssp;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_1

    invoke-interface {p3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/vdb;->isConstructed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {p1, p3}, zta(ZLorg/bouncycastle/asn1/ssp;)[B

    move-result-object p1

    invoke-direct {p0, v0, p2, p1}, Lorg/bouncycastle/asn1/zta;-><init>(ZI[B)V

    return-void
.end method

.method constructor <init>(ZI[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/asn1/zta;-><init>(ZI[B)V

    return-void
.end method

.method private static tsu(Lorg/bouncycastle/asn1/cno;)[B
    .locals 4

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/oif;

    const-string v3, "BER"

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "malformed object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private static zta(ZLorg/bouncycastle/asn1/ssp;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    const-string v0, "BER"

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/zta;->wtn([B)I

    move-result p0

    array-length v0, p1

    sub-int/2addr v0, p0

    new-array v0, v0, [B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, p0, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method zta(Lorg/bouncycastle/asn1/ugm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/asn1/zta;->TDa:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x60

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    :goto_0
    iget v1, p0, Lorg/bouncycastle/asn1/zta;->tag:I

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ugm;->writeTag(II)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    iget-object p0, p0, Lorg/bouncycastle/asn1/zta;->octets:[B

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write([B)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/ugm;->write(I)V

    return-void
.end method
