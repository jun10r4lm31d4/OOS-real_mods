.class public Lorg/bouncycastle/asn1/x509/m;
.super Lorg/bouncycastle/asn1/x509/r;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x509/r;-><init>()V

    return-void
.end method


# virtual methods
.method public tsu(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/vdb;
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_0

    :try_start_0
    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/asn1/x509/r;->gck(Ljava/lang/String;I)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t recode value for oid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x5c

    if-ne p0, v0, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->hJa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->kJa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->ZIa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lorg/bouncycastle/asn1/v;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/v;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_3
    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->C:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->gxa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->XIa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-object p0, Lorg/bouncycastle/asn1/x509/q;->gJa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, p0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    new-instance p0, Lorg/bouncycastle/asn1/O;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/O;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_5
    :goto_0
    new-instance p0, Lorg/bouncycastle/asn1/F;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/F;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_6
    :goto_1
    new-instance p0, Lorg/bouncycastle/asn1/x;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
