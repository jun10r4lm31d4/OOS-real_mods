.class public Lcom/android/server/cjf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOpAggressiveDoze;


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final IDLE_AFTER_INACTIVE_TIMEOUT:Ljava/lang/String; = "idle_after_inactive_to=420000"

.field private static final IDLE_FACTOR:Ljava/lang/String; = "idle_factor=3"

.field private static final IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "idle_pending_to=60000"

.field private static final INACTIVE_TIMEOUT:Ljava/lang/String; = "inactive_to=960000"

.field private static final LOCATING_TIMEOUT:Ljava/lang/String; = "locating_to=30000"

.field private static final LOCATION_ACCURACY:Ljava/lang/String; = "location_accuracy=10"

.field private static final MAX_IDLE_PENDING_TIMEOUT:Ljava/lang/String; = "max_idle_pending_to=120000"

.field private static final MAX_IDLE_TIMEOUT:Ljava/lang/String; = "max_idle_to=864000000"

.field private static final MIN_TIME_TO_ALARM:Ljava/lang/String; = "min_time_to_alarm=60000"

.field private static final MOTION_INACTIVE_TIMEOUT:Ljava/lang/String; = "motion_inactive_to=60000"

.field private static final SENSING_TIMEOUT:Ljava/lang/String; = "sensing_to=24000"

.field private static final TAG:Ljava/lang/String; = "OpAggressiveDoze"

.field static he:Lcom/android/server/LocationManagerService$LocationManagerServiceInner; = null

.field private static final hf:Ljava/lang/String; = "stopGps"

.field private static final if:Ljava/lang/String; = "aggressive"

.field private static final jf:Ljava/lang/String;

.field private static final kf:Ljava/lang/String;

.field static lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

.field static mLock:Ljava/lang/Object;

.field static mf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static nf:Z


# instance fields
.field df:Z

.field ef:J

.field ff:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private gf:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field ie:Ljava/lang/Object;

.field mConstants:Lcom/android/server/DeviceIdleController$Constants;

.field mContext:Landroid/content/Context;

.field mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field mFirstReport:Z

.field mGpsLocationListener:Landroid/location/LocationListener;

.field mHandler:Landroid/os/Handler;

.field mLocationManager:Landroid/location/LocationManager;

.field mLocationManagerService:Lcom/android/server/LocationManagerService;

.field private mPolicy:I

.field mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "Lcom/android/server/LocationManagerService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG_ONEPLUS:Z

    const-string v0, "sensing_to=24000"

    const-string v1, "locating_to=30000"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, jf:Ljava/lang/String;

    const-string v2, "sensing_to=24000"

    const-string v3, "locating_to=30000"

    const-string v4, "location_accuracy=10"

    const-string v5, "idle_after_inactive_to=420000"

    const-string v6, "inactive_to=960000"

    const-string v7, "max_idle_pending_to=120000"

    const-string v8, "idle_pending_to=60000"

    const-string v9, "motion_inactive_to=60000"

    const-string v10, "idle_factor=3"

    const-string v11, "min_time_to_alarm=60000"

    const-string v12, "max_idle_to=864000000"

    filled-new-array/range {v2 .. v12}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, kf:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, mf:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, mLock:Ljava/lang/Object;

    const/4 v0, 0x1

    sput-boolean v0, nf:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mPolicy:I

    iput-boolean v0, p0, mFirstReport:Z

    iput-boolean v0, p0, df:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, gf:Ljava/util/HashSet;

    return-void
.end method

.method private ib(I)V
    .locals 2

    sget-boolean v0, DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addUidtoDozingGps uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAggressiveDoze"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, gf:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, gf:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private jb(I)V
    .locals 2

    iget-object p0, p0, mResolver:Landroid/content/ContentResolver;

    if-eqz p0, :cond_2

    const-string v0, "device_idle_constants"

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object p1, kf:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object p1, jf:Ljava/lang/String;

    :goto_0
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private kb(I)V
    .locals 2

    sget-object p0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_manager:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/ugm;

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_alarm_alignment:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ire;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/server/power/ugm;->setDeviceIdleAggressive(Z)V

    :cond_0
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Lcom/android/server/ire;->gck(Z)Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/power/ugm;->setDeviceIdleAggressive(Z)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/android/server/ire;->gck(Z)Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method R()Z
    .locals 16

    move-object/from16 v1, p0

    const-string v2, "Failed to check LoctionWhitelistUid"

    invoke-virtual/range {p0 .. p0}, S()Landroid/util/ArrayMap;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object v0, v1, mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    iget-object v0, v1, gf:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    move v0, v4

    move v6, v0

    :goto_1
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v6, v7, :cond_c

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_2

    goto/16 :goto_5

    :cond_2
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/16 v10, 0x2710

    if-lt v9, v10, :cond_b

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    const-string v10, "OpAggressiveDoze"

    if-nez v9, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkLocationWhitelistUid packages is null, for uid:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_3
    move v12, v0

    move v11, v4

    :goto_2
    array-length v0, v9

    if-ge v11, v0, :cond_a

    :try_start_0
    sget-boolean v0, DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    aget-object v0, v9, v11

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " i:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, " packages[i]:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v13, v9, v11

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " provider:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    aget-object v0, v9, v11
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "gps"

    const/4 v14, 0x1

    if-eqz v0, :cond_6

    :try_start_1
    aget-object v0, v9, v11

    const-string v15, "com.amap.android.ams"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    aget-object v0, v9, v11

    const-string v15, "com.amap.android.location"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v12, v14

    :cond_6
    aget-object v0, v9, v11

    invoke-virtual {v5, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    sget-boolean v15, DEBUG_ONEPLUS:Z

    if-eqz v15, :cond_8

    if-eqz v0, :cond_8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " is3rd:"

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v14

    if-nez v4, :cond_7

    move v4, v14

    goto :goto_3

    :cond_7
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    if-eqz v0, :cond_9

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v14

    if-nez v0, :cond_9

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, ib(I)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move v12, v14

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    :goto_4
    add-int/lit8 v11, v11, 0x1

    const/4 v4, 0x0

    goto/16 :goto_2

    :cond_a
    move v0, v12

    :cond_b
    :goto_5
    add-int/lit8 v6, v6, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_c
    return v0

    :cond_d
    :goto_6
    move v1, v4

    return v1
.end method

.method S()Landroid/util/ArrayMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, ie:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iget-object v2, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/LocationManagerService$Receiver;

    iget-object v3, v3, Lcom/android/server/LocationManagerService$Receiver;->mUpdateRecords:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/LocationManagerService$UpdateRecord;

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    iget-object v5, v5, Lcom/android/server/LocationManagerService$Receiver;->mCallerIdentity:Lcom/android/server/location/CallerIdentity;

    iget v5, v5, Lcom/android/server/location/CallerIdentity;->mUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mProvider:Ljava/lang/String;

    sget-boolean v7, DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_2

    const-string v7, "OpAggressiveDoze"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getActiveLocationUidType uid:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " Interval:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v9}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, " isBlock:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, ff:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " isGpsProvider:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "gps"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " procState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, v4, Lcom/android/server/LocationManagerService$UpdateRecord;->mRequest:Landroid/location/LocationRequest;

    invoke-virtual {v4}, Landroid/location/LocationRequest;->getInterval()J

    move-result-wide v7

    sget-object v4, he:Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    invoke-virtual {v4}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getHighPowerIntervalMs()J

    move-result-wide v9

    cmp-long v4, v7, v9

    if-gtz v4, :cond_1

    iget-object v4, p0, ff:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "gps"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result v4

    const/4 v7, 0x5

    if-gt v4, v7, :cond_1

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_3
    sget-boolean p0, DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_4

    const-string p0, "OpAggressiveDoze"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getActiveLocationUidType mActiveLocation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method T()Z
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    invoke-virtual {p0}, isAggressive()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    return v0
.end method

.method U()Z
    .locals 11

    iget-object v0, p0, mLocationManagerService:Lcom/android/server/LocationManagerService;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, S()Landroid/util/ArrayMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "OpAggressiveDoze"

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_4

    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    move v3, v2

    :goto_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_8

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isHasGpsReport uid ="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "provider = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/16 v7, 0x2710

    if-lt v6, v7, :cond_7

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    move v6, v2

    :goto_2
    array-length v7, v5

    if-ge v6, v7, :cond_7

    aget-object v7, v5, v6

    if-eqz v7, :cond_3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isHasGpsReport package ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v5, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    aget-object v7, v5, v6

    const-string v8, "gps"

    const/4 v9, 0x1

    if-eqz v7, :cond_5

    aget-object v7, v5, v6

    const-string v10, "com.amap.android.ams"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    aget-object v7, v5, v6

    const-string v10, "com.amap.android.location"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    return v9

    :cond_5
    :try_start_0
    aget-object v7, v5, v6

    invoke-virtual {p0, v7, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    if-eqz v7, :cond_6

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v7, v9

    if-nez v7, :cond_6

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_6

    return v9

    :catch_0
    move-exception v7

    const-string v8, "Failed to get application info"

    invoke-static {v1, v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_8
    return v2

    :cond_9
    :goto_4
    const-string p0, "isHasGpsReport activeLocationArrayMap = 0"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public anyMotionResultOverride(I)I
    .locals 1

    invoke-virtual {p0}, T()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "change onAnyMotionResult("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpAggressiveDoze"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    return p1
.end method

.method public clearGpsUids()V
    .locals 2

    sget-boolean v0, DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpAggressiveDoze"

    const-string v1, "clearGpsUids"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, nf:Z

    iget-object v0, p0, gf:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, gf:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearWhitelistUid()V
    .locals 4

    sget-object v0, mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    sget-object v2, mf:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, mf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3, v2}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, mf:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :catchall_0
    move-exception p0

    goto :goto_1
.end method

.method public getStopGpsState()Z
    .locals 0

    sget-boolean p0, nf:Z

    return p0
.end method

.method isAggressive()Z
    .locals 1

    iget p0, p0, mPolicy:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDozingGps(I)Z
    .locals 1

    iget-object v0, p0, gf:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, gf:Ljava/util/HashSet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isMoving(Landroid/location/Location;)Z
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, nf:Z

    sget-boolean v1, DEBUG_ONEPLUS:Z

    const-string v2, "OpAggressiveDoze"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isMoving isAggressiveAndChina:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, T()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mHasGpsRequest:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, df:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mFirstReport:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, mFirstReport:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " accuracy:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, df:Z

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    const/high16 v1, 0x41f00000    # 30.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_1

    iput-boolean v3, p0, mFirstReport:Z

    return v0

    :cond_1
    iget-boolean p1, p0, mFirstReport:Z

    if-eqz p1, :cond_2

    iput-boolean v3, p0, mFirstReport:Z

    return v0

    :cond_2
    invoke-virtual {p0}, R()Z

    move-result p0

    if-eqz p0, :cond_4

    sget-boolean p0, DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_3

    const-string p0, "not stop gps for dozing"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sput-boolean v3, nf:Z

    :cond_4
    return v3
.end method

.method public mayUseAggressiveTimeoutLocked(FJJJJJFJJ)Z
    .locals 5

    move-object v0, p0

    iget v1, v0, mPolicy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v0, v0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    if-eqz v0, :cond_0

    move v1, p1

    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->LOCATION_ACCURACY:F

    move-wide v3, p2

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_AFTER_INACTIVE_TIMEOUT:J

    move-wide v3, p4

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->INACTIVE_TIMEOUT:J

    move-wide v3, p6

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_PENDING_TIMEOUT:J

    move-wide v3, p8

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_PENDING_TIMEOUT:J

    move-wide v3, p10

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MOTION_INACTIVE_TIMEOUT:J

    move/from16 v1, p12

    iput v1, v0, Lcom/android/server/DeviceIdleController$Constants;->IDLE_FACTOR:F

    move-wide/from16 v3, p13

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MIN_TIME_TO_ALARM:J

    move-wide/from16 v3, p15

    iput-wide v3, v0, Lcom/android/server/DeviceIdleController$Constants;->MAX_IDLE_TIMEOUT:J

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    const-string p1, "doze_mode_policy"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, mPolicy:I

    sget-boolean p1, DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "doze policy is set to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, mPolicy:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpAggressiveDoze"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p1, p0, mPolicy:I

    invoke-direct {p0, p1}, jb(I)V

    iget p1, p0, mPolicy:I

    invoke-direct {p0, p1}, kb(I)V

    :cond_1
    return-void
.end method

.method public prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V
    .locals 4

    if-eqz p1, :cond_1

    sput-object p1, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getService()Lcom/android/server/DeviceIdleController;

    move-result-object v0

    iput-object v0, p0, mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getConstants()Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    iput-object v0, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    iput-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getGpsLocationListener()Landroid/location/LocationListener;

    move-result-object p1

    iput-object p1, p0, mGpsLocationListener:Landroid/location/LocationListener;

    iget-object p1, p0, mResolver:Landroid/content/ContentResolver;

    const-string v0, "doze_mode_policy"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, mConstants:Lcom/android/server/DeviceIdleController$Constants;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, mResolver:Landroid/content/ContentResolver;

    invoke-static {p1, v0, v3, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    iput p1, p0, mPolicy:I

    sget-boolean p1, DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPolicy = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, mPolicy:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpAggressiveDoze"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget p1, p0, mPolicy:I

    invoke-direct {p0, p1}, jb(I)V

    iget p1, p0, mPolicy:I

    invoke-direct {p0, p1}, kb(I)V

    :cond_1
    return-void
.end method

.method public prepareLocationManagerService(Lcom/android/server/LocationManagerService$LocationManagerServiceInner;)V
    .locals 2

    if-eqz p1, :cond_0

    sput-object p1, he:Lcom/android/server/LocationManagerService$LocationManagerServiceInner;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getService()Lcom/android/server/LocationManagerService;

    move-result-object v0

    iput-object v0, p0, mLocationManagerService:Lcom/android/server/LocationManagerService;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getLock()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, ie:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getReceivers()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getBlockedUids()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, ff:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/LocationManagerService$LocationManagerServiceInner;->getHighPowerIntervalMs()J

    move-result-wide v0

    iput-wide v0, p0, ef:J

    :cond_0
    return-void
.end method

.method public requestLocationUpdatesOverride()Z
    .locals 9

    iget-boolean v0, p0, df:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getProvider(Ljava/lang/String;)Landroid/location/LocationProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->setHasGps(Z)V

    iput-boolean v1, p0, mFirstReport:Z

    iget-object v2, p0, mLocationManager:Landroid/location/LocationManager;

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x40a00000    # 5.0f

    iget-object v7, p0, mGpsLocationListener:Landroid/location/LocationListener;

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v8

    const-string v3, "gps"

    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    sget-object p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {p0, v1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->setLocating(Z)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public scheduleAlarmOverride()Z
    .locals 4

    invoke-virtual {p0}, U()Z

    move-result v0

    iput-boolean v0, p0, df:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHasGpsRequest ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, df:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpAggressiveDoze"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, df:Z

    const/4 v1, 0x0

    iget-object p0, p0, mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x1d4c0

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x2710

    :goto_0
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    const/4 p0, 0x1

    return p0
.end method

.method public shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 6

    const-string v0, "aggressive"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    const-string v3, "OpAggressiveDoze"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "aggressive doze: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, mPolicy:I

    const-string v4, "true"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    const-string v4, "false"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "please enter aggressive [true|false]"

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    iput v0, p0, mPolicy:I

    iget p1, p0, mPolicy:I

    invoke-direct {p0, p1}, jb(I)V

    iget p1, p0, mPolicy:I

    invoke-direct {p0, p1}, kb(I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "aggressive: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPolicy: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, mPolicy:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_3
    return v0
.end method

.method public startMonitoringMotionOverride()Z
    .locals 0

    invoke-virtual {p0}, T()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public tryClearAllPendingBroadcasts()V
    .locals 2

    iget v0, p0, mPolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, ie:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, mReceivers:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LocationManagerService$Receiver;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService$Receiver;->clearPendingBroadcastsLocked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_1
    return-void
.end method
