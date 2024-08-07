.class public Lcom/android/server/am/OnePlusMemoryTracker;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;
.implements Lcom/android/server/am/IOpMemoryTracker;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusMemoryTracker$sis;,
        Lcom/android/server/am/OnePlusMemoryTracker$tsu;,
        Lcom/android/server/am/OnePlusMemoryTracker$zta;,
        Lcom/android/server/am/OnePlusMemoryTracker$rtg;,
        Lcom/android/server/am/OnePlusMemoryTracker$you;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.opmt.action.test"

.field private static final DEBUG_MODE:Z

.field public static final DROPBOX_FILE:Ljava/lang/String; = "/data/system/memory_tracker.txt"

.field private static final DROPBOX_TAG:Ljava/lang/String; = "memory_tracker"

.field private static final DROPBOX_TAG_FOR_CRITIACAL:Ljava/lang/String; = "critical_low_memory_tracker"

.field private static final DUMP_MEM_OOM_ADJ:[I

.field private static final DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

.field private static final FLAG_LOG_EVENTS:I = 0x4

.field private static final FLAG_LOG_KERNEL:I = 0x8

.field private static final FLAG_LOG_MAIN:I = 0x2

.field private static final FLAG_LOG_SYSTEM:I = 0x1

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "memory"

.field private static final MDM_PROCESSNAME:Ljava/lang/String; = "pn"

.field private static final MDM_TOTAL_MEMORY:Ljava/lang/String; = "tm"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "MemoryTracker"

.field private static final PROP_COPY_ION:Ljava/lang/String; = "persist.sys.opmt.copyion"

.field private static final PROP_DROPBOX:Ljava/lang/String; = "persist.sys.opmt.dropbox"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opmt.enable"

.field private static final PROP_MDM:Ljava/lang/String; = "persist.sys.opmt.mdm"

.field private static final PROP_REPORT:Ljava/lang/String; = "persist.sys.opmt.report"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field public static final TAG:Ljava/lang/String; = "OPMT"

.field private static mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

.field private static sDebug:Z

.field private static sDebugCritical:Z

.field private static sDropbox:Z

.field private static sDropboxMaxSize:I

.field public static sInUsing:Z

.field private static sKillLeakProcess:Z

.field private static sLogcatLineNum:I

.field private static sMdm:Z

.field private static sReport:Z

.field private static sReportInterval:J

.field private static sSwitchBackgroundTimeount:J


# instance fields
.field private extraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private mCommandFlag:I

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

.field private mContext:Landroid/content/Context;

.field private mCriticalReport:Z

.field private mDeviceTotalMemory:Ljava/lang/String;

.field private mFirstReport:Z

.field private mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

.field private mLastReportTime:J

.field private mLeakProcessKillMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLruApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$zta;",
            ">;"
        }
    .end annotation
.end field

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mRecentFrontUids:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/OnePlusMemoryTracker$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private mTestReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x0

    const-string v1, "persist.sys.opmt.debugmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, DEBUG_MODE:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, sDebug:Z

    const/4 v1, 0x1

    sput-boolean v1, sInUsing:Z

    sput-boolean v1, sMdm:Z

    sput-boolean v0, sDropbox:Z

    sput-boolean v1, sReport:Z

    sput-boolean v0, sDebugCritical:Z

    const-string v2, "Native"

    const-string v3, "System"

    const-string v4, "Persistent"

    const-string v5, "Persistent Service"

    const-string v6, "Foreground"

    const-string v7, "Visible"

    const-string v8, "Perceptible"

    const-string v9, "Perceptible Low"

    const-string v10, "Heavy Weight"

    const-string v11, "Backup"

    const-string v12, "A Services"

    const-string v13, "Home"

    const-string v14, "Previous"

    const-string v15, "B Services"

    const-string v16, "Cached"

    filled-new-array/range {v2 .. v16}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    const/16 v1, 0xf

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, DUMP_MEM_OOM_ADJ:[I

    const/high16 v1, 0x40000

    sput v1, sDropboxMaxSize:I

    const/16 v1, 0x800

    sput v1, sLogcatLineNum:I

    const-wide/32 v1, 0x493e0

    sput-wide v1, sSwitchBackgroundTimeount:J

    sget-boolean v1, DEBUG_MODE:Z

    if-eqz v1, :cond_0

    const-wide/32 v1, 0xea60

    goto :goto_0

    :cond_0
    const-wide/32 v1, 0xa4cb80

    :goto_0
    sput-wide v1, sReportInterval:J

    sput-boolean v0, sKillLeakProcess:Z

    return-void

    :array_0
    .array-data 4
        -0x3e8
        -0x384
        -0x320
        -0x2bc
        0x0
        0x64
        0xc8
        0xfa
        0x12c
        0x190
        0x1f4
        0x258
        0x2bc
        0x320
        0x384
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, extraData:Ljava/util/HashMap;

    const/16 p1, 0xc

    iput p1, p0, mCommandFlag:I

    const/4 p1, 0x0

    iput-object p1, p0, mDeviceTotalMemory:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, mFirstReport:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, mCriticalReport:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, mRecentFrontUids:Ljava/util/HashMap;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, mLruApps:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    new-instance p1, Lcom/android/server/am/l;

    invoke-direct {p1, p0}, Lcom/android/server/am/l;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;)V

    iput-object p1, p0, mTestReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean p1, sInUsing:Z

    const-string v0, "persist.sys.opmt.enable"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, sInUsing:Z

    sget-boolean p1, sMdm:Z

    const-string v0, "persist.sys.opmt.mdm"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, sMdm:Z

    sget-boolean p1, sDropbox:Z

    const-string v0, "persist.sys.opmt.dropbox"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, sDropbox:Z

    sget-boolean p1, sReport:Z

    const-string v0, "persist.sys.opmt.report"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, sReport:Z

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$tsu;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Landroid/os/Looper;)V

    iput-object p1, p0, mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object p1, p0, extraData:Ljava/util/HashMap;

    const-string v0, "appid"

    const-string v1, "NYNCG4I0TI"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, sInUsing:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 0

    invoke-direct {p0, p1}, writeLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, updateDropboxEnable(Z)V

    return-void
.end method

.method static synthetic access$1100()Z
    .locals 1

    sget-boolean v0, sDropbox:Z

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/OnePlusMemoryTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, updateTimeout(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OnePlusMemoryTracker;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, updateInterval(J)V

    return-void
.end method

.method static synthetic access$1400()J
    .locals 2

    sget-wide v0, sReportInterval:J

    return-wide v0
.end method

.method static synthetic access$1402(J)J
    .locals 0

    sput-wide p0, sReportInterval:J

    return-wide p0
.end method

.method static synthetic access$1500(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, updateLogcatLineNumber(I)V

    return-void
.end method

.method static synthetic access$1600()I
    .locals 1

    sget v0, sLogcatLineNum:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, updateDropboxSize(I)V

    return-void
.end method

.method static synthetic access$1800()I
    .locals 1

    sget v0, sDropboxMaxSize:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/OnePlusMemoryTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, updateCommandFlag(I)V

    return-void
.end method

.method static synthetic access$200()J
    .locals 2

    sget-wide v0, sSwitchBackgroundTimeount:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/server/am/OnePlusMemoryTracker;)I
    .locals 0

    iget p0, p0, mCommandFlag:I

    return p0
.end method

.method static synthetic access$2002(Lcom/android/server/am/OnePlusMemoryTracker;I)I
    .locals 0

    iput p1, p0, mCommandFlag:I

    return p1
.end method

.method static synthetic access$202(J)J
    .locals 0

    sput-wide p0, sSwitchBackgroundTimeount:J

    return-wide p0
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, sReport:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0

    sput-boolean p0, sReport:Z

    return p0
.end method

.method static synthetic access$2200()Z
    .locals 1

    sget-boolean v0, sKillLeakProcess:Z

    return v0
.end method

.method static synthetic access$2202(Z)Z
    .locals 0

    sput-boolean p0, sKillLeakProcess:Z

    return p0
.end method

.method static synthetic access$2300(Lcom/android/server/am/OnePlusMemoryTracker;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/server/am/OnePlusMemoryTracker;Ljava/util/HashMap;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1, p2}, updateLeakShreshold(Ljava/util/HashMap;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/am/OnePlusMemoryTracker;I)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0, p1}, getCommand(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, getLruApps()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/am/OnePlusMemoryTracker;Z)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, getMemoryInfo(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2802(Z)Z
    .locals 0

    sput-boolean p0, sDebugCritical:Z

    return p0
.end method

.method static synthetic access$2900(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 0

    invoke-direct {p0, p1}, doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, registerOnlineConfig()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, grabOnlineConfig()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    invoke-direct {p0}, initMemoryInfo()V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, sDebug:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0

    sput-boolean p0, sDebug:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, updateEnable(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/am/OnePlusMemoryTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, updateMDMEnable(Z)V

    return-void
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, sMdm:Z

    return v0
.end method

.method private canBeKilled(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7

    iget-object p0, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0}, Lcom/android/server/am/ActivityManagerService;->getTopAppLocked()Lcom/android/server/am/ProcessRecord;

    move-result-object p0

    if-eqz p0, :cond_6

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ServiceRecord;

    move v3, v1

    :goto_1
    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, v2, Lcom/android/server/am/ServiceRecord;->bindings:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/IntentBindRecord;

    :cond_1
    iget-object v5, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    iget-object v5, v4, Lcom/android/server/am/IntentBindRecord;->apps:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    move v0, v1

    :goto_2
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_6

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ContentProviderConnection;

    iget-object v2, v2, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    return v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method private doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0}, getLruApps()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Lock AM took: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/j;

    invoke-direct {v1, p0, p1}, Lcom/android/server/am/j;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getAllProcessMeminfo(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/OnePlusMemoryTracker$you;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusMemoryTracker$you;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusMemoryTracker$you;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$you;->cA:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-static {v2}, sortMemItems(Ljava/util/List;)V

    iget-object v1, v1, Lcom/android/server/am/OnePlusMemoryTracker$you;->cA:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, getAllProcessMeminfo(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommand(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "/system/bin/timeout"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-k"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "15s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "10s"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "/system/bin/logcat"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-v"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "threadtime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v1, p0, mCommandFlag:I

    and-int/lit8 v1, v1, 0x4

    const-string v2, "-b"

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "events"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget v1, p0, mCommandFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "kernel"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v1, p0, mCommandFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "system"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget p0, p0, mCommandFlag:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "main"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p0, "-t"

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getDeviceTotalMemory()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, mDeviceTotalMemory:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    invoke-static {v0, v1}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mDeviceTotalMemory:Ljava/lang/String;

    :cond_0
    iget-object p0, p0, mDeviceTotalMemory:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OnePlusMemoryTracker;
    .locals 1

    sget-object v0, mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {v0, p0}, <init>(Landroid/content/Context;)V

    sput-object v0, mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    :cond_0
    sget-object p0, mInstance:Lcom/android/server/am/OnePlusMemoryTracker;

    return-object p0
.end method

.method private getIonMeminfo()Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "========================================================\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ION Debug info"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/oem_log/dropbox/ion_debug"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLruApps()V
    .locals 13

    iget-object v0, p0, mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_1

    monitor-enter v0

    const/4 v1, 0x0

    :goto_0
    :try_start_0
    iget-object v2, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v3, p0, mLruApps:Ljava/util/ArrayList;

    new-instance v12, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getSetAdjWithServices()I

    move-result v8

    iget v9, v2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v10

    iget-object v11, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v4, v12

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusMemoryTracker$zta;-><init>(Ljava/lang/String;IIIIZLandroid/app/IApplicationThread;)V

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

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
    const-string p0, "OPMT"

    const-string v0, "error...initialization not ok."

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getMemoryInfo(Z)Ljava/lang/String;
    .locals 34

    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x2000

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    sget-object v3, DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    array-length v4, v3

    new-array v4, v4, [J

    array-length v5, v3

    new-array v5, v5, [J

    array-length v3, v3

    new-array v3, v3, [Ljava/util/ArrayList;

    iget-object v6, v0, mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    :goto_0
    if-ltz v6, :cond_8

    iget-object v15, v0, mLruApps:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    iget-object v7, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mThread:Landroid/app/IApplicationThread;

    iget v8, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    iget v14, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mCurAdj:I

    move-object/from16 v27, v1

    iget-boolean v1, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->Yz:Z

    if-eqz v7, :cond_7

    if-nez v9, :cond_0

    new-instance v9, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v9}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_0
    invoke-static {v8, v9}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v7

    move/from16 v28, v6

    int-to-long v6, v7

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalRss()I

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v0

    move-object/from16 v30, v3

    move-object/from16 v29, v4

    int-to-long v3, v0

    if-eqz v9, :cond_6

    add-long/2addr v10, v6

    add-long/2addr v12, v3

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker$you;

    move-object/from16 v31, v9

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v32, v10

    iget-object v10, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (pid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    const-string v10, " / activities)"

    goto :goto_1

    :cond_1
    const-string v10, ")"

    :goto_1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v9, v15, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v20, v9

    move-wide/from16 v21, v6

    move-wide/from16 v23, v3

    move/from16 v25, v8

    move/from16 v26, v1

    invoke-direct/range {v18 .. v26}, Lcom/android/server/am/OnePlusMemoryTracker$you;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    invoke-virtual {v2, v8, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v1, v29

    const/4 v8, 0x0

    :goto_2
    array-length v9, v1

    if-ge v8, v9, :cond_5

    array-length v9, v1

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_3

    sget-object v9, DUMP_MEM_OOM_ADJ:[I

    aget v10, v9, v8

    if-lt v14, v10, :cond_2

    add-int/lit8 v10, v8, 0x1

    aget v9, v9, v10

    if-ge v14, v9, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    aget-wide v9, v1, v8

    add-long/2addr v9, v6

    aput-wide v9, v1, v8

    aget-wide v6, v5, v8

    add-long/2addr v6, v3

    aput-wide v6, v5, v8

    aget-object v3, v30, v8

    if-nez v3, :cond_4

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v30, v8

    :cond_4
    aget-object v3, v30, v8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    move-object/from16 v9, v31

    move-wide/from16 v10, v32

    goto :goto_4

    :cond_6
    move-object/from16 v31, v9

    move-object/from16 v1, v29

    goto :goto_4

    :cond_7
    move-object/from16 v30, v3

    move-object v1, v4

    move/from16 v28, v6

    :goto_4
    add-int/lit8 v6, v28, -0x1

    move-object/from16 v0, p0

    move-object v4, v1

    move-object/from16 v1, v27

    move-object/from16 v3, v30

    goto/16 :goto_0

    :cond_8
    move-object/from16 v27, v1

    move-object/from16 v30, v3

    move-object v1, v4

    iget-object v3, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v3, :cond_9

    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v3, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v3, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    :cond_9
    iget-object v3, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    monitor-enter v3

    :try_start_0
    iget-object v4, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v4

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v4, :cond_d

    iget-object v7, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7, v6}, Lcom/android/internal/os/ProcessCpuTracker;->getStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v7

    iget-wide v14, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->vsize:J

    const-wide/16 v16, 0x0

    cmp-long v8, v14, v16

    if-lez v8, :cond_c

    iget v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v8

    if-gez v8, :cond_c

    if-nez v9, :cond_a

    new-instance v9, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v9}, Landroid/os/Debug$MemoryInfo;-><init>()V

    :cond_a
    iget v8, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v8, v9}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v8

    int-to-long v14, v8

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getTotalSwappedOutPss()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    int-to-long v2, v8

    add-long/2addr v10, v14

    add-long/2addr v12, v2

    :try_start_1
    new-instance v8, Lcom/android/server/am/OnePlusMemoryTracker$you;

    move/from16 v31, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v32, v10

    iget-object v10, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " (pid "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    iget-object v4, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v9}, Landroid/os/Debug$MemoryInfo;->getSummaryTotalSwapPss()I

    move-result v10

    int-to-long v10, v10

    iget v7, v7, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    const/16 v26, 0x0

    move-object/from16 v18, v8

    move-object/from16 v20, v4

    move-wide/from16 v21, v14

    move-wide/from16 v23, v10

    move/from16 v25, v7

    invoke-direct/range {v18 .. v26}, Lcom/android/server/am/OnePlusMemoryTracker$you;-><init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V

    const/4 v4, 0x0

    aget-wide v10, v1, v4

    add-long/2addr v10, v14

    aput-wide v10, v1, v4

    aget-wide v10, v5, v4

    add-long/2addr v10, v2

    aput-wide v10, v5, v4

    aget-object v2, v30, v4

    if-nez v2, :cond_b

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v30, v4

    :cond_b
    aget-object v2, v30, v4

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-wide/from16 v10, v32

    goto :goto_6

    :cond_c
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move/from16 v31, v4

    const/4 v4, 0x0

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v28

    move-object/from16 v3, v29

    move/from16 v4, v31

    goto/16 :goto_5

    :cond_d
    move-object/from16 v29, v3

    const/4 v4, 0x0

    monitor-exit v29
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    array-length v3, v1

    if-ge v4, v3, :cond_f

    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-eqz v3, :cond_e

    sget-object v3, DUMP_MEM_OOM_LABEL:[Ljava/lang/String;

    aget-object v20, v3, v4

    new-instance v3, Lcom/android/server/am/OnePlusMemoryTracker$you;

    aget-wide v21, v1, v4

    aget-wide v23, v5, v4

    sget-object v6, DUMP_MEM_OOM_ADJ:[I

    aget v25, v6, v4

    move-object/from16 v18, v3

    move-object/from16 v19, v20

    invoke-direct/range {v18 .. v25}, Lcom/android/server/am/OnePlusMemoryTracker$you;-><init>(Ljava/lang/String;Ljava/lang/String;JJI)V

    aget-object v6, v30, v4

    iput-object v6, v3, Lcom/android/server/am/OnePlusMemoryTracker$you;->cA:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_f
    const-string v1, "Total PSS by OOM adjustment:\n"

    move-object/from16 v3, v27

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_10

    const-string v1, "OPMT"

    const-string v4, "Total PSS by OOM adjustment:\n"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    invoke-direct {v0, v2}, getAllProcessMeminfo(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x200

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Total RAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Free RAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    add-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v8

    add-long/2addr v4, v8

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v7}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cached pss + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cached kernel + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " free)\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Used RAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v4, 0x0

    sub-long v4, v10, v4

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v6

    add-long/2addr v6, v4

    invoke-static {v6, v7}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " used pss + "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " kernel)\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v4

    sub-long/2addr v10, v12

    sub-long/2addr v4, v10

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getFreeSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getCachedSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getKernelUsedSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    const-string v6, "Lost RAM: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ZRAM: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getZramTotalSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " physical used for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapFreeSizeKb()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " in swap ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getSwapTotalSizeKb()J

    move-result-wide v4

    invoke-static {v4, v5}, stringifyKBSize(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " total swap)"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OPMT"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, getOtherMemoryUsage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object/from16 v29, v3

    :goto_8
    :try_start_2
    monitor-exit v29
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_8
.end method

.method private getOtherMemoryUsage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, getProcMeminfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, getIonMeminfo()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getProcMeminfo()Ljava/lang/String;
    .locals 4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "========================================================\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/proc/meminfo"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private grabOnlineConfig()V
    .locals 3

    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OPMT"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, mContext:Landroid/content/Context;

    const-string v2, "MemoryTracker"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$sis;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private initMemoryInfo()V
    .locals 0

    invoke-direct {p0}, getDeviceTotalMemory()Ljava/lang/String;

    return-void
.end method

.method private registerOnlineConfig()V
    .locals 5

    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OPMT"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object v2, p0, mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    iget-object v3, p0, mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

    const-string v4, "MemoryTracker"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private reportAppEvent(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget-boolean v2, sDebug:Z

    const-string v3, "OPMT"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportAppEvent: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v2, sMdm:Z

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p1}, reportToMDM(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    :cond_1
    sget-boolean v2, sDropbox:Z

    const/4 v4, 0x1

    const-string v5, ", pid="

    const-string v6, ", uid="

    const-string v7, "ignore this dropbox event cause too freq! ["

    const/16 v8, 0x2bc

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    if-eqz v2, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v0, mLastReportTime:J

    cmp-long v2, v14, v10

    if-eqz v2, :cond_4

    sub-long v14, v12, v14

    sget-wide v16, sReportInterval:J

    cmp-long v2, v14, v16

    if-gez v2, :cond_4

    if-eqz v1, :cond_2

    iget v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mSetAdj:I

    if-gt v2, v8, :cond_2

    iget-boolean v2, v0, mCriticalReport:Z

    if-nez v2, :cond_2

    iput-boolean v4, v0, mCriticalReport:Z

    goto :goto_0

    :cond_2
    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-wide v14, v0, mLastReportTime:J

    cmp-long v2, v14, v10

    if-eqz v2, :cond_5

    sub-long v14, v12, v14

    sget-wide v16, sReportInterval:J

    cmp-long v2, v14, v16

    if-ltz v2, :cond_5

    iput-boolean v9, v0, mCriticalReport:Z

    :cond_5
    :goto_0
    iput-wide v12, v0, mLastReportTime:J

    invoke-direct/range {p0 .. p1}, doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    :cond_6
    sget-boolean v2, sReport:Z

    if-eqz v2, :cond_b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    iget-wide v14, v0, mLastReportTime:J

    cmp-long v2, v14, v10

    if-eqz v2, :cond_9

    sub-long v14, v12, v14

    sget-wide v16, sReportInterval:J

    cmp-long v2, v14, v16

    if-gez v2, :cond_9

    if-eqz v1, :cond_7

    iget v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mSetAdj:I

    if-gt v2, v8, :cond_7

    iget-boolean v2, v0, mCriticalReport:Z

    if-nez v2, :cond_7

    iput-boolean v4, v0, mCriticalReport:Z

    goto :goto_1

    :cond_7
    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    iget-wide v2, v0, mLastReportTime:J

    cmp-long v4, v2, v10

    if-eqz v4, :cond_a

    sub-long v2, v12, v2

    sget-wide v4, sReportInterval:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_a

    iput-boolean v9, v0, mCriticalReport:Z

    :cond_a
    :goto_1
    iput-wide v12, v0, mLastReportTime:J

    invoke-direct/range {p0 .. p1}, doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    :cond_b
    return-void
.end method

.method private reportToMDM(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 3

    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportToMDM: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p1, p1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mProcessName:Ljava/lang/String;

    const-string v1, "pn"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, getDeviceTotalMemory()Ljava/lang/String;

    move-result-object p1

    const-string v1, "tm"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object p0, p0, extraData:Ljava/util/HashMap;

    const-string v2, "memory"

    invoke-virtual {p1, v1, v2, v0, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method private static sortMemItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusMemoryTracker$you;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/server/am/k;

    invoke-direct {v0}, Lcom/android/server/am/k;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private static stringifyKBSize(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, 0x400

    mul-long/2addr p0, v0

    const/16 v0, 0x400

    invoke-static {p0, p1, v0}, stringifySize(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static stringifySize(JI)Ljava/lang/String;
    .locals 6

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_3

    const/16 v3, 0x400

    const-wide/16 v4, 0x400

    if-eq p2, v3, :cond_2

    const/high16 v3, 0x100000

    if-eq p2, v3, :cond_1

    const/high16 v3, 0x40000000    # 2.0f

    if-ne p2, v3, :cond_0

    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,1dG"

    :goto_0
    invoke-static {v0, p0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid size order"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,5dM"

    goto :goto_0

    :cond_2
    new-array p2, v2, [Ljava/lang/Object;

    div-long/2addr p0, v4

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,9dK"

    goto :goto_0

    :cond_3
    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, p2, v1

    const-string p0, "%,13d"

    goto :goto_0
.end method

.method private updateCommandFlag(I)V
    .locals 0

    iput p1, p0, mCommandFlag:I

    return-void
.end method

.method private updateDropboxEnable(Z)V
    .locals 0

    sput-boolean p1, sDropbox:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.dropbox"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateDropboxSize(I)V
    .locals 0

    sput p1, sDropboxMaxSize:I

    return-void
.end method

.method private updateEnable(Z)V
    .locals 1

    sput-boolean p1, sInUsing:Z

    sget-boolean v0, sInUsing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.enable"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateInterval(J)V
    .locals 0

    sput-wide p1, sReportInterval:J

    return-void
.end method

.method private updateLeakShreshold(Ljava/util/HashMap;Lorg/json/JSONArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Lorg/json/JSONArray;",
            ")V"
        }
    .end annotation

    const-string v0, "OPMT"

    :try_start_0
    const-string v1, "[OnlineConfig] Update leak process list"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "proc"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pss"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", pss shreshold : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method private updateLogcatLineNumber(I)V
    .locals 0

    sput p1, sLogcatLineNum:I

    return-void
.end method

.method private updateMDMEnable(Z)V
    .locals 0

    sput-boolean p1, sMdm:Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "persist.sys.opmt.mdm"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateTimeout(J)V
    .locals 0

    sput-wide p1, sSwitchBackgroundTimeount:J

    return-void
.end method

.method private writeLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "OPMT"

    const-string v3, "start log."

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "persist.sys.opmt.copyion"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v6, 0x0

    if-nez v5, :cond_1

    new-instance v5, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v5, v6}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v5, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    iget-object v5, v0, mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    :goto_0
    iget-object v5, v0, mContext:Landroid/content/Context;

    const-string v7, "dropbox"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/DropBoxManager;

    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x2000

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v10, "ro.build.display.id"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "ro.build.fingerprint"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "ro.build.version.sdk"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ro.product.model"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "persist.sys.timezone"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "========================================================\n"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    const-string v5, "== dumpstate: "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0xa

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Build fingerprint: \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x27

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeviceTotalMemory: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, getDeviceTotalMemory()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[ro.build.version.sdk]: ["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v8, 0x5d

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[ro.product.model]: ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[persist.sys.timezone]: ["

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current event: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/OnePlusMemoryTracker$zta;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    invoke-direct {v0, v5}, getMemoryInfo(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nDump meminfo took: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    const-wide/16 v8, 0x3e8

    div-long/2addr v5, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "s\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump info took: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    div-long/2addr v5, v8

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_4

    iget v0, v1, Lcom/android/server/am/OnePlusMemoryTracker$zta;->mSetAdj:I

    const/16 v1, 0x2bc

    if-le v0, v1, :cond_5

    :cond_4
    sget-boolean v0, sDebugCritical:Z

    if-eqz v0, :cond_6

    :cond_5
    const-string v0, "critical_low_memory_tracker"

    goto :goto_1

    :cond_6
    const-string v0, "memory_tracker"

    :goto_1
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v5, v16

    invoke-virtual {v5, v0, v1}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public checkIfNeedReport(I)V
    .locals 7

    sget-boolean v0, sReport:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    if-ge p1, v1, :cond_1

    return-void

    :cond_1
    if-eqz v0, :cond_5

    iget-boolean p1, p0, mFirstReport:Z

    const/4 v0, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    if-eqz p1, :cond_2

    iput-wide v1, p0, mLastReportTime:J

    iput-boolean v0, p0, mFirstReport:Z

    return-void

    :cond_2
    iget-wide v3, p0, mLastReportTime:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_4

    sub-long v3, v1, v3

    sget-wide v5, sReportInterval:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_4

    sget-boolean p0, DEBUG_MODE:Z

    if-eqz p0, :cond_3

    const-string p0, "OPMT"

    const-string p1, "ignore this dropbox event cause too freq"

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iput-wide v1, p0, mLastReportTime:J

    iput-boolean v0, p0, mCriticalReport:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, doWriteLogToDropbox(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    :cond_5
    return-void
.end method

.method public checkIfNeedReport(Lcom/android/server/am/ProcessRecord;)V
    .locals 9

    sget-boolean v0, sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", processName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hasShownUi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", setAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", setProcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPMT"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->hasShownUi:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v1, 0x64

    if-ge v0, v1, :cond_2

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    return-void

    :cond_2
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, mRecentFrontUids:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mRecentFrontUids:Ljava/util/HashMap;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    sget-boolean p0, sDebug:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "not in recent front uids: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OPMT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    invoke-virtual {v1}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->xc()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/android/server/am/OnePlusMemoryTracker$zta;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OnePlusMemoryTracker$zta;-><init>(Ljava/lang/String;IIIIZLandroid/app/IApplicationThread;)V

    invoke-direct {p0, v0}, reportAppEvent(Lcom/android/server/am/OnePlusMemoryTracker$zta;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    :goto_0
    return-void
.end method

.method public checkLeakProcess(Lcom/android/server/am/ProcessRecord;)V
    .locals 5

    sget-boolean v0, sKillLeakProcess:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, mLeakProcessKillMap:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    invoke-direct {p0, p1}, canBeKilled(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is leak process that uses "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/android/server/am/ProcessRecord;->lastPss:J

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", threshold : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", pid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OPMT"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, mRecentFrontUids:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_0
    iget-object p3, p0, mRecentFrontUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    if-nez p3, :cond_1

    new-instance p3, Lcom/android/server/am/OnePlusMemoryTracker$rtg;

    invoke-direct {p3, p0, p2}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Lcom/android/server/am/OnePlusMemoryTracker$rtg;->yc()V

    :goto_0
    iget-object p0, p0, mRecentFrontUids:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initAms(Lcom/android/server/am/ActivityManagerService;)V
    .locals 3

    iput-object p1, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p0, mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object p1, p0, mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/am/OnePlusMemoryTracker$sis;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/OnePlusMemoryTracker$sis;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/j;)V

    iput-object p1, p0, mConfigUpdater:Lcom/android/server/am/OnePlusMemoryTracker$sis;

    iget-object p1, p0, mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, mHandler:Lcom/android/server/am/OnePlusMemoryTracker$tsu;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.opmt.action.test"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, mContext:Landroid/content/Context;

    iget-object p0, p0, mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
