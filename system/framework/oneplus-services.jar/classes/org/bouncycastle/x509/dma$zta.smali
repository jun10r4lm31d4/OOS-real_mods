.class Lorg/bouncycastle/x509/dma$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/x509/dma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "zta"
.end annotation


# instance fields
.field fBa:Ljava/lang/Object;

.field provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/security/Provider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, fBa:Ljava/lang/Object;

    iput-object p2, p0, provider:Ljava/security/Provider;

    return-void
.end method


# virtual methods
.method Ul()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, fBa:Ljava/lang/Object;

    return-object p0
.end method

.method getProvider()Ljava/security/Provider;
    .locals 0

    iget-object p0, p0, provider:Ljava/security/Provider;

    return-object p0
.end method