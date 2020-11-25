.class public Lorg/bouncycastle/jcajce/sis/zta;
.super Ljavax/crypto/spec/IvParameterSpec;
.source ""


# instance fields
.field private final LDa:[B

.field private final MDa:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>([BI[B)V

    return-void
.end method

.method public constructor <init>([BI[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iput p2, p0, MDa:I

    invoke-static {p3}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p1

    iput-object p1, p0, LDa:[B

    return-void
.end method


# virtual methods
.method public bh()[B
    .locals 0

    iget-object p0, p0, LDa:[B

    invoke-static {p0}, Lorg/bouncycastle/util/zta;->zgw([B)[B

    move-result-object p0

    return-object p0
.end method

.method public ch()I
    .locals 0

    iget p0, p0, MDa:I

    return p0
.end method

.method public getNonce()[B
    .locals 0

    invoke-virtual {p0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object p0

    return-object p0
.end method
