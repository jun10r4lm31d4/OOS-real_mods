.class public Lorg/bouncycastle/jcajce/you/tsu/sis$rtg;
.super Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jcajce/you/tsu/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "rtg"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 8

    sget-object v2, Lorg/bouncycastle/asn1/dma/gwm;->pbeWithSHAAnd128BitRC4:Lorg/bouncycastle/asn1/bvj;

    const-string v1, "PBEWithSHAAnd128BitRC4"

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x80

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jcajce/provider/symmetric/util/dma;-><init>(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj;ZIIII)V

    return-void
.end method
