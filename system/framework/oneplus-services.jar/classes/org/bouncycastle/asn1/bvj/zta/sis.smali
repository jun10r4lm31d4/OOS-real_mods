.class public Lorg/bouncycastle/asn1/bvj/zta/sis;
.super Lorg/bouncycastle/asn1/bvj/zta/zta;
.source ""


# static fields
.field public static final C:Lorg/bouncycastle/asn1/bvj;

.field public static final CN:Lorg/bouncycastle/asn1/bvj;

.field private static final DefaultSymbols:Ljava/util/Hashtable;

.field public static final E:Lorg/bouncycastle/asn1/bvj;

.field public static final INSTANCE:Lorg/bouncycastle/asn1/bvj/ssp;

.field public static final L:Lorg/bouncycastle/asn1/bvj;

.field public static final NAME:Lorg/bouncycastle/asn1/bvj;

.field public static final O:Lorg/bouncycastle/asn1/bvj;

.field public static final OU:Lorg/bouncycastle/asn1/bvj;

.field public static final POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

.field public static final QIa:Lorg/bouncycastle/asn1/bvj;

.field public static final RIa:Lorg/bouncycastle/asn1/bvj;

.field public static final SIa:Lorg/bouncycastle/asn1/bvj;

.field public static final ST:Lorg/bouncycastle/asn1/bvj;

.field public static final STREET:Lorg/bouncycastle/asn1/bvj;

.field public static final T:Lorg/bouncycastle/asn1/bvj;

.field public static final TIa:Lorg/bouncycastle/asn1/bvj;

.field public static final UID:Lorg/bouncycastle/asn1/bvj;

.field public static final UIa:Lorg/bouncycastle/asn1/bvj;

.field public static final VIa:Lorg/bouncycastle/asn1/bvj;

.field public static final WIa:Lorg/bouncycastle/asn1/bvj;

.field public static final XIa:Lorg/bouncycastle/asn1/bvj;

.field public static final YIa:Lorg/bouncycastle/asn1/bvj;

.field public static final ZIa:Lorg/bouncycastle/asn1/bvj;

.field public static final _Ia:Lorg/bouncycastle/asn1/bvj;

.field public static final aJa:Lorg/bouncycastle/asn1/bvj;

.field public static final bJa:Lorg/bouncycastle/asn1/bvj;

.field public static final cJa:Lorg/bouncycastle/asn1/bvj;

.field public static final dJa:Lorg/bouncycastle/asn1/bvj;

.field public static final eJa:Lorg/bouncycastle/asn1/bvj;

.field public static final fJa:Lorg/bouncycastle/asn1/bvj;

.field public static final gJa:Lorg/bouncycastle/asn1/bvj;

.field public static final gxa:Lorg/bouncycastle/asn1/bvj;

.field public static final hJa:Lorg/bouncycastle/asn1/bvj;

.field public static final iJa:Lorg/bouncycastle/asn1/bvj;

.field public static final jJa:Lorg/bouncycastle/asn1/bvj;

.field public static final kJa:Lorg/bouncycastle/asn1/bvj;

.field private static final oJa:Ljava/util/Hashtable;

.field public static final xKa:Lorg/bouncycastle/asn1/bvj;


# instance fields
.field protected final vKa:Ljava/util/Hashtable;

.field protected final wKa:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.6"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, C:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.10"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, O:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.11"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, OU:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.12"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, T:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, CN:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, gxa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.9"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, STREET:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, gxa:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, QIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.7"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, L:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.8"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, ST:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, RIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.42"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, SIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.43"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, TIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.44"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, UIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.45"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, VIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.15"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, WIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.17"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.46"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, XIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.65"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, YIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, ZIa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.2"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, _Ia:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.3"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, aJa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.4"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, bJa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.6.1.5.5.7.9.5"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, cJa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "1.3.36.8.3.14"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, dJa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.16"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, eJa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "2.5.4.54"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/bvj;->intern()Lorg/bouncycastle/asn1/bvj;

    move-result-object v0

    sput-object v0, fJa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/t;->qcb:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, gJa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/t;->rcb:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, NAME:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/x509/t;->scb:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, xKa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_emailAddress:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, hJa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_unstructuredName:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, iJa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, Lorg/bouncycastle/asn1/dma/gwm;->pkcs_9_at_unstructuredAddress:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, jJa:Lorg/bouncycastle/asn1/bvj;

    sget-object v0, hJa:Lorg/bouncycastle/asn1/bvj;

    sput-object v0, E:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "0.9.2342.19200300.100.1.25"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, kJa:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Lorg/bouncycastle/asn1/bvj;

    const-string v1, "0.9.2342.19200300.100.1.1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/bvj;-><init>(Ljava/lang/String;)V

    sput-object v0, UID:Lorg/bouncycastle/asn1/bvj;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, DefaultSymbols:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, oJa:Ljava/util/Hashtable;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, C:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "C"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, O:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "O"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, T:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "T"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, OU:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "OU"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, CN:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, L:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "L"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, ST:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "ST"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, gxa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SERIALNUMBER"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, hJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "E"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, kJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "DC"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, UID:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "UID"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, STREET:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "STREET"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, RIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "SURNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, SIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "GIVENNAME"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, TIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "INITIALS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, UIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "GENERATION"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, jJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "unstructuredAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, iJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "unstructuredName"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, VIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "UniqueIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, XIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "DN"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, YIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "Pseudonym"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, eJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "PostalAddress"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, dJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "NameAtBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, bJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "CountryOfCitizenship"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, cJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "CountryOfResidence"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, aJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "Gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, _Ia:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "PlaceOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, ZIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "DateOfBirth"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "PostalCode"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, WIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "BusinessCategory"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, gJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "TelephoneNumber"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, NAME:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, DefaultSymbols:Ljava/util/Hashtable;

    sget-object v1, xKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "organizationIdentifier"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, C:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "c"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, O:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "o"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, T:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "t"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, OU:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "ou"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, CN:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "cn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, L:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "l"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, ST:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "st"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, gxa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "sn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, gxa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "serialnumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, STREET:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "street"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, E:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "emailaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, kJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dc"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, E:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "e"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, UID:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "uid"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, RIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "surname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, SIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "givenname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, TIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "initials"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, UIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "generation"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, jJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "unstructuredaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, iJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "unstructuredname"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, VIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "uniqueidentifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, XIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dn"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, YIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "pseudonym"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, eJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postaladdress"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, dJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "nameofbirth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, bJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "countryofcitizenship"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, cJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "countryofresidence"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, aJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "gender"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, _Ia:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "placeofbirth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, ZIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "dateofbirth"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, POSTAL_CODE:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "postalcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, WIa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "businesscategory"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, gJa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "telephonenumber"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, NAME:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, oJa:Ljava/util/Hashtable;

    sget-object v1, xKa:Lorg/bouncycastle/asn1/bvj;

    const-string v2, "organizationidentifier"

    invoke-virtual {v0, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lorg/bouncycastle/asn1/bvj/zta/sis;

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
    .locals 0

    invoke-static {p1, p0}, Lorg/bouncycastle/asn1/bvj/zta/tsu;->zta(Ljava/lang/String;Lorg/bouncycastle/asn1/bvj/ssp;)[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p0

    return-object p0
.end method

.method protected sis(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/ssp;
    .locals 1

    sget-object v0, hJa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, kJa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, ZIa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lorg/bouncycastle/asn1/wtn;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/wtn;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_1
    sget-object v0, C:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, gxa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, XIa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, gJa:Lorg/bouncycastle/asn1/bvj;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/vdb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lorg/bouncycastle/asn1/bvj/zta/zta;->sis(Lorg/bouncycastle/asn1/bvj;Ljava/lang/String;)Lorg/bouncycastle/asn1/ssp;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    new-instance p0, Lorg/bouncycastle/asn1/F;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/F;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_1
    new-instance p0, Lorg/bouncycastle/asn1/x;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/x;-><init>(Ljava/lang/String;)V

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
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/bvj/tsu;->ti()[Lorg/bouncycastle/asn1/bvj/sis;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v2

    move v2, v1

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_1

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    aget-object v4, p1, v2

    iget-object v5, p0, wKa:Ljava/util/Hashtable;

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/asn1/bvj/zta/tsu;->zta(Ljava/lang/StringBuffer;Lorg/bouncycastle/asn1/bvj/sis;Ljava/util/Hashtable;)V

    add-int/lit8 v2, v2, 0x1

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
