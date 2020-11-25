.class public abstract Lorg/bouncycastle/asn1/ear;
.super Lorg/bouncycastle/asn1/vdb;
.source ""

# interfaces
.implements Lorg/bouncycastle/util/kth;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/asn1/vdb;",
        "Lorg/bouncycastle/util/kth<",
        "Lorg/bouncycastle/asn1/ssp;",
        ">;"
    }
.end annotation


# instance fields
.field private BEa:Z

.field private set:Ljava/util/Vector;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, set:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, BEa:Z

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/cno;Z)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, set:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, BEa:Z

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cno;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, set:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/cno;->get(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, sort()V

    :cond_1
    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ssp;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, set:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, BEa:Z

    iget-object p0, p0, set:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>([Lorg/bouncycastle/asn1/ssp;Z)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/vdb;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, set:Ljava/util/Vector;

    const/4 v0, 0x0

    iput-boolean v0, p0, BEa:Z

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, set:Ljava/util/Vector;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, sort()V

    :cond_1
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;
    .locals 3

    if-eqz p0, :cond_4

    instance-of v0, p0, Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ire;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/asn1/ire;

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p0, [B

    if-eqz v0, :cond_2

    :try_start_0
    check-cast p0, [B

    invoke-static {p0}, Lorg/bouncycastle/asn1/vdb;->fromByteArray([B)Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    invoke-static {p0}, getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ear;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to construct set from byte[]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    instance-of v0, p0, Lorg/bouncycastle/asn1/ssp;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ssp;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ear;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ear;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    check-cast p0, Lorg/bouncycastle/asn1/ear;

    return-object p0
.end method

.method private kth([B[B)Z
    .locals 5

    array-length p0, p1

    array-length v0, p2

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-eq v1, p0, :cond_2

    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    if-eq v3, v4, :cond_1

    aget-byte p0, p1, v1

    and-int/lit16 p0, p0, 0xff

    aget-byte p1, p2, v1

    and-int/lit16 p1, p1, 0xff

    if-ge p0, p1, :cond_0

    move v0, v2

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    array-length p1, p1

    if-ne p0, p1, :cond_3

    move v0, v2

    :cond_3
    return v0
.end method

.method private ssp(Lorg/bouncycastle/asn1/ssp;)[B
    .locals 0

    :try_start_0
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    const-string p1, "DER"

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/oif;->getEncoded(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "cannot encode object added to SET"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static zta(Lorg/bouncycastle/asn1/lqr;Z)Lorg/bouncycastle/asn1/ear;
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->yh()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ear;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "object implicit - explicit expected."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->getObject()Lorg/bouncycastle/asn1/vdb;

    move-result-object p1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/lqr;->yh()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of p0, p0, Lorg/bouncycastle/asn1/h;

    if-eqz p0, :cond_2

    new-instance p0, Lorg/bouncycastle/asn1/f;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/f;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :cond_2
    new-instance p0, Lorg/bouncycastle/asn1/Y;

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/Y;-><init>(Lorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :cond_3
    instance-of v0, p1, Lorg/bouncycastle/asn1/ear;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/bouncycastle/asn1/ear;

    return-object p1

    :cond_4
    instance-of v0, p1, Lorg/bouncycastle/asn1/obl;

    if-eqz v0, :cond_6

    check-cast p1, Lorg/bouncycastle/asn1/obl;

    instance-of p0, p0, Lorg/bouncycastle/asn1/h;

    if-eqz p0, :cond_5

    new-instance p0, Lorg/bouncycastle/asn1/f;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->toArray()[Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/f;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :cond_5
    new-instance p0, Lorg/bouncycastle/asn1/Y;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/obl;->toArray()[Lorg/bouncycastle/asn1/ssp;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/Y;-><init>([Lorg/bouncycastle/asn1/ssp;)V

    return-object p0

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown object in getInstance: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ssp;

    if-nez p0, :cond_0

    sget-object p0, Lorg/bouncycastle/asn1/z;->INSTANCE:Lorg/bouncycastle/asn1/z;

    :cond_0
    return-object p0
.end method


# virtual methods
.method public getObjectAt(I)Lorg/bouncycastle/asn1/ssp;
    .locals 0

    iget-object p0, p0, set:Ljava/util/Vector;

    invoke-virtual {p0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ssp;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, xh()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, size()I

    move-result v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    mul-int/lit8 v1, v1, 0x11

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method isConstructed()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/bouncycastle/asn1/ssp;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/util/zta$zta;

    invoke-virtual {p0}, toArray()[Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/bouncycastle/util/zta$zta;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method jh()Lorg/bouncycastle/asn1/vdb;
    .locals 3

    iget-boolean v0, p0, BEa:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/I;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/I;-><init>()V

    iget-object p0, p0, set:Ljava/util/Vector;

    iput-object p0, v0, set:Ljava/util/Vector;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, set:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, set:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/bouncycastle/asn1/I;

    invoke-direct {p0}, Lorg/bouncycastle/asn1/I;-><init>()V

    iput-object v0, p0, set:Ljava/util/Vector;

    invoke-virtual {p0}, sort()V

    return-object p0
.end method

.method kh()Lorg/bouncycastle/asn1/vdb;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/Y;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/Y;-><init>()V

    iget-object p0, p0, set:Ljava/util/Vector;

    iput-object p0, v0, set:Ljava/util/Vector;

    return-object v0
.end method

.method public parser()Lorg/bouncycastle/asn1/ire;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/cjf;

    invoke-direct {v0, p0, p0}, Lorg/bouncycastle/asn1/cjf;-><init>(Lorg/bouncycastle/asn1/ear;Lorg/bouncycastle/asn1/ear;)V

    return-object v0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, set:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method protected sort()V
    .locals 9

    iget-boolean v0, p0, BEa:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, BEa:Z

    iget-object v1, p0, set:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-le v1, v0, :cond_2

    iget-object v1, p0, set:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v0

    move v2, v1

    move v1, v0

    :goto_0
    if-eqz v1, :cond_2

    iget-object v1, p0, set:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ssp;

    invoke-direct {p0, v1}, ssp(Lorg/bouncycastle/asn1/ssp;)[B

    move-result-object v1

    move-object v5, v1

    move v1, v3

    move v4, v1

    :goto_1
    if-eq v3, v2, :cond_1

    iget-object v6, p0, set:Ljava/util/Vector;

    add-int/lit8 v7, v3, 0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ssp;

    invoke-direct {p0, v6}, ssp(Lorg/bouncycastle/asn1/ssp;)[B

    move-result-object v6

    invoke-direct {p0, v5, v6}, kth([B[B)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v6

    goto :goto_2

    :cond_0
    iget-object v1, p0, set:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    iget-object v4, p0, set:Ljava/util/Vector;

    invoke-virtual {v4, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v4, p0, set:Ljava/util/Vector;

    invoke-virtual {v4, v1, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    move v4, v0

    move v1, v3

    :goto_2
    move v3, v7

    goto :goto_1

    :cond_1
    move v2, v1

    move v1, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toArray()[Lorg/bouncycastle/asn1/ssp;
    .locals 3

    invoke-virtual {p0}, size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ssp;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, size()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, getObjectAt(I)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, set:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public xh()Ljava/util/Enumeration;
    .locals 0

    iget-object p0, p0, set:Ljava/util/Vector;

    invoke-virtual {p0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object p0

    return-object p0
.end method

.method abstract zta(Lorg/bouncycastle/asn1/ugm;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method zta(Lorg/bouncycastle/asn1/vdb;)Z
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/asn1/ear;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ear;

    invoke-virtual {p0}, size()I

    move-result v0

    invoke-virtual {p1}, size()I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, xh()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, xh()Ljava/util/Enumeration;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v2

    invoke-direct {p0, p1}, zta(Ljava/util/Enumeration;)Lorg/bouncycastle/asn1/ssp;

    move-result-object v3

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v2

    invoke-interface {v3}, Lorg/bouncycastle/asn1/ssp;->toASN1Primitive()Lorg/bouncycastle/asn1/vdb;

    move-result-object v3

    if-eq v2, v3, :cond_2

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method
