.class public Lorg/bouncycastle/crypto/wtn/cgv;
.super Lorg/bouncycastle/crypto/wtn/veq;
.source ""


# instance fields
.field private e:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private xPa:Ljava/math/BigInteger;

.field private yPa:Ljava/math/BigInteger;

.field private zPa:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p3}, Lorg/bouncycastle/crypto/wtn/veq;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object p2, p0, e:Ljava/math/BigInteger;

    iput-object p4, p0, p:Ljava/math/BigInteger;

    iput-object p5, p0, q:Ljava/math/BigInteger;

    iput-object p6, p0, xPa:Ljava/math/BigInteger;

    iput-object p7, p0, yPa:Ljava/math/BigInteger;

    iput-object p8, p0, zPa:Ljava/math/BigInteger;

    return-void
.end method


# virtual methods
.method public Yj()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, xPa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public Zj()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, yPa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public _j()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, zPa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, p:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, e:Ljava/math/BigInteger;

    return-object p0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, q:Ljava/math/BigInteger;

    return-object p0
.end method
