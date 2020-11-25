.class public Lcom/android/server/location/GnssLocationProviderInjector;
.super Ljava/lang/Object;
.source "GnssLocationProviderInjector.java"


# static fields
.field private static final AGGRESSIVE_DOZE_ENABLED:Z

.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final GNSSLOCATION_BUGREPORT_CATEGORY:Ljava/lang/String; = "GNSS_MDM_LOCATION_FAILED"

.field private static final GNSSLOCATION_BUGREPORT_TAG:Ljava/lang/String; = "GNSS_MDM_Bugreport"

.field private static final GNSSLOCATION_EXCEPTION_LEAST_GNSS_NUM:I = 0x6

.field private static final GNSSLOCATION_EXCEPTION_LEAST_GNSS_SIGNAL:I = 0x1e

.field private static final GNSSLOCATION_EXCEPTION_TIMEOUT:I = 0x78

.field private static final TAG:Ljava/lang/String; = "GnssLocationProviderInjector"

.field private static gnssPassed:I

.field private static mGnssLocationExceptionNum:I

.field private static mGnssLocationExceptionTimeout:I

.field private static mMSACheck:Z

.field private static opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;


# instance fields
.field private debugLog:Z

.field private final mContext:Landroid/content/Context;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, mGnssLocationExceptionNum:I

    sput v0, mGnssLocationExceptionTimeout:I

    sput v0, gnssPassed:I

    sput-boolean v0, mMSACheck:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, DEBUG:Z

    const-string v1, "GnssLocationProviderInjector"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, DEBUG_INJECTOR:Z

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x5f

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, AGGRESSIVE_DOZE_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, debugLog:Z

    const/4 v0, 0x0

    iput-object v0, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method

.method public static getExceptionNum()I
    .locals 1

    sget v0, mGnssLocationExceptionNum:I

    return v0
.end method

.method public static getNum()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method

.method public static getSingal()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public static getStopGpsState()Z
    .locals 1

    sget-boolean v0, AGGRESSIVE_DOZE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_aggressive_doze:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpAggressiveDoze;

    sput-object v0, opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    :cond_0
    sget-object v0, opAggressiveDoze:Lcom/android/server/IOpAggressiveDoze;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/server/IOpAggressiveDoze;->getStopGpsState()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getTimeout()I
    .locals 1

    const/16 v0, 0x78

    return v0
.end method

.method public static setExceptionTimeout()I
    .locals 1

    sget v0, mGnssLocationExceptionTimeout:I

    add-int/lit8 v0, v0, 0x1

    sput v0, mGnssLocationExceptionTimeout:I

    sget v0, mGnssLocationExceptionTimeout:I

    return v0
.end method


# virtual methods
.method public checkPositionMode(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string/jumbo v0, "set_position_mode"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "mode"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, mMSACheck:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, mMSACheck:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public cn0Compare(F)V
    .locals 2

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    sget v0, gnssPassed:I

    add-int/lit8 v0, v0, 0x1

    sput v0, gnssPassed:I

    iget-boolean v0, p0, debugLog:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cn0 value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "...CN0 gnssPassed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, gnssPassed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProviderInjector"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getPositionMode(I)I
    .locals 3

    move v0, p1

    sget-boolean v1, mMSACheck:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x2

    :cond_0
    iget-boolean v1, p0, debugLog:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPositionMode...."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProviderInjector"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method

.method public ifnotimeout()Z
    .locals 3

    sget v0, gnssPassed:I

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    invoke-static {}, setExceptionTimeout()I

    :cond_0
    const/4 v0, 0x0

    sput v0, gnssPassed:I

    sget v1, mGnssLocationExceptionTimeout:I

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    return v2

    :cond_1
    return v0
.end method

.method public resetPositionMode()V
    .locals 2

    iget-boolean v0, p0, debugLog:Z

    if-eqz v0, :cond_0

    const-string v0, "GnssLocationProviderInjector"

    const-string/jumbo v1, "resetPositionMode...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, mMSACheck:Z

    return-void
.end method

.method public final sendMdmreport(Ljava/lang/StringBuilder;)V
    .locals 8

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iput-object v0, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    const/4 v0, 0x0

    sput v0, mGnssLocationExceptionTimeout:I

    sput v0, mGnssLocationExceptionNum:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<DEVICE INFO>\nSoftwareVersion:        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ro.build.ota.versionname"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nIssueNum:               "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, mGnssLocationExceptionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n<DUMPSYS>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->getLogLevelStatusUpdates()Z

    move-result v3

    iput-boolean v3, p0, debugLog:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string v4, "base_info\n"

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "dump_info\n"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz v4, :cond_0

    iget-object v5, p0, mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const-string v7, "GNSS_MDM_Bugreport"

    invoke-virtual {v4, v5, v7, v3, v6}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    iget-boolean v4, p0, debugLog:Z

    if-eqz v4, :cond_0

    const-string v4, "GnssLocationProviderInjector"

    const-string/jumbo v5, "preserveOsData  on going!"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateGnssDetectionStatus()Z
    .locals 5

    sget v0, mGnssLocationExceptionTimeout:I

    const-string/jumbo v1, "updateGnssDetectionStatus...ExceptionNum = "

    const/4 v2, 0x0

    const/16 v3, 0x78

    const-string v4, "GnssLocationProviderInjector"

    if-le v0, v3, :cond_0

    sub-int/2addr v0, v3

    sput v0, mGnssLocationExceptionNum:I

    iget-boolean v0, p0, debugLog:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, mGnssLocationExceptionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sput v2, mGnssLocationExceptionTimeout:I

    iget-boolean v0, p0, debugLog:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, mGnssLocationExceptionNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget v0, mGnssLocationExceptionNum:I

    if-lez v0, :cond_3

    iget-boolean v0, p0, debugLog:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "will send MDM data "

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v2
.end method
