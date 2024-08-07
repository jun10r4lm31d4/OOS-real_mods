.class public Lcom/android/server/net/OpNetworkPolicy;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/net/IOpNetworkPolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/OpNetworkPolicy$you;,
        Lcom/android/server/net/OpNetworkPolicy$zta;
    }
.end annotation


# static fields
.field private static final ACTION_TEST_COMPRESS_FG_RESTRICT:Ljava/lang/String; = "com.test.compress.fg.restrict"

.field private static final AGGRESSIVE_POLICY:I = 0x1

.field private static final DEBUG_ONEPLUS:Z

.field private static final DEFAULT_POLICY:I = 0x0

.field private static final INVALID_UID:I = -0x1

.field private static final MSG_GET_ONLINECONFIG:I = 0x3e8

.field private static final MSG_SCREEN_ON_CHANGED:I = 0x8

.field private static final NETWORKPOLICY_CONFIG_NAME:Ljava/lang/String; = "NetworkPolicyOnlineConfig"

.field private static final SCREEN_DOZE_NETWORKPOLICY:Ljava/lang/String; = "com.oneplus.android.checkDozeNetworkplicy"

.field private static final TAG:Ljava/lang/String; = "OpNetworkPolicy"

.field private static isDozeChangeSupport:Z

.field private static mAlarmManager:Landroid/app/AlarmManager;

.field private static mAllowFGNetworkAccess:Z

.field private static mDozeNetworkIntent:Landroid/content/Intent;

.field private static mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

.field private static mEnableFGNetworkRestrictFeature:Z

.field private static mFirstDeviceMode:Z

.field private static mFirstFGRestrictDebug:Z

.field private static mPolicy:I

.field private static sConfigLock:Ljava/lang/Object;

.field private static screenOffCheckDelayTime:J


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mEnableLogDump:Z

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

.field private final mScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsObserver:Lcom/android/server/net/OpNetworkPolicy$you;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG_ONEPLUS:Z

    const/4 v0, 0x0

    sput-boolean v0, isDozeChangeSupport:Z

    sput v0, mPolicy:I

    sput-boolean v0, mFirstFGRestrictDebug:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, sConfigLock:Ljava/lang/Object;

    sput-boolean v0, mFirstDeviceMode:Z

    const-wide/32 v0, 0x1b7740

    sput-wide v0, screenOffCheckDelayTime:J

    const/4 v0, 0x1

    sput-boolean v0, mAllowFGNetworkAccess:Z

    sput-boolean v0, mEnableFGNetworkRestrictFeature:Z

    const/4 v0, 0x0

    sput-object v0, mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mEnableLogDump:Z

    new-instance v0, Lcom/android/server/net/zta;

    invoke-direct {v0, p0}, Lcom/android/server/net/zta;-><init>(Lcom/android/server/net/OpNetworkPolicy;)V

    iput-object v0, p0, mGeneralReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/you;

    invoke-direct {v0, p0}, Lcom/android/server/net/you;-><init>(Lcom/android/server/net/OpNetworkPolicy;)V

    iput-object v0, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/net/sis;

    invoke-direct {v0, p0}, Lcom/android/server/net/sis;-><init>(Lcom/android/server/net/OpNetworkPolicy;)V

    iput-object v0, p0, mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/OpNetworkPolicy;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, isDozeChangeSupport:Z

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, mPolicy:I

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, mFirstDeviceMode:Z

    return v0
.end method

.method static synthetic access$400()Landroid/app/PendingIntent;
    .locals 1

    sget-object v0, mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$500()Landroid/app/AlarmManager;
    .locals 1

    sget-object v0, mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/net/OpNetworkPolicy;)Lcom/android/server/net/NetworkPolicyManagerService;
    .locals 0

    iget-object p0, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    return-object p0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, mAllowFGNetworkAccess:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/server/net/OpNetworkPolicy;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/server/net/OpNetworkPolicy;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private registerGeneralReceiver()V
    .locals 2

    iget-object v0, p0, mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "OpNetworkPolicy"

    const-string v0, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.test.compress.fg.restrict"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object p0, p0, mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-object p0, sConfigLock:Ljava/lang/Object;

    monitor-enter p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_FGNetworkRestrict"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, mEnableFGNetworkRestrictFeature:Z

    const-string v2, "OpNetworkPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] mEnableFGNetworkRestrictFeature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, mEnableFGNetworkRestrictFeature:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "OpNetworkPolicy"

    const-string p1, "[OnlineConfig] NetworkPolicy updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpNetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private updateRulesForScreenUL()V
    .locals 4

    iget-object v0, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_0

    iget-object v2, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mUidState:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    iget-object v3, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/net/NetworkPolicyManagerService;->opUpdateRestrictionRulesForUidUL(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateScreenOn()V
    .locals 3

    sget-boolean v0, mFirstDeviceMode:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, mFirstDeviceMode:Z

    const-string v1, "OpNetworkPolicy"

    const-string v2, "setDeviceIdleMode stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v0, mFirstFGRestrictDebug:Z

    const-string v0, "OpNetworkPolicy"

    const-string v1, "Update mAllowFGNetworkAccess to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, mAllowFGNetworkAccess:Z

    sget-object v0, mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    sget-object v1, mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    iget-object v0, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, updateRulesForScreenUL()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustUidRulesForStandby(ILandroid/util/SparseIntArray;)Landroid/util/SparseIntArray;
    .locals 1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_2

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    if-eq v0, p0, :cond_0

    invoke-virtual {p2, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "setUidFirewallRules uidRulesTemp "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpNetworkPolicy"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p2
.end method

.method public dynamicallyConfigNetworkPolicyManagerServiceLogTag(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 3

    array-length p1, p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lt p1, v1, :cond_4

    aget-object p1, p3, v0

    const-string v2, "log"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return v0

    :cond_0
    array-length p1, p3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const-string p1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V

    return v1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args.length:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    array-length p1, p3

    if-ge v0, p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, args["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p3, v0

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object p1, p3, v1

    const/4 v0, 0x2

    aget-object p3, p3, v0

    const-string v0, "1"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dynamicallyConfigNetworkPolicyManagerServiceLogTag, logCategoryTag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", on:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "netpolicy"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iput-boolean v1, p0, mEnableLogDump:Z

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v2, "NetworkPolicyOnlineConfig"

    invoke-direct {p1, v0, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, resolveNetworkPolicyConfigFromJSON(Lorg/json/JSONArray;)V

    return v1

    :cond_1
    invoke-direct {p0}, updateScreenOn()V

    return v1
.end method

.method public ifEnableLogDump()Z
    .locals 0

    iget-boolean p0, p0, mEnableLogDump:Z

    return p0
.end method

.method public initInstance(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p2, p0, mContext:Landroid/content/Context;

    iput-object p3, p0, mHandler:Landroid/os/Handler;

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string p2, "oem.dozeNetworkChange.control"

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    sput-boolean p1, isDozeChangeSupport:Z

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string p2, "alarm"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    sput-object p1, mAlarmManager:Landroid/app/AlarmManager;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.oneplus.android.checkDozeNetworkplicy"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object p1, mDozeNetworkIntent:Landroid/content/Intent;

    iget-object p1, p0, mContext:Landroid/content/Context;

    sget-object p3, mDozeNetworkIntent:Landroid/content/Intent;

    const/4 v0, 0x0

    invoke-static {p1, v0, p3, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sput-object p1, mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, mContext:Landroid/content/Context;

    iget-object p3, p0, mDozeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance p1, Lcom/android/server/net/OpNetworkPolicy$you;

    iget-object p2, p0, mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/android/server/net/OpNetworkPolicy$you;-><init>(Lcom/android/server/net/OpNetworkPolicy;Landroid/os/Handler;)V

    iput-object p1, p0, mSettingsObserver:Lcom/android/server/net/OpNetworkPolicy$you;

    iget-object p1, p0, mSettingsObserver:Lcom/android/server/net/OpNetworkPolicy$you;

    invoke-virtual {p1}, Lcom/android/server/net/OpNetworkPolicy$you;->observe()V

    invoke-virtual {p0}, initOnlineConfig()V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p2, p0, mContext:Landroid/content/Context;

    iget-object p3, p0, mScreenReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p2, p3, p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    sget-boolean p1, DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, registerGeneralReceiver()V

    :cond_0
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/net/OpNetworkPolicy$zta;

    invoke-direct {v3, p0}, Lcom/android/server/net/OpNetworkPolicy$zta;-><init>(Lcom/android/server/net/OpNetworkPolicy;)V

    const-string v4, "NetworkPolicyOnlineConfig"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, mNetworkPolicyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    const/16 v0, 0x3e8

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z
    .locals 3

    sget-boolean p0, mEnableFGNetworkRestrictFeature:Z

    if-eqz p0, :cond_9

    sget-boolean p0, isDozeChangeSupport:Z

    const/4 v0, 0x1

    if-nez p0, :cond_0

    sget p0, mPolicy:I

    if-ne p0, v0, :cond_9

    :cond_0
    sget-boolean p0, mFirstDeviceMode:Z

    if-eqz p0, :cond_9

    sget-boolean p0, mAllowFGNetworkAccess:Z

    const-string v1, "OpNetworkPolicy"

    if-nez p0, :cond_2

    sget-boolean p0, mFirstFGRestrictDebug:Z

    if-nez p0, :cond_2

    sget-boolean p0, DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    const-string p0, "Start to restrict FG network access"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-boolean v0, mFirstFGRestrictDebug:Z

    :cond_2
    const/4 p0, 0x5

    if-gt p2, p0, :cond_8

    sget-boolean p0, mAllowFGNetworkAccess:Z

    if-eqz p0, :cond_3

    return v0

    :cond_3
    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->fto(I)I

    move-result p0

    and-int/lit16 p2, p0, 0x80

    const-string v2, "isProcStateAllowedWhileIdleOrPowerSaveMode uid:"

    if-nez p2, :cond_6

    and-int/lit8 p2, p0, 0x2

    if-eqz p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/server/DeviceIdleControllerInjector;->isDozingGps(I)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-boolean p0, DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isDozingGps true"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    :cond_6
    :goto_0
    sget-boolean p2, DEBUG_ONEPLUS:Z

    if-eqz p2, :cond_7

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", flag="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v0

    :cond_8
    const/4 p0, 0x0

    return p0

    :cond_9
    invoke-static {p2}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(I)Z

    move-result p0

    return p0
.end method

.method protected logOutNetworkPolicyManagerServiceLogTagHelp(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1 All NetworkPolicyManagerService log"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys power log all 0/1"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "2 All needed log when oem log is on"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys networkpolicy log switch 0/1"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "----------------------------------"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceIdleMode(Z)V
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setDeviceIdleMode enabled = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpNetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDozenChange = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, isDozeChangeSupport:Z

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPolicy = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, mPolicy:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    sget-boolean p0, isDozeChangeSupport:Z

    const/4 p1, 0x1

    if-nez p0, :cond_0

    sget p0, mPolicy:I

    if-ne p0, p1, :cond_1

    :cond_0
    sget-boolean p0, mFirstDeviceMode:Z

    if-nez p0, :cond_1

    sput-boolean p1, mFirstDeviceMode:Z

    const-string p0, "setDeviceIdleMode start"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 p1, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, screenOffCheckDelayTime:J

    add-long/2addr v0, v2

    sget-object v2, mDozenNetworkPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method public setEarlyRestriction()V
    .locals 3

    iget-object v0, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v0, v0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, isDozeChangeSupport:Z

    if-nez v1, :cond_0

    sget v1, mPolicy:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v1, "OpNetworkPolicy"

    const-string v2, "Update mAllowFGNetworkAccess to false [deep sleep early restriction] "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-boolean v1, mAllowFGNetworkAccess:Z

    sget-boolean v1, mFirstDeviceMode:Z

    if-eqz v1, :cond_1

    iget-object p0, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {p0}, Lcom/android/server/net/NetworkPolicyManagerService;->opUpdateRulesForRestrictPowerUL()V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateSettings()V
    .locals 3

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "doze_mode_policy"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    sput p0, mPolicy:I

    sget-boolean p0, DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mPolicy updated to "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, mPolicy:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpNetworkPolicy"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
