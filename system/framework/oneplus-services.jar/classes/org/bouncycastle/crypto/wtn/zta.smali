.class public Lorg/bouncycastle/crypto/wtn/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/bouncycastle/crypto/kth;


# instance fields
.field private POa:I

.field private dPa:[B

.field private key:Lorg/bouncycastle/crypto/wtn/cjf;

.field private nonce:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B[B)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/wtn/cjf;I[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, key:Lorg/bouncycastle/crypto/wtn/cjf;

    invoke-static {p3}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p1

    iput-object p1, p0, nonce:[B

    iput p2, p0, POa:I

    invoke-static {p4}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p1

    iput-object p1, p0, dPa:[B

    return-void
.end method


# virtual methods
.method public Xj()[B
    .locals 0

    iget-object p0, p0, dPa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p0

    return-object p0
.end method

.method public getKey()Lorg/bouncycastle/crypto/wtn/cjf;
    .locals 0

    iget-object p0, p0, key:Lorg/bouncycastle/crypto/wtn/cjf;

    return-object p0
.end method

.method public getNonce()[B
    .locals 0

    iget-object p0, p0, nonce:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p0

    return-object p0
.end method

.method public you()I
    .locals 0

    iget p0, p0, POa:I

    return p0
.end method
