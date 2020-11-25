.class public Lyou/zta/sis/you$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyou/zta/sis/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field private lSa:Ljava/math/BigInteger;

.field private mSa:[B

.field private nSa:I


# direct methods
.method private constructor <init>(Ljava/math/BigInteger;[BI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, lSa:Ljava/math/BigInteger;

    iput-object p2, p0, mSa:[B

    iput p3, p0, nSa:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;[BILyou/zta/sis/zta;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, <init>(Ljava/math/BigInteger;[BI)V

    return-void
.end method


# virtual methods
.method public getPrime()Ljava/math/BigInteger;
    .locals 0

    iget-object p0, p0, lSa:Ljava/math/BigInteger;

    return-object p0
.end method

.method public yk()I
    .locals 0

    iget p0, p0, nSa:I

    return p0
.end method

.method public zk()[B
    .locals 0

    iget-object p0, p0, mSa:[B

    return-object p0
.end method
