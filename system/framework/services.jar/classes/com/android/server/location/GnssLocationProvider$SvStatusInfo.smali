.class Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;
.super Ljava/lang/Object;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SvStatusInfo"
.end annotation


# instance fields
.field private mCn0s:[F

.field private mSvAzimuths:[F

.field private mSvCarrierFreqs:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvidWithFlags:[I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/GnssLocationProvider$1;)V
    .locals 0

    invoke-direct {p0}, <init>()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)I
    .locals 1

    iget v0, p0, mSvCount:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;I)I
    .locals 0

    iput p1, p0, mSvCount:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[I
    .locals 1

    iget-object v0, p0, mSvidWithFlags:[I

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[I)[I
    .locals 0

    iput-object p1, p0, mSvidWithFlags:[I

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .locals 1

    iget-object v0, p0, mCn0s:[F

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .locals 0

    iput-object p1, p0, mCn0s:[F

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .locals 1

    iget-object v0, p0, mSvElevations:[F

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .locals 0

    iput-object p1, p0, mSvElevations:[F

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .locals 1

    iget-object v0, p0, mSvAzimuths:[F

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .locals 0

    iput-object p1, p0, mSvAzimuths:[F

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;)[F
    .locals 1

    iget-object v0, p0, mSvCarrierFreqs:[F

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/server/location/GnssLocationProvider$SvStatusInfo;[F)[F
    .locals 0

    iput-object p1, p0, mSvCarrierFreqs:[F

    return-object p1
.end method
