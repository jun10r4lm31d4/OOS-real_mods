.class public Lorg/bouncycastle/crypto/wtn/bvj;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OOa:I

.field private counter:I

.field private sJa:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, <init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p1

    iput-object p1, p0, sJa:[B

    iput p2, p0, counter:I

    iput p3, p0, OOa:I

    return-void
.end method


# virtual methods
.method public bk()I
    .locals 0

    iget p0, p0, counter:I

    return p0
.end method

.method public ck()I
    .locals 0

    iget p0, p0, OOa:I

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lorg/bouncycastle/crypto/wtn/bvj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/wtn/bvj;

    iget v0, p1, counter:I

    iget v2, p0, counter:I

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, sJa:[B

    iget-object p1, p1, sJa:[B

    invoke-static {p0, p1}, Lorg/bouncycastle/util/zta;->sis([B[B)Z

    move-result p0

    return p0
.end method

.method public getSeed()[B
    .locals 0

    iget-object p0, p0, sJa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, counter:I

    iget-object p0, p0, sJa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
