.class public Lorg/bouncycastle/asn1/bvj/zta/rtg;
.super Lorg/bouncycastle/asn1/bvj/zta/zta;
.source ""


# static fields
.field public static final AKa:Lorg/bouncycastle/asn1/bvj;

.field public static final BKa:Lorg/bouncycastle/asn1/bvj;

.field public static final CKa:Lorg/bouncycastle/asn1/bvj;

.field public static final DKa:Lorg/bouncycastle/asn1/bvj;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final EKa:Lorg/bouncycastle/asn1/bvj;

.field public static final FKa:Lorg/bouncycastle/asn1/bvj;

.field public static final GKa:Lorg/bouncycastle/asn1/bvj;

.field public static final HKa:Lorg/bouncycastle/asn1/bvj;

.field public static final IKa:Lorg/bouncycastle/asn1/bvj;

.field public static final INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;

.field public static final JKa:Lorg/bouncycastle/asn1/bvj;

.field public static final KKa:Lorg/bouncycastle/asn1/bvj;

.field public static final LKa:Lorg/bouncycastle/asn1/bvj;

.field public static final MKa:Lorg/bouncycastle/asn1/bvj;

.field public static final NKa:Lorg/bouncycastle/asn1/bvj;

.field public static final OKa:Lorg/bouncycastle/asn1/bvj;

.field public static final PKa:Lorg/bouncycastle/asn1/bvj;

.field public static final QKa:Lorg/bouncycastle/asn1/bvj;

.field public static final RKa:Lorg/bouncycastle/asn1/bvj;

.field public static final SKa:Lorg/bouncycastle/asn1/bvj;

.field public static final TKa:Lorg/bouncycastle/asn1/bvj;

.field public static final UKa:Lorg/bouncycastle/asn1/bvj;

.field public static final VKa:Lorg/bouncycastle/asn1/bvj;

.field public static final WKa:Lorg/bouncycastle/asn1/bvj;

.field public static final XKa:Lorg/bouncycastle/asn1/bvj;

.field public static final YKa:Lorg/bouncycastle/asn1/bvj;

.field public static final ZKa:Lorg/bouncycastle/asn1/bvj;

.field public static final _Ka:Lorg/bouncycastle/asn1/bvj;

.field public static final aLa:Lorg/bouncycastle/asn1/bvj;

.field public static final bLa:Lorg/bouncycastle/asn1/bvj;

.field public static final c:Lorg/bouncycastle/asn1/bvj;

.field public static final cLa:Lorg/bouncycastle/asn1/bvj;

.field public static final dLa:Lorg/bouncycastle/asn1/bvj;

.field public static final description:Lorg/bouncycastle/asn1/bvj;

.field public static final eLa:Lorg/bouncycastle/asn1/bvj;

.field public static final l:Lorg/bouncycastle/asn1/bvj;

.field public static final name:Lorg/bouncycastle/asn1/bvj;

.field private static final oJa:Ljava/util/Hashtable;

.field public static final owner:Lorg/bouncycastle/asn1/bvj;

.field public static final serialNumber:Lorg/bouncycastle/asn1/bvj;

.field public static final telephoneNumber:Lorg/bouncycastle/asn1/bvj;

.field public static final title:Lorg/bouncycastle/asn1/bvj;

.field public static final uid:Lorg/bouncycastle/asn1/bvj;

.field public static final yKa:Lorg/bouncycastle/asn1/bvj;

.field public static final zKa:Lorg/bouncycastle/asn1/bvj;


# instance fields
.field protected final vKa:Ljava/util/Hashtable;

.field protected final wKa:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, yKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, c:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, zKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, AKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.13"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, description:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.27"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, BKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.49"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, CKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, DKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.47"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, EKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.23"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, FKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, GKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, HKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.51"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, IKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, JKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, KKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, l:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.31"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, LKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.41"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, name:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, MKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, NKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.32"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, owner:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.19"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, OKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, PKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, QKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.18"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, RKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.28"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, SKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.26"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, TKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.33"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, UKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, VKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.34"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, WKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, serialNumber:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, XKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, YKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, ZKa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.20"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, telephoneNumber:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.22"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, _Ka:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.21"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, aLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, title:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, uid:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.50"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, bLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.35"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, cLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.24"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, dLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, eLa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, DefaultSymbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, oJa:Ljava/util/Hashtable;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, yKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "businessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, c:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, zKa:Lorg/bouncycastle/asn1/bvj;

    const-string v3, "cn"

    invoke-virtual {v0, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, AKa:Lorg/bouncycastle/asn1/bvj;

    const-string v4, "dc"

    invoke-virtual {v0, v1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, description:Lorg/bouncycastle/asn1/bvj;

    const-string v5, "description"

    invoke-virtual {v0, v1, v5}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, BKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "destinationIndicator"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, CKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "distinguishedName"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, DKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "dnQualifier"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, EKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "enhancedSearchGuide"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, FKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "facsimileTelephoneNumber"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, GKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "generationQualifier"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, HKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "givenName"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, IKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "houseIdentifier"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, JKa:Lorg/bouncycastle/asn1/bvj;

    const-string v6, "initials"

    invoke-virtual {v0, v1, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, KKa:Lorg/bouncycastle/asn1/bvj;

    const-string v7, "internationalISDNNumber"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, l:Lorg/bouncycastle/asn1/bvj;

    const-string v7, "l"

    invoke-virtual {v0, v1, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, LKa:Lorg/bouncycastle/asn1/bvj;

    const-string v8, "member"

    invoke-virtual {v0, v1, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, name:Lorg/bouncycastle/asn1/bvj;

    const-string v9, "name"

    invoke-virtual {v0, v1, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, MKa:Lorg/bouncycastle/asn1/bvj;

    const-string v10, "o"

    invoke-virtual {v0, v1, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, NKa:Lorg/bouncycastle/asn1/bvj;

    const-string v11, "ou"

    invoke-virtual {v0, v1, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, owner:Lorg/bouncycastle/asn1/bvj;

    const-string v12, "owner"

    invoke-virtual {v0, v1, v12}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, OKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "physicalDeliveryOfficeName"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, PKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "postalAddress"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, QKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "postalCode"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, RKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "postOfficeBox"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, SKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "preferredDeliveryMethod"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, TKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "registeredAddress"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, UKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "roleOccupant"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, VKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "searchGuide"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, WKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "seeAlso"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, serialNumber:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "serialNumber"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, XKa:Lorg/bouncycastle/asn1/bvj;

    const-string v13, "sn"

    invoke-virtual {v0, v1, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, YKa:Lorg/bouncycastle/asn1/bvj;

    const-string v14, "st"

    invoke-virtual {v0, v1, v14}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, ZKa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "street"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, telephoneNumber:Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v16, v15

    const-string v15, "telephoneNumber"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, _Ka:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "teletexTerminalIdentifier"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, aLa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "telexNumber"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, title:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "title"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, uid:Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v17, v15

    const-string v15, "uid"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, bLa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "uniqueMember"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, cLa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "userPassword"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, dLa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "x121Address"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, eLa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "x500UniqueIdentifier"

    invoke-virtual {v0, v1, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, yKa:Lorg/bouncycastle/asn1/bvj;

    const-string v15, "businesscategory"

    invoke-virtual {v0, v15, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, c:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, zKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, AKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, description:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, BKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "destinationindicator"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, CKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "distinguishedname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, DKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dnqualifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, EKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "enhancedsearchguide"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, FKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "facsimiletelephonenumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, GKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "generationqualifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, HKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "givenname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, IKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "houseidentifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, JKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v6, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, KKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "internationalisdnnumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, l:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v7, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, LKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v8, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, name:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v9, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, MKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v10, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, NKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v11, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, owner:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, OKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "physicaldeliveryofficename"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, PKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postaladdress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, QKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postalcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, RKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postofficebox"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, SKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "preferreddeliverymethod"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, TKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "registeredaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, UKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "roleoccupant"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, VKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "searchguide"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, WKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "seealso"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, serialNumber:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "serialnumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, XKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v13, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, YKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {v0, v14, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, ZKa:Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v2, v16

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, telephoneNumber:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "telephonenumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, _Ka:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "teletexterminalidentifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, aLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "telexnumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, title:Lorg/bouncycastle/asn1/bvj;

    move-object/from16 v2, v17

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, uid:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, bLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "uniquemember"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, cLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "userpassword"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, dLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "x121address"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, eLa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "x500uniqueidentifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/bvj/zta/rtg;

    invoke-direct {v0}, <init>()V

    sput-object v0, INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/bvj/zta/zta;-><init>()V

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj/zta/zta;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, wKa:Ljava/util/Hashtable;

    sget-object v0, oJa:Ljava/util/Hashtable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/bvj/zta/zta;->copyHashTable(Ljava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, vKa:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public cno(Ljava/lang/String;)Lorg/bouncycastle/asn1/bvj;
    .locals 0

    iget-object p0, p0, vKa:Ljava/util/Hashtable;

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/bvj/zta/tsu;->zta(Ljava/lang/String;Ljava/util/Hashtable;)Lorg/bouncycastle/asn1/bvj;

    move-result-object p0

    return-object p0
.end method

.method public fromString(Ljava/lang/String;)[Lorg/bouncycastle/asn1/bvj/sis;
    .locals 3

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/bvj/zta/tsu;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj/ssp;)[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p0

    array-length p1, p0

    new-array p1, p1, [Lorg/bouncycastle/asn1/bvj/sis;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-eq v0, v1, :cond_0

    array-length v1, p1

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v2, p0, v0

    aput-object v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method protected sis(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/ssp;
    .locals 1

    sget-object v0, AKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lorg/bouncycastle/asn1/x;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    sget-object v0, c:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, serialNumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, DKa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, telephoneNumber:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/asn1/bvj/zta/zta;->sis(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    new-instance p0, Lorg/bouncycastle/asn1/F;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/F;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public sis(Lorg/bouncycastle/asn1/bvj;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, vKa:Ljava/util/Hashtable;

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/bvj/zta/tsu;->zta(Lorg/bouncycastle/asn1/bvj;Ljava/util/Hashtable;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(Lorg/bouncycastle/asn1/bvj/tsu;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->ti()[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-object v3, p1, v1

    iget-object v4, p0, wKa:Ljava/util/Hashtable;

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/asn1/bvj/zta/tsu;->zta(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/bvj/sis;Ljava/util/Hashtable;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public you(Lorg/bouncycastle/asn1/bvj;)Ljava/lang/String;
    .locals 0

    sget-object p0, DefaultSymbols:Ljava/util/Hashtable;

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method
