.class Lcom/android/server/wifi/ire;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/ire$zta;,
        Lcom/android/server/wifi/ire$sis;,
        Lcom/android/server/wifi/ire$you;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.oneplus.security.database.SafeProvider"

.field private static final AUTHORITY_URI:Landroid/net/Uri;

.field private static final AW:I = 0xa

.field private static final BV:Ljava/lang/String; = "19867"

.field private static final CALLBACK_LISTEN_ALL:I = 0x1

.field private static final CALLBACK_MOBILE_REQUEST:I = 0x2

.field private static final CHAR:I = 0x2

.field private static final CV:Ljava/lang/String; = "_id"

.field private static final DOUBLE:I = 0x8

.field private static final DV:Ljava/lang/String; = "pkg"

.field private static final DW:I = 0xb

.field private static final EV:Ljava/lang/String; = "mobile"

.field private static final EW:I = 0xd

.field private static final FLOAT:I = 0x4

.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x64

.field private static final FV:Ljava/lang/String; = "wlan"

.field private static final FW:I = 0xe

.field private static final GV:Ljava/lang/String; = "SlaOnlineConfig"

.field private static final GW:I = 0xf

.field private static final HV:Ljava/lang/String; = "SlaGameWhiteList"

.field private static final HW:I = 0x10

.field private static final INT:I = 0x4

.field private static final INVALID_RSSI:I = -0xc8

.field private static final IV:Ljava/lang/String; = "SlaTopAppWhiteList"

.field private static final IW:I = 0x11

.field private static final JW:I = 0x1d

.field private static final KV:Ljava/lang/String; = "oneplus_link_turbo_value"

.field private static final KW:S = 0x11s

.field private static final LONG:I = 0x8

.field private static final LW:S = 0x12s

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x7

.field private static final MV:Ljava/lang/String; = "oneplus_smart_link_selection"

.field private static final MW:S = 0x13s

.field private static final NW:S = 0x14s

.field private static final OP_GAME_MODE_APP:I = 0x3ec

.field private static final OV:Ljava/lang/String; = "sla_game_mark"

.field private static final OW:S = 0x15s

.field private static final PV:Ljava/lang/String; = "op_gamemode_removed_packages_by_user"

.field private static final PW:S = 0x16s

.field private static final QV:Ljava/lang/String; = "game_mode_apps"

.field private static final QW:S = 0x17s

.field private static final RV:Ljava/lang/String; = "config_current_primary_sub"

.field private static final RW:S = 0x18s

.field private static final SHORT:I = 0x2

.field private static final SV:Ljava/lang/String; = "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

.field private static final TAG:Ljava/lang/String; = "OpSlaNetlinkHelper"

.field private static final TW:S = 0x19s

.field private static final UV:Ljava/lang/String; = "android.intent.action.ENABLE_SLS_APP_SWITCH"

.field private static final UW:S = 0x1as

.field private static final VV:Ljava/lang/String; = "sla_download_onetime_notify"

.field private static final VW:S = 0x1bs

.field private static final WIFI_AUTO_CHANGE_TO_MOBILE_DATA:Ljava/lang/String; = "wifi_auto_change_to_mobile_data"

.field private static final WV:Ljava/lang/String; = "sls_app_onetime_notify"

.field private static final WW:S = 0x1cs

.field private static final XV:Ljava/lang/String; = "download_smart_link_aggregation"

.field private static final XW:S = 0x1ds

.field private static final YV:Ljava/lang/String; = "sla_enable_notify"

.field private static final YW:S = 0x1es

.field private static final ZV:Ljava/lang/String; = "sla_downloading_dm_notify"

.field private static final ZW:S = 0x1fs

.field private static final _V:Ljava/lang/String; = "sla_downloading_ota_notify"

.field private static final _W:S = 0x20s

.field private static final aW:Ljava/lang/String; = "sla_downloading_heytap_notify"

.field private static final aX:S = 0x21s

.field private static final bS:Ljava/lang/String; = "network_restrict"

.field private static final bW:Ljava/lang/String; = "android.intent.action.GO_ACCELERATION_SETTINGS"

.field private static final bX:S = 0x22s

.field private static final cS:Landroid/net/Uri;

.field private static final cW:Ljava/lang/String; = "oneplus.intent.action.OP_SLA"

.field private static final cX:S = 0x23s

.field private static final dW:Ljava/lang/String; = "android.net.network.INTERNET_LOST"

.field private static final dX:S = 0x24s

.field private static final eW:Ljava/lang/String; = "NETWORK_SLA_STATUS"

.field private static final eX:S = 0x25s

.field private static final fW:Ljava/lang/String; = "NETWORK_SLA_ALERTS"

.field private static final fX:S = 0x26s

.field private static final gW:Ljava/lang/String; = "wifi_dbs_enable"

.field private static final gX:S = 0x27s

.field private static final hW:J = 0x12cL

.field private static final hX:S = 0x28s

.field private static final iW:J = 0x1d4c0L

.field private static final iX:S = 0x29s

.field private static final jW:J = 0x124f80L

.field private static final jX:S = 0x2as

.field private static final kW:J = 0x2710L

.field private static final kX:S = 0x2bs

.field private static final lW:I = 0x100

.field private static final lX:S = 0x2cs

.field private static mDebug:Z = false

.field private static final mW:I = 0x1

.field private static final nW:I = 0x0

.field private static final nX:S = 0x2ds

.field private static final oW:I = 0x1

.field private static final oX:S = 0x2es

.field private static final pW:I = 0x1

.field private static final pX:S = 0x2fs

.field private static final qW:I = 0x2

.field private static final qX:S = 0x30s

.field private static final qa:I = 0xc

.field private static final rW:I = 0x3

.field private static final rX:S = 0x31s

.field private static final sW:I = 0x1

.field private static final sX:S = 0x37s

.field private static final tW:I = 0x2

.field private static final tX:[Ljava/lang/String;

.field private static final uW:I = 0x3

.field private static uX:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final vW:I = 0x4

.field private static vX:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final wW:I = 0x5

.field private static final xW:I = 0x6

.field private static yV:Ljava/io/FileDescriptor; = null

.field private static final yW:I = 0x8

.field private static zV:Ljava/lang/String; = null

.field private static final zW:I = 0x9


# instance fields
.field private IU:Landroid/os/Handler;

.field private JU:Ljava/lang/Thread;

.field private KU:Landroid/app/NotificationChannel;

.field private LU:Landroid/app/NotificationChannel;

.field private MU:Landroid/net/NetworkRequest;

.field private NU:Lcom/android/server/pm/PackageManagerService;

.field private PU:Landroid/app/IActivityManager;

.field private QU:Landroid/telephony/TelephonyManager;

.field private RU:Landroid/net/INetd;

.field private SU:Landroid/net/Network;

.field private TU:Landroid/net/Network;

.field private Ts:Landroid/app/IProcessObserver;

.field private UU:Landroid/net/ConnectivityManager$NetworkCallback;

.field private VU:I

.field private WU:I

.field private XU:I

.field private YU:I

.field private ZU:I

.field private _U:J

.field private aV:Z

.field private bV:Z

.field private cV:Z

.field private dV:Z

.field private eV:Z

.field private fV:Z

.field private gV:Z

.field private hV:Z

.field private iV:Z

.field private jV:Z

.field private kV:Z

.field private lV:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

.field private mHandler:Landroid/os/Handler;

.field private mLastUpdateTime:J

.field private mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/net/Network;",
            "Landroid/net/NetworkState;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOnlineConfigHandler:Landroid/os/Handler;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOn:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mV:Z

.field private nV:Z

.field private oV:Z

.field private pV:Z

.field private qV:Z

.field private rV:Z

.field private sV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private uV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private vV:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wV:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final xV:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 34

    const-string v0, "ro.boot.project_name"

    const-string v1, "unknown"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, zV:Ljava/lang/String;

    const-string v0, "content://com.oneplus.security.database.SafeProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, AUTHORITY_URI:Landroid/net/Uri;

    sget-object v0, AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "network_restrict"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, cS:Landroid/net/Uri;

    const-string v1, "OP_SLA_NOTIFY_WIFI_SCORE"

    const-string v2, "OP_SLA_NOTIFY_PID"

    const-string v3, "OP_SLA_ENABLE"

    const-string v4, "OP_SLA_DISABLE"

    const-string v5, "OP_SLA_WIFI_UP"

    const-string v6, "OP_SLA_CELLULAR_UP"

    const-string v7, "OP_SLA_WIFI_DOWN"

    const-string v8, "OP_SLA_CELLULAR_DOWN"

    const-string v9, "OP_SLA_SWITCH_APP_NETWORK"

    const-string v10, "OP_SLA_NOTIFY_GAME_UID"

    const-string v11, "OP_SLA_NOTIFY_GAME_RTT"

    const-string v12, "OP_SLA_NOTIFY_TOP_APP"

    const-string v13, "OP_SLA_ENABLED"

    const-string v14, "OP_SLA_DISABLED"

    const-string v15, "OP_SLA_ENABLE_GAME_RTT"

    const-string v16, "OP_SLA_DISABLE_GAME_RTT"

    const-string v17, "OP_SLA_NOTIFY_GAME_SWITCH_STATE"

    const-string v18, "OP_SLA_NOTIFY_SPEED_RTT"

    const-string v19, "OP_SLA_SWITCH_GAME_NETWORK"

    const-string v20, "OP_SLA_NOTIFY_SCREEN_STATE"

    const-string v21, "OP_SLA_NOTIFY_CELL_SCORE"

    const-string v22, "OP_SLA_SEND_GAME_APP_STATISTIC"

    const-string v23, "OP_SLA_GET_SYN_RETRAN_INFO"

    const-string v24, "OP_SLA_GET_SPEED_UP_APP"

    const-string v25, "OP_SLA_SET_DEBUG"

    const-string v26, "OP_SLA_NOTIFY_DEFAULT_NETWORK"

    const-string v27, "OP_SLA_NOTIFY_PARAMS"

    const-string v28, "OP_SLA_NOTIFY_GAME_STATE"

    const-string v29, "OP_SLA_ENABLE_LINK_TURBO"

    const-string v30, "OP_SLA_SET_GAME_MARK"

    const-string v31, "OP_SLA_SET_NETWORK_VALID"

    const-string v32, "OP_SLA_NOTIFY_APP_SWITCH_STATE"

    const-string v33, "OP_SLA_NOTIFY_SWITCH_APP_NETWORK"

    filled-new-array/range {v1 .. v33}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, tX:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.tmgp.pubgmhd"

    const-string v3, "com.tencent.ig"

    const-string v4, "com.rekoo.pubgm"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, uX:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.tencent.mm"

    const-string v2, "com.tencent.mobileqq"

    const-string v3, "com.sina.weibo"

    const-string v4, "com.ss.android.ugc.aweme"

    const-string v5, "com.ss.android.ugc.trill"

    const-string v6, "com.whatsapp"

    const-string v7, "com.facebook.orca"

    const-string v8, "com.facebook.katana"

    const-string v9, "com.instagram.android"

    const-string v10, "com.snapchat.android"

    const-string v11, "com.twitter.android"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, vX:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const-string v0, "OpSlaNetlinkHelper"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, JU:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput v1, p0, VU:I

    const/16 v2, -0xc8

    iput v2, p0, WU:I

    iput v1, p0, XU:I

    const/4 v2, -0x1

    iput v2, p0, YU:I

    iput v1, p0, ZU:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, mLastUpdateTime:J

    iput-wide v2, p0, _U:J

    iput-boolean v1, p0, aV:Z

    iput-boolean v1, p0, bV:Z

    iput-boolean v1, p0, cV:Z

    iput-boolean v1, p0, dV:Z

    iput-boolean v1, p0, eV:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, mScreenOn:Z

    iput-boolean v1, p0, fV:Z

    iput-boolean v1, p0, gV:Z

    iput-boolean v1, p0, hV:Z

    iput-boolean v1, p0, iV:Z

    iput-boolean v1, p0, jV:Z

    iput-boolean v1, p0, kV:Z

    iput-boolean v1, p0, lV:Z

    iput-boolean v1, p0, mV:Z

    iput-boolean v1, p0, nV:Z

    iput-boolean v1, p0, oV:Z

    iput-boolean v1, p0, pV:Z

    iput-boolean v1, p0, qV:Z

    iput-boolean v1, p0, rV:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, sV:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, tV:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, uV:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, vV:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, wV:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, mNetworkMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, xV:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/wifi/OpSlaNetlinkHelper$2;

    invoke-direct {v3, p0}, Lcom/android/server/wifi/OpSlaNetlinkHelper$2;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object v3, p0, Ts:Landroid/app/IProcessObserver;

    iput-object p1, p0, mContext:Landroid/content/Context;

    const-string p1, "package"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageManagerService;

    iput-object p1, p0, NU:Lcom/android/server/pm/PackageManagerService;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/net/util/NetdService;->get()Landroid/net/INetd;

    move-result-object p1

    iput-object p1, p0, RU:Landroid/net/INetd;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string v3, "telephony_subscription_service"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, mUserManager:Landroid/os/UserManager;

    iget-object p1, p0, mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, mProfiles:Ljava/util/List;

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    iput-object p1, p0, MU:Landroid/net/NetworkRequest;

    new-instance p1, Lcom/android/server/wifi/ire$you;

    invoke-direct {p1, p0, v2}, Lcom/android/server/wifi/ire$you;-><init>(Lcom/android/server/wifi/ire;I)V

    iput-object p1, p0, UU:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, mActivityManager:Landroid/app/ActivityManager;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p1

    iput-object p1, p0, PU:Landroid/app/IActivityManager;

    :try_start_0
    iget-object p1, p0, PU:Landroid/app/IActivityManager;

    iget-object v2, p0, Ts:Landroid/app/IProcessObserver;

    invoke-interface {p1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot register activity monitoring:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Lcom/android/server/wifi/gck;

    invoke-direct {p1, p0}, Lcom/android/server/wifi/gck;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object p1, p0, mHandler:Landroid/os/Handler;

    new-instance p1, Landroid/os/HandlerThread;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/server/wifi/ire$zta;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/wifi/ire$zta;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Looper;)V

    iput-object v0, p0, IU:Landroid/os/Handler;

    invoke-direct {p0}, registerSettingsCallbacks()V

    invoke-direct {p0}, Rq()V

    invoke-direct {p0}, Qq()V

    invoke-direct {p0, p1}, zta(Landroid/os/HandlerThread;)V

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "mobile_data"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, uc(I)V

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "game_mode_status"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, XU:I

    invoke-direct {p0}, Vq()Z

    move-result p1

    iput-boolean p1, p0, rV:Z

    invoke-direct {p0}, Tq()V

    invoke-direct {p0}, br()V

    iget-object p0, p0, IU:Landroid/os/Handler;

    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private Aq()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyStartSlaPackageSockets pkg uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, YU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, YU:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    :try_start_0
    iget-object p0, p0, RU:Landroid/net/INetd;

    const/4 v2, 0x1

    invoke-interface {p0, v0, v2}, Landroid/net/INetd;->destroySockets(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception OP_SLA_ENABLED CLEAR TOP UID: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private Bc(Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, mContext:Landroid/content/Context;

    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    invoke-static {p0, p1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method private Bq()V
    .locals 8

    iget-object v0, p0, wV:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, cS:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "pkg"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wlan"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string v3, "mobile"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    or-int/2addr v2, v3

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v2, p0, wV:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Boolean;

    invoke-direct {v4, v3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "OpSlaNetlinkHelper"

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return-void

    :goto_3
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0
.end method

.method private Cq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "download_smart_link_aggregation"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Dq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "sla_downloading_dm_notify"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Eq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "sla_downloading_heytap_notify"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Fq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "sla_downloading_ota_notify"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Gq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "sla_enable_notify"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Hq()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x3ec

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-direct {p0, v4}, isThisUserAProfileOfCurrentUser(I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v7

    if-ne v7, v2, :cond_2

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private Iq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oneplus_link_turbo_value"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Jq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "sla_download_onetime_notify"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Kq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "oneplus_smart_link_selection"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Lq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "sls_app_onetime_notify"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private Mq()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, uV:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, uV:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    sget-object p0, uX:Ljava/util/ArrayList;

    return-object p0
.end method

.method private Nq()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, vV:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, vV:Ljava/util/ArrayList;

    return-object p0

    :cond_0
    sget-object p0, vX:Ljava/util/ArrayList;

    return-object p0
.end method

.method private Oq()Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, getTopActivity()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private Pa(Z)V
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/16 v0, 0x20

    :goto_0
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, zta(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After enableGameRttDetect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "):result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Pq()I
    .locals 1

    invoke-direct {p0}, getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, rtg(Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method private Qa(Z)V
    .locals 0

    invoke-direct {p0, p1}, Wa(Z)V

    invoke-direct {p0, p1}, Xa(Z)V

    return-void
.end method

.method private Qq()V
    .locals 9

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ENABLE_SLS_APP_SWITCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.network.INTERNET_LOST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.COUNTRY_CODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/wifi/qbh;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/qbh;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object v1, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "package"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/wifi/oif;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/oif;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object v0, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, mContext:Landroid/content/Context;

    iget-object v4, p0, mPackageReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private Ra(Z)V
    .locals 2

    const/16 v0, 0x2d

    invoke-direct {p0, v0, p1}, zta(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After enableWhiteListLinkTurbo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "):result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Rq()V
    .locals 1

    new-instance v0, Lcom/android/server/wifi/wtn;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/wtn;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object v0, p0, mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object p0, p0, mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    return-void
.end method

.method private Sa(Z)V
    .locals 2

    xor-int/lit8 v0, p1, 0x1

    const/16 v1, 0x2a

    invoke-direct {p0, v1, v0}, zta(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultNetwork -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string p1, "WiFi"

    goto :goto_0

    :cond_0
    const-string p1, "Cell"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Sq()V
    .locals 3

    iget-object v0, p0, QU:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    new-instance v0, Lcom/android/server/wifi/igw;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/igw;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object v0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0}, Wq()Z

    move-result v1

    iput-boolean v1, p0, fV:Z

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, QU:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, QU:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v1, 0x20000141

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method private Ta(Z)V
    .locals 2

    const/16 v0, 0x24

    invoke-direct {p0, v0, p1}, zta(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After sendScreenStateToKernel:result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " screenState="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private Tq()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Qa(Z)V

    return-void
.end method

.method private Ua(Z)V
    .locals 1

    iget-boolean v0, p0, bV:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, bV:Z

    iget-boolean p1, p0, bV:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Wq()Z

    move-result p1

    iput-boolean p1, p0, fV:Z

    iget-object p1, p0, IU:Landroid/os/Handler;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0}, ar()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, _q()V

    :cond_1
    :goto_0
    return-void
.end method

.method private Uq()Z
    .locals 3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mServiceState:Landroid/telephony/ServiceState;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Va(Z)V
    .locals 1

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "download_smart_link_aggregation"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private Vq()Z
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "wifi_dbs_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method private Wa(Z)V
    .locals 1

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_download_onetime_notify"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private Wq()Z
    .locals 5

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    iget-object p0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result p0

    sget-boolean v0, mDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "voice type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " data type:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpSlaNetlinkHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/16 v0, 0xd

    if-eq v2, v0, :cond_3

    const/16 v3, 0x13

    if-eq v2, v3, :cond_3

    const/16 v4, 0x14

    if-eq v2, v4, :cond_3

    if-eq p0, v0, :cond_3

    if-eq p0, v3, :cond_3

    if-ne p0, v4, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private Xa(Z)V
    .locals 1

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sls_app_onetime_notify"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private Xq()Z
    .locals 2

    invoke-direct {p0}, getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, rtg(Landroid/content/ComponentName;)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, qc(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Ya(Z)V
    .locals 2

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_smart_link_selection"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "wifi_auto_change_to_mobile_data"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private Yq()Z
    .locals 2

    invoke-direct {p0}, getTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v0}, rtg(Landroid/content/ComponentName;)I

    move-result v0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    invoke-direct {p0, v0}, sc(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Za(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWifiState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, cV:Z

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, yV:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, JU:Ljava/lang/Thread;

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0}, hr()V

    :cond_1
    iput-boolean p1, p0, cV:Z

    invoke-direct {p0}, ar()V

    invoke-direct {p0}, Bq()V

    iget-object p0, p0, mOnlineConfigHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, cV:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    const/16 v0, -0xc8

    invoke-direct {p0, v0}, wc(I)V

    iput-boolean p1, p0, cV:Z

    invoke-direct {p0}, _q()V

    :cond_3
    :goto_0
    return-void
.end method

.method private Zq()Z
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-static {p0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/NetworkInterface;

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->isUp()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "tun0"

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private _q()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "maybeDisableSla mSlaEnableState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, ZU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    iget v0, p0, ZU:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, setOPSlaDisable()V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/server/wifi/ire;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, mDebug:Z

    return v0
.end method

.method private ar()V
    .locals 5

    invoke-direct {p0}, Iq()Z

    move-result v0

    invoke-direct {p0}, Kq()Z

    move-result v1

    iget-boolean v2, p0, hV:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, iV:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {p0}, Xq()Z

    move-result v3

    iput-boolean v3, p0, dV:Z

    invoke-direct {p0}, Yq()Z

    move-result v3

    iput-boolean v3, p0, eV:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maybeEnableSla gameSwitchState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " appSwitchState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaGameOnFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, dV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaTopAppOnFocus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, eV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mCellConnected:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, bV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mMobileHasIpv4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, iV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaCellularUp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, mV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mMobileValidate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, kV:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpSlaNetlinkHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, dV:Z

    if-nez v0, :cond_2

    :cond_1
    if-eqz v1, :cond_3

    iget-boolean v0, p0, eV:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-direct {p0}, pr()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "enableSla..."

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, IU:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, registerMobileNetworkRequest()V

    iget-boolean v0, p0, bV:Z

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    iget-boolean v0, p0, mV:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, kV:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, setOPSlaEnable()V

    :cond_3
    return-void
.end method

.method static synthetic b(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, zq()V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wifi/ire;I)I
    .locals 0

    iput p1, p0, YU:I

    return p1
.end method

.method static synthetic bio(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Pa(Z)V

    return-void
.end method

.method static synthetic bio(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Fq()Z

    move-result p0

    return p0
.end method

.method private br()V
    .locals 3

    invoke-direct {p0}, Cq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Jq()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Wa(Z)V

    :cond_0
    invoke-direct {p0}, Kq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lq()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Xa(Z)V

    :cond_1
    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_dm_notify"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_ota_notify"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sla_downloading_heytap_notify"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method static synthetic bud(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, dr()V

    return-void
.end method

.method static synthetic bvj(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Kq()Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, qr()Z

    move-result p0

    return p0
.end method

.method static synthetic cgv(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, er()V

    return-void
.end method

.method static synthetic cjf(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Vq()Z

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, ir()V

    return-void
.end method

.method static synthetic cno(Lcom/android/server/wifi/ire;I)Z
    .locals 0

    invoke-direct {p0, p1}, sc(I)Z

    move-result p0

    return p0
.end method

.method static synthetic cno(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, dV:Z

    return p1
.end method

.method static synthetic d(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, jV:Z

    return p0
.end method

.method static synthetic dma(Lcom/android/server/wifi/ire;)I
    .locals 0

    iget p0, p0, XU:I

    return p0
.end method

.method static synthetic dma(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ya(Z)V

    return-void
.end method

.method private dr()V
    .locals 3

    invoke-direct {p0}, Kq()Z

    move-result v0

    const/16 v1, 0x30

    invoke-direct {p0, v1, v0}, zta(SI)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After sendAppSwitchStateToKernel:enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " result="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic e(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, xq()V

    return-void
.end method

.method static synthetic ear(Lcom/android/server/wifi/ire;)I
    .locals 0

    iget p0, p0, ZU:I

    return p0
.end method

.method private er()V
    .locals 3

    invoke-direct {p0}, Wq()Z

    move-result v0

    iput-boolean v0, p0, fV:Z

    iget-boolean v0, p0, fV:Z

    if-eqz v0, :cond_0

    iget v0, p0, VU:I

    goto :goto_0

    :cond_0
    const/16 v0, -0xc8

    :goto_0
    const/16 v1, 0x25

    invoke-direct {p0, v1, v0}, zta(SI)Z

    move-result v0

    sget-boolean v1, mDebug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After sendCellScoreToKernel:result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " score="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, VU:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSlaNetlinkHelper_score"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic f(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Cq()Z

    move-result p0

    return p0
.end method

.method private fr()V
    .locals 15

    iget-object v0, p0, NU:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_a

    invoke-direct {p0}, Hq()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Mq()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [I

    iget-object v4, p0, tV:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, tV:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    const/16 v5, 0x1a

    const/4 v6, 0x0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    move v7, v3

    move v0, v6

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_8

    iget-object v8, p0, wV:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    const/4 v9, -0x1

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_1

    const-string v8, "OpSlaNetlinkHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "restrict game app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_7

    aput v9, v2, v7

    goto :goto_1

    :cond_1
    iget-object v8, p0, NU:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const/high16 v11, 0x10000

    invoke-virtual {v8, v10, v11, v6}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    const/16 v10, 0x3e8

    if-gt v8, v10, :cond_4

    sget-boolean v8, mDebug:Z

    if-eqz v8, :cond_2

    const-string v8, "OpSlaNetlinkHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendGameAppUid invalid uid for app:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aput v9, v2, v7

    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_7

    aput v9, v2, v7

    :cond_3
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    iget-object v12, p0, tV:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v8, v2, v7

    sget-boolean v12, mDebug:Z

    if-eqz v12, :cond_5

    const-string v12, "OpSlaNetlinkHelper"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "sendGameAppUid data["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "]="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v12, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v7, v7, 0x1

    if-nez v0, :cond_7

    iget-object v8, p0, NU:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const/16 v13, 0x3e7

    invoke-virtual {v8, v12, v11, v13}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v8

    if-le v8, v10, :cond_6

    iget-object v9, p0, tV:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v8, v2, v7

    sget-boolean v9, mDebug:Z

    if-eqz v9, :cond_3

    const-string v9, "OpSlaNetlinkHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sendGameAppUid data["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "]="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    aput v9, v2, v7

    goto :goto_1

    :cond_7
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_8
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v7, v3

    aput v7, v2, v6

    invoke-direct {p0, v5, v2}, zta(S[I)Z

    goto :goto_4

    :cond_9
    :goto_3
    :try_start_1
    const-string v0, "OpSlaNetlinkHelper"

    const-string v1, "gameApps empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aput v6, v2, v6

    invoke-direct {p0, v5, v2}, zta(S[I)Z

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_a
    :goto_4
    return-void
.end method

.method static synthetic fto(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, wq()V

    return-void
.end method

.method static synthetic g(Lcom/android/server/wifi/ire;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Mq()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic gck(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, Sq()V

    return-void
.end method

.method static synthetic gck(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Va(Z)V

    return-void
.end method

.method private getTopActivity()Landroid/content/ComponentName;
    .locals 2

    iget-object p0, p0, mActivityManager:Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    return-object p0

    :cond_1
    return-object v0
.end method

.method private gr()V
    .locals 3

    invoke-direct {p0}, Iq()Z

    move-result v0

    const/16 v1, 0x21

    invoke-direct {p0, v1, v0}, zta(SI)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "After sendGameSwitchStateToKernel:enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " result="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSlaNetlinkHelper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic gwm(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, _q()V

    return-void
.end method

.method private gwm(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/wifi/ibl;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/ibl;-><init>(Lcom/android/server/wifi/ire;Landroid/widget/Toast;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/android/server/wifi/gwm;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wifi/gwm;-><init>(Lcom/android/server/wifi/ire;Landroid/widget/Toast;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private gwm([I)V
    .locals 1

    const/16 v0, 0x2f

    invoke-direct {p0, v0, p1}, zta(S[I)Z

    return-void
.end method

.method static synthetic h(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Yq()Z

    move-result p0

    return p0
.end method

.method private handleAvailable(Landroid/net/Network;)V
    .locals 8

    iget-object v0, p0, mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAvailable for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, mNetworkMap:Ljava/util/HashMap;

    new-instance v7, Landroid/net/NetworkState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 10

    iget-object v0, p0, mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {p2, v1}, Landroid/net/LinkProperties;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLinkPropertiesChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, mNetworkMap:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v5, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x1

    invoke-direct {p0, v2, p2, v1}, you(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, p2, v1}, zta(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, p2, v1}, sis(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v0, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, p1, p2, v0}, zta(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleLost(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLost for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkState;

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, you(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, v0, v1}, zta(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    iget-object v1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, v0, v1}, sis(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object p1, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {p0, v2, p1}, zta(ZLandroid/net/NetworkCapabilities;)V

    return-void
.end method

.method private handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 10

    iget-object v0, p0, mNetworkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCapabilitiesChanged for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSlaNetlinkHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, mNetworkMap:Ljava/util/HashMap;

    new-instance v9, Landroid/net/NetworkState;

    const/4 v3, 0x0

    iget-object v4, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v9

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1, p2}, you(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iget-object p1, v0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v1, p1, p2}, sis(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v1, p2}, zta(ZLandroid/net/NetworkCapabilities;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic hmo(Lcom/android/server/wifi/ire;)I
    .locals 0

    iget p0, p0, VU:I

    return p0
.end method

.method private hr()V
    .locals 1

    sget-object v0, yV:Ljava/io/FileDescriptor;

    if-nez v0, :cond_1

    iget-object v0, p0, JU:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/wifi/bvj;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/bvj;-><init>(Lcom/android/server/wifi/ire;)V

    iput-object v0, p0, JU:Ljava/lang/Thread;

    iget-object p0, p0, JU:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "OpSlaNetlinkHelper"

    const-string v0, "Already listening!!"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic i(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Lq()Z

    move-result p0

    return p0
.end method

.method private ibl(Ljava/lang/String;I)V
    .locals 2

    const-string v0, "com.heytap.market"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.downloads"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.oneplus.opbackup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, xV:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SlaPkgNameMap:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, xV:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic ibl(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, eV:Z

    return p0
.end method

.method static synthetic igw(Lcom/android/server/wifi/ire;I)V
    .locals 0

    invoke-direct {p0, p1}, oc(I)V

    return-void
.end method

.method private igw(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    const-string p0, "OpSlaNetlinkHelper"

    const-string p1, "jsonArray is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-boolean v0, mDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseConfigFromJson jsonArray="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlaGameWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, uV:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, uV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "OpSlaNetlinkHelper"

    const-string v5, "[OnlineConfig] Sla game white list from online config:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, uV:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, IU:Landroid/os/Handler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "OpSlaNetlinkHelper"

    const-string v3, "[OnlineConfig] Sla game white list online config updated complete"

    :goto_2
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_3
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SlaTopAppWhiteList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, vV:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v4, p0, vV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const-string v4, "OpSlaNetlinkHelper"

    const-string v5, "[OnlineConfig] Sla top app from online config:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v0

    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, vV:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v2, p0, IU:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const-string v2, "OpSlaNetlinkHelper"

    const-string v3, "[OnlineConfig] Sla top app online config updated complete"
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method static synthetic igw(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Eq()Z

    move-result p0

    return p0
.end method

.method static synthetic igw(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, mScreenOn:Z

    return p1
.end method

.method private ir()V
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x1040480

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_SLA_STATUS"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, KU:Landroid/app/NotificationChannel;

    iget-object v1, p0, KU:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    iget-object v1, p0, KU:Landroid/app/NotificationChannel;

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object v4, p0, KU:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v4, 0x50f00d0

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "android.substName"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x507016f

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x50f00d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v1}, Bc(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p0, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x33954bb

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic ire(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, fV:Z

    return p0
.end method

.method static synthetic irq(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, vq()V

    return-void
.end method

.method private isThisUserAProfileOfCurrentUser(I)Z
    .locals 4

    iget-object v0, p0, mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, mProfiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-ne v3, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static isVerizonSku()Z
    .locals 2

    sget-object v0, zV:Ljava/lang/String;

    const-string v1, "19867"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic ivd(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager$NetworkCallback;
    .locals 0

    iget-object p0, p0, UU:Landroid/net/ConnectivityManager$NetworkCallback;

    return-object p0
.end method

.method static synthetic j(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, pr()Z

    move-result p0

    return p0
.end method

.method private jr()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x104047e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_SLA_ALERTS"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, LU:Landroid/app/NotificationChannel;

    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, LU:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x10402c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x50f00cd

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.ENABLE_DOWNLOAD_SWITCH"

    invoke-direct {p0, v4}, Bc(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x5070170

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00ce

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v2}, Bc(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p0, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x33954bb

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic k(Lcom/android/server/wifi/ire;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, TU:Landroid/net/Network;

    return-object p0
.end method

.method private kr()V
    .locals 6

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, mContext:Landroid/content/Context;

    const v3, 0x104047e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NETWORK_SLA_ALERTS"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object v1, p0, LU:Landroid/app/NotificationChannel;

    iget-object v1, p0, mNotificationManager:Landroid/app/NotificationManager;

    iget-object v2, p0, LU:Landroid/app/NotificationChannel;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v2, 0x10402c9

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.substName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$Action$Builder;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x50f00d7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "android.intent.action.ENABLE_SLS_APP_SWITCH"

    invoke-direct {p0, v4}, Bc(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v5, v2, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v2, v4, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x5070170

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00d9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x50f00d8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v2, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v2}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v2, "android.intent.action.GO_ACCELERATION_SETTINGS"

    invoke-direct {p0, v2}, Bc(Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object p0, p0, mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const v1, 0x33954be

    invoke-virtual {p0, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, yq()V

    return-void
.end method

.method static synthetic kth(Lcom/android/server/wifi/ire;I)Z
    .locals 0

    invoke-direct {p0, p1}, qc(I)Z

    move-result p0

    return p0
.end method

.method static synthetic kth(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, rV:Z

    return p1
.end method

.method static synthetic l(Lcom/android/server/wifi/ire;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic les(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, mScreenOn:Z

    return p0
.end method

.method static synthetic lqr(Lcom/android/server/wifi/ire;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, Nq()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method private lr()V
    .locals 14

    iget-object v0, p0, NU:Lcom/android/server/pm/PackageManagerService;

    if-eqz v0, :cond_8

    invoke-direct {p0}, Nq()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [I

    iget-object v3, p0, sV:Ljava/util/ArrayList;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, sV:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    move v6, v2

    move v5, v4

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v5, v7, :cond_7

    iget-object v7, p0, wV:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "OpSlaNetlinkHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restrict top app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object v7, p0, NU:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/high16 v9, 0x10000

    invoke-virtual {v7, v8, v9, v4}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v7

    const/16 v8, 0x3e8

    const/4 v10, -0x1

    if-gt v7, v8, :cond_3

    sget-boolean v7, mDebug:Z

    if-eqz v7, :cond_1

    const-string v7, "OpSlaNetlinkHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sendTopAppUid invalid uid for app:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    aput v10, v1, v6

    add-int/lit8 v6, v6, 0x1

    if-nez v5, :cond_6

    aput v10, v1, v6

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    iget-object v11, p0, sV:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v7, v1, v6

    sget-boolean v11, mDebug:Z

    if-eqz v11, :cond_4

    const-string v11, "OpSlaNetlinkHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sendTopAppUid data["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v6, v6, 0x1

    iget-object v7, p0, NU:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const/16 v12, 0x3e7

    invoke-virtual {v7, v11, v9, v12}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result v7

    if-le v7, v8, :cond_5

    iget-object v8, p0, sV:Ljava/util/ArrayList;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aput v7, v1, v6

    sget-boolean v8, mDebug:Z

    if-eqz v8, :cond_2

    const-string v8, "OpSlaNetlinkHelper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "sendTopAppUid data["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "]="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-nez v5, :cond_6

    aput v10, v1, v6

    goto :goto_1

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-int/2addr v6, v2

    aput v6, v1, v4

    const/16 v0, 0x1c

    invoke-direct {p0, v0, v1}, zta(S[I)Z

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic m(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Jq()Z

    move-result p0

    return p0
.end method

.method private mr()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showAppSwitchNetworkToast timer:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, mLastUpdateTime:J

    sub-long v3, v0, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpSlaNetlinkHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, WU:I

    const/16 v3, -0xc8

    if-eq v2, v3, :cond_2

    const/16 v3, -0x4a

    if-lt v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, mLastUpdateTime:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    sub-long v2, v0, v2

    const-wide/32 v4, 0x124f80

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_1
    iget-wide v2, p0, _U:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    iput-wide v0, p0, mLastUpdateTime:J

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x50f00da

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic n(Lcom/android/server/wifi/ire;)Landroid/net/Network;
    .locals 0

    iget-object p0, p0, SU:Landroid/net/Network;

    return-object p0
.end method

.method static synthetic o(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Xq()Z

    move-result p0

    return p0
.end method

.method static synthetic obl(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, lr()V

    return-void
.end method

.method private oc(I)V
    .locals 0

    invoke-direct {p0, p1}, rc(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, oV:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, qV:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, pV:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, yq()V

    :cond_0
    return-void
.end method

.method static synthetic oif(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Iq()Z

    move-result p0

    return p0
.end method

.method private or()V
    .locals 2

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x50f00d6

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic oxb(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, rV:Z

    return p0
.end method

.method static synthetic p(Lcom/android/server/wifi/ire;)I
    .locals 0

    invoke-direct {p0}, Pq()I

    move-result p0

    return p0
.end method

.method private pc(I)V
    .locals 4

    const-string v0, "OpSlaNetlinkHelper"

    invoke-direct {p0}, getTopActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-direct {p0, v1}, rtg(Landroid/content/ComponentName;)I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    const/4 v2, 0x1

    if-lt p1, v2, :cond_0

    const/4 v2, 0x3

    if-gt p1, v2, :cond_0

    invoke-direct {p0, v1}, qc(I)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroyGameAppSockets("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, RU:Landroid/net/INetd;

    invoke-interface {p0, v1, p1}, Landroid/net/INetd;->destroySockets(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception destroyGameAppSockets: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private pr()Z
    .locals 7

    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Uq()Z

    move-result v3

    invoke-direct {p0}, Zq()Z

    move-result v4

    invoke-direct {p0}, Wq()Z

    move-result v5

    iput-boolean v5, p0, fV:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slaEnableConditionCheck, mSlaEnableState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, ZU:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mWifiConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, cV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mCellEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, aV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " simCardReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mWifiHasIpv4:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, hV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDataRoaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mSlaWifiUp:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, lV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isVpnUsed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingLTE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, fV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingPrivateDns:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, gV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mWifiValidate:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, jV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mDbsEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, rV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, ZU:I

    if-nez v5, :cond_1

    iget-boolean v5, p0, cV:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, hV:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, aV:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    iget-boolean v0, p0, lV:Z

    if-eqz v0, :cond_1

    if-nez v4, :cond_1

    iget-boolean v0, p0, fV:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, gV:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, jV:Z

    if-eqz v0, :cond_1

    iget-boolean p0, p0, rV:Z

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static synthetic q(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, stopListening()V

    return-void
.end method

.method static synthetic qbh(Lcom/android/server/wifi/ire;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, IU:Landroid/os/Handler;

    return-object p0
.end method

.method private qc(I)Z
    .locals 2

    iget-object v0, p0, tV:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, tV:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method static synthetic qeg(Lcom/android/server/wifi/ire;)Landroid/net/NetworkRequest;
    .locals 0

    iget-object p0, p0, MU:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method private qr()Z
    .locals 7

    iget-object v0, p0, mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v3, v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0}, Uq()Z

    move-result v3

    invoke-direct {p0}, Zq()Z

    move-result v4

    invoke-direct {p0}, Wq()Z

    move-result v5

    iput-boolean v5, p0, fV:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slsWanDetectConditionCheck, mSlaEnableState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, ZU:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " mWifiConnected:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, cV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mCellEnabled:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, aV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " simCardReady:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isDataRoaming:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " isVpnUsed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " mUsingLTE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, fV:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpSlaNetlinkHelper"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p0, ZU:I

    if-nez v5, :cond_1

    iget-boolean v5, p0, cV:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, aV:Z

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    iget-boolean p0, p0, fV:Z

    if-eqz p0, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method static synthetic r(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, or()V

    return-void
.end method

.method private rc(I)Z
    .locals 4

    iget-object v0, p0, xV:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, xV:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pkgname = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is killed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpSlaNetlinkHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.android.providers.downloads"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-boolean v1, p0, oV:Z

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_dm_notify"

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_0
    const-string v2, "com.heytap.market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, qV:Z

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_heytap_notify"

    goto :goto_0

    :cond_1
    const-string v2, "com.oneplus.opbackup"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iput-boolean v1, p0, pV:Z

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "sla_downloading_ota_notify"

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, xV:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private registerMobileNetworkRequest()V
    .locals 4

    iget-object v0, p0, mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v1, "OpSlaNetlinkHelper"

    if-eqz v0, :cond_0

    const-string p0, "registerMobileNetworkRequest() already registered"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/android/server/wifi/ire$you;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/ire$you;-><init>(Lcom/android/server/wifi/ire;I)V

    iput-object v2, p0, mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requesting mobile network: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, mCm:Landroid/net/ConnectivityManager;

    iget-object p0, p0, mMobileNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v0, p0}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method private registerSettingsCallbacks()V
    .locals 5

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "download_smart_link_aggregation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/ugm;

    iget-object v3, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/android/server/wifi/ugm;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_enable_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/vdb;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/vdb;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_downloading_dm_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/zgw;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/zgw;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_downloading_ota_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/obl;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/obl;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_downloading_heytap_notify"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/oxb;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/oxb;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mobile_data"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/cjf;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/cjf;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_current_primary_sub"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/ear;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/ear;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/you;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/you;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/sis;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/sis;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_gamemode_removed_packages_by_user"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/tsu;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/tsu;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_link_turbo_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/rtg;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/rtg;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_smart_link_selection"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/ssp;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/ssp;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_game_mark"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/cno;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/cno;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, cS:Landroid/net/Uri;

    new-instance v2, Lcom/android/server/wifi/kth;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/kth;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_dbs_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/wifi/bio;

    iget-object v4, p0, IU:Landroid/os/Handler;

    invoke-direct {v2, p0, v4}, Lcom/android/server/wifi/bio;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Handler;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private rtg(Landroid/content/ComponentName;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p0, p0, NU:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/high16 v0, 0x10000

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPackageUid(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/wifi/ire;I)I
    .locals 0

    iput p1, p0, ZU:I

    return p1
.end method

.method static synthetic rtg(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, pV:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, eV:Z

    return p1
.end method

.method private sc(I)Z
    .locals 2

    iget-object v0, p0, sV:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, sV:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

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

.method private setOPSlaDisable()V
    .locals 5

    iget v0, p0, ZU:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "OpSlaNetlinkHelper"

    const-string v1, "disableSla.."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, RU:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->setOPSlaDisable()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "setOPSlaDisable failed!"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOPSlaDisable result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mSlaEnableState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, ZU:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    iput v1, p0, ZU:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, mLastUpdateTime:J

    :cond_0
    return-void
.end method

.method private setOPSlaEnable()V
    .locals 5

    iget-boolean v0, p0, cV:Z

    const-string v1, "OpSlaNetlinkHelper"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, bV:Z

    if-eqz v0, :cond_0

    iget v0, p0, ZU:I

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, RU:Landroid/net/INetd;

    invoke-interface {v0}, Landroid/net/INetd;->setOPSlaEnable()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOPSlaEnable failed! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    iget-boolean v2, p0, cV:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, bV:Z

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "setOPSlaEnable failed!! try to recover..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, RU:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->setOPSlaDisable()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOPSlaEnable failed to setOPSlaDisable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    :try_start_2
    iget-object v2, p0, RU:Landroid/net/INetd;

    invoke-interface {v2}, Landroid/net/INetd;->setOPSlaEnable()Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOPSlaEnable failed to recover:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    const/4 v2, 0x1

    iput v2, p0, ZU:I

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOPSlaEnable result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mWifiConnected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, cV:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mCellConnected="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, bV:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mSlaEnableState="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, ZU:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wifi/ire;I)V
    .locals 0

    invoke-direct {p0, p1}, tc(I)V

    return-void
.end method

.method private sis(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 9

    if-eqz p2, :cond_d

    if-nez p3, :cond_0

    goto/16 :goto_8

    :cond_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    instance-of v4, v3, Ljava/net/Inet4Address;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_2
    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p2

    move-object v5, p2

    goto :goto_1

    :cond_4
    move-object v5, v2

    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const-string v7, "OpSlaNetlinkHelper"

    if-nez p2, :cond_c

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_c

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 p2, 0x1

    invoke-virtual {p3, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    const/4 v8, 0x0

    invoke-virtual {p3, v8}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p3, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz p2, :cond_7

    invoke-direct {p0, p1}, Za(Z)V

    iget-boolean p3, p0, lV:Z

    if-ne p3, p1, :cond_6

    return-void

    :cond_6
    iput-boolean p1, p0, hV:Z

    const-string p3, "1"

    :goto_2
    move-object v1, p3

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_b

    if-eqz p3, :cond_b

    invoke-direct {p0, p1}, Ua(Z)V

    iget-boolean p3, p0, mV:Z

    if-ne p3, p1, :cond_8

    return-void

    :cond_8
    iput-boolean p1, p0, iV:Z

    const-string p3, "2"

    goto :goto_2

    :goto_3
    if-eqz p1, :cond_9

    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlaIfaceUp:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, RU:Landroid/net/INetd;

    move-object v2, v6

    invoke-interface/range {v0 .. v5}, Landroid/net/INetd;->setOPSlaIfaceUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception setSlaIfaceUp: "

    goto :goto_4

    :cond_9
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlaIfaceDown:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, RU:Landroid/net/INetd;

    invoke-interface {p3, v1, v6}, Landroid/net/INetd;->setOPSlaIfaceDown(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception setSlaIfaceDown: "

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSlaIface result:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v7, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_b

    if-eqz p2, :cond_a

    iput-boolean p1, p0, lV:Z

    goto :goto_6

    :cond_a
    iput-boolean p1, p0, mV:Z

    :goto_6
    invoke-direct {p0}, ar()V

    :cond_b
    return-void

    :cond_c
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ignore to set sla iface:slaIface="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slaIpaddr="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " slaDns="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_8
    return-void
.end method

.method static synthetic sis(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, oV:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, pV:Z

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/wifi/ire;I)I
    .locals 0

    iput p1, p0, VU:I

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Xa(Z)V

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, qV:Z

    return p0
.end method

.method private stopListening()V
    .locals 2

    const-string v0, "OpSlaNetlinkHelper"

    const-string v1, "stopListening..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, yV:Ljava/io/FileDescriptor;

    if-eqz v0, :cond_0

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    const/4 v0, 0x0

    sput-object v0, yV:Ljava/io/FileDescriptor;

    iput-object v0, p0, JU:Ljava/lang/Thread;

    :cond_0
    invoke-direct {p0}, _q()V

    return-void
.end method

.method private tc(I)V
    .locals 2

    const/16 v0, 0x2c

    invoke-direct {p0, v0, p1}, zta(SI)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After sendGameModeState: gameModeStarted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " result="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private tsu(S)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x11

    if-lt p1, p0, :cond_1

    add-int/lit8 p0, p1, -0x11

    sget-object v0, tX:[Ljava/lang/String;

    array-length v1, v0

    if-le p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wifi/ire;I)V
    .locals 0

    invoke-direct {p0, p1}, vc(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Dq()Z

    move-result p0

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, qV:Z

    return p1
.end method

.method private uc(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCellSettingsState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, aV:Z

    iget-boolean p1, p0, aV:Z

    if-eqz p1, :cond_3

    sget-object p1, yV:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_1

    iget-object p1, p0, JU:Ljava/lang/Thread;

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, hr()V

    :cond_2
    invoke-direct {p0}, ar()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, _q()V

    :goto_1
    return-void
.end method

.method static synthetic ugm(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, ar()V

    return-void
.end method

.method private vc(I)V
    .locals 1

    const/16 v0, 0x2e

    invoke-direct {p0, v0, p1}, zta(SI)Z

    return-void
.end method

.method static synthetic vdb(Lcom/android/server/wifi/ire;)Z
    .locals 0

    iget-boolean p0, p0, dV:Z

    return p0
.end method

.method static synthetic vdw(Lcom/android/server/wifi/ire;)Landroid/net/ConnectivityManager;
    .locals 0

    iget-object p0, p0, mCm:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method static synthetic veq(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, hr()V

    return-void
.end method

.method static synthetic vju(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, gr()V

    return-void
.end method

.method private vq()V
    .locals 2

    iget-object v0, p0, mCm:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, mCm:Landroid/net/ConnectivityManager;

    :cond_0
    return-void
.end method

.method private wc(I)V
    .locals 0

    iput p1, p0, WU:I

    return-void
.end method

.method private wq()V
    .locals 2

    invoke-direct {p0}, Wq()Z

    move-result v0

    iput-boolean v0, p0, fV:Z

    iget-object v0, p0, IU:Landroid/os/Handler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    sget-boolean v0, mDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceStateChanged mUsingLTE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, fV:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, ZU:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Uq()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, fV:Z

    if-nez v0, :cond_2

    :cond_1
    invoke-direct {p0}, _q()V

    goto :goto_0

    :cond_2
    iget v0, p0, ZU:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, fV:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, ar()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wifi/ire;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic wtn(Lcom/android/server/wifi/ire;I)V
    .locals 0

    invoke-direct {p0, p1}, wc(I)V

    return-void
.end method

.method static synthetic wtn(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Ta(Z)V

    return-void
.end method

.method private xq()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSlsAppEnableState():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Kq()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " getSlsAppOneTimeNotify():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lq()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSlaNetlinkHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Kq()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Xa(Z)V

    invoke-direct {p0}, kr()V

    :cond_0
    return-void
.end method

.method static synthetic ye()Ljava/io/FileDescriptor;
    .locals 1

    sget-object v0, yV:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic you(Lcom/android/server/wifi/ire;I)I
    .locals 0

    iput p1, p0, XU:I

    return p1
.end method

.method static synthetic you(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, jr()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wifi/ire;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1}, handleLost(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic you(Lcom/android/server/wifi/ire;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, gwm(Ljava/lang/String;I)V

    return-void
.end method

.method private you(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "tun0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    const/4 p2, 0x4

    invoke-virtual {p3, p2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_4

    invoke-direct {p0}, _q()V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, ar()V

    :goto_1
    return-void
.end method

.method static synthetic you(Lcom/android/server/wifi/ire;Z)Z
    .locals 0

    iput-boolean p1, p0, oV:Z

    return p1
.end method

.method private yq()V
    .locals 2

    iget-object p0, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const v1, 0x33954bb

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic ywr(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, fr()V

    return-void
.end method

.method static synthetic ywr(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Sa(Z)V

    return-void
.end method

.method static synthetic zgw(Lcom/android/server/wifi/ire;)V
    .locals 0

    invoke-direct {p0}, Bq()V

    return-void
.end method

.method private zq()V
    .locals 2

    iget-object p0, p0, mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const v1, 0x33954be

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;J)J
    .locals 0

    iput-wide p1, p0, _U:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0

    iput-object p1, p0, mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method static synthetic zta(Ljava/io/FileDescriptor;)Ljava/io/FileDescriptor;
    .locals 0

    sput-object p0, yV:Ljava/io/FileDescriptor;

    return-object p0
.end method

.method private zta(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 5

    if-nez p3, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "capabilities is null, network:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {p3, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p3

    if-eqz v1, :cond_2

    iput-object p1, p0, SU:Landroid/net/Network;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    :cond_1
    iput-boolean v2, p0, hV:Z

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_4

    if-eqz p3, :cond_4

    iput-object p1, p0, TU:Landroid/net/Network;

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasIPv4Address()Z

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    :cond_3
    iput-boolean v2, p0, iV:Z

    :cond_4
    :goto_0
    iget-boolean p1, p0, hV:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, iV:Z

    if-nez p1, :cond_6

    :cond_5
    iget p1, p0, ZU:I

    if-ne p1, v0, :cond_6

    invoke-direct {p0}, _q()V

    :cond_6
    return-void
.end method

.method private zta(Landroid/os/HandlerThread;)V
    .locals 4

    new-instance v0, Lcom/android/server/wifi/dma;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/server/wifi/dma;-><init>(Lcom/android/server/wifi/ire;Landroid/os/Looper;)V

    iput-object v0, p0, mOnlineConfigHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object v1, p0, mOnlineConfigHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/wifi/ire$sis;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/ire$sis;-><init>(Lcom/android/server/wifi/ire;)V

    const-string v3, "SlaOnlineConfig"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, mOnlineConfigHandler:Landroid/os/Handler;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;I)V
    .locals 0

    invoke-direct {p0, p1}, uc(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1}, handleAvailable(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, handleLinkProp(Landroid/net/Network;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2}, handleNetCap(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, ibl(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, igw(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;Z)V
    .locals 0

    invoke-direct {p0, p1}, Wa(Z)V

    return-void
.end method

.method private zta(ZLandroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 1

    if-nez p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p3

    invoke-virtual {p2}, Landroid/net/LinkProperties;->isPrivateDnsActive()Z

    move-result p2

    if-eqz p3, :cond_3

    if-eqz p1, :cond_2

    iput-boolean p2, p0, gV:Z

    iget-boolean p1, p0, gV:Z

    if-eqz p1, :cond_1

    iget p1, p0, ZU:I

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, _q()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, ar()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, gV:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private zta(ZLandroid/net/NetworkCapabilities;)V
    .locals 7

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v4

    const/16 v5, 0xc

    invoke-virtual {p2, v5}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    const/16 v6, 0x10

    invoke-virtual {p2, v6}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move p2, v3

    :goto_0
    iput-boolean p2, p0, jV:Z

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_4

    if-eqz v5, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p2, v3

    :goto_1
    iput-boolean p2, p0, kV:Z

    :cond_4
    :goto_2
    iget-boolean p1, p0, jV:Z

    aput p1, v0, v3

    iget-boolean p1, p0, kV:Z

    aput p1, v0, v1

    invoke-direct {p0, v0}, gwm([I)V

    if-nez v2, :cond_5

    if-eqz v4, :cond_8

    if-eqz v5, :cond_8

    :cond_5
    iget p1, p0, ZU:I

    if-nez p1, :cond_6

    iget-boolean p1, p0, jV:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, kV:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, ar()V

    goto :goto_3

    :cond_6
    iget p1, p0, ZU:I

    if-ne p1, v1, :cond_8

    iget-boolean p1, p0, jV:Z

    if-eqz p1, :cond_7

    iget-boolean p1, p0, kV:Z

    if-nez p1, :cond_8

    :cond_7
    invoke-direct {p0}, _q()V

    :cond_8
    :goto_3
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;)Z
    .locals 0

    invoke-direct {p0}, Gq()Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wifi/ire;SI)Z
    .locals 0

    invoke-direct {p0, p1, p2}, zta(SI)Z

    move-result p0

    return p0
.end method

.method private zta(SI)Z
    .locals 9

    sget-object v0, yV:Ljava/io/FileDescriptor;

    const/4 v1, 0x0

    const-string v2, "OpSlaNetlinkHelper"

    if-eqz v0, :cond_1

    :try_start_0
    new-instance p0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {p0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    const/16 v0, 0x14

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 p1, 0x1

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    array-length p0, v4

    sget-object v3, yV:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    array-length v6, v4

    const-wide/16 v7, 0x12c

    invoke-static/range {v3 .. v8}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p2, :cond_0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    return p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception when sendToKernel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    const/16 p2, 0x11

    if-lt p1, p2, :cond_2

    const/16 p2, 0x37

    if-ge p1, p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendToKernel ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, tsu(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] failed, mNlfd=null !!!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendToKernel invalid message type:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private zta(S[I)Z
    .locals 9

    sget-object v0, yV:Ljava/io/FileDescriptor;

    const-string v1, "OpSlaNetlinkHelper"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance p0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {p0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    const/16 v0, 0x10

    if-nez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    array-length v3, p2

    :goto_0
    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    const/4 p1, 0x1

    iput-short p1, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_pid:I

    iget v0, p0, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    new-array v4, v0, [B

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    if-eqz p2, :cond_1

    array-length p0, p2

    move v3, v2

    :goto_1
    if-ge v3, p0, :cond_1

    aget v5, p2, v3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    array-length p0, v4

    sget-object v3, yV:Ljava/io/FileDescriptor;

    const/4 v5, 0x0

    array-length v6, v4

    const-wide/16 v7, 0x12c

    invoke-static/range {v3 .. v8}, Landroid/net/netlink/NetlinkSocket;->sendMessage(Ljava/io/FileDescriptor;[BIIJ)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p0, p2, :cond_2

    goto :goto_2

    :cond_2
    move p1, v2

    :goto_2
    return p1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception when sendToKernel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_3
    const/16 p2, 0x11

    if-lt p1, p2, :cond_4

    const/16 p2, 0x37

    if-ge p1, p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendToKernel ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, tsu(S)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] failed, mNldf=null !!!"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sendToKernel invalid message type:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, mDebug:Z

    const/16 v0, 0x29

    invoke-direct {p0, v0, p1}, zta(SI)Z

    return-void
.end method

.method public sendWifiScoreToKernel(I)V
    .locals 2

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, zta(SI)Z

    move-result p0

    sget-boolean v0, mDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "After sendWifiScoreToKernel:result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " score="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSlaNetlinkHelper_score"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
