.class public Lorg/bouncycastle/asn1/x509/vdw;
.super Lorg/bouncycastle/asn1/bvj;
.source ""


# static fields
.field private static final uEa:Ljava/lang/String; = "1.3.6.1.5.5.7.2"

.field public static final vEa:Lorg/bouncycastle/asn1/x509/vdw;

.field public static final wEa:Lorg/bouncycastle/asn1/x509/vdw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/x509/vdw;

    const-string v1, "1.3.6.1.5.5.7.2.1"

    invoke-direct {v0, v1}, <init>(Ljava/lang/String;)V

    sput-object v0, vEa:Lorg/bouncycastle/asn1/x509/vdw;

    new-instance v0, Lorg/bouncycastle/asn1/x509/vdw;

    const-string v1, "1.3.6.1.5.5.7.2.2"

    invoke-direct {v0, v1}, <init>(Ljava/lang/String;)V

    sput-object v0, wEa:Lorg/bouncycastle/asn1/x509/vdw;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    return-void
.end method
