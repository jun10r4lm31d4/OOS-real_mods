.class public Lcom/android/server/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/IOpSmartDoze;
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/k$you;,
        Lcom/android/server/k$zta;
    }
.end annotation


# static fields
.field private static final Hh:J = 0xea60L

.field private static final Id:Ljava/lang/String; = "\\|"

.field private static final Ih:J = 0xdbba0L

.field private static final Jh:J = 0x1b7740L

.field private static final Kh:J = 0x493e0L

.field private static final Lh:Ljava/lang/String; = "com.oneplus.enter.smartdoze"

.field private static final MSG_INIT:I = 0xc8

.field private static final Mh:Ljava/lang/String; = "com.oneplus.exit.smartdoze"

.field public static final Nh:Ljava/lang/String; = "intent.update.wakelock.smartdoze"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OpSmartDoze"

.field public static final Oh:Ljava/lang/String; = "intent.update.network.smartdoze"

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_QUICK_DOZE_DELAY:I = 0x7

.field public static final TAG:Ljava/lang/String; = "OpSmartDoze"

.field private static mFirstDeviceMode:Z = true


# instance fields
.field private Ah:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Bh:Z

.field private Ch:Z

.field private Dh:Z

.field private Eh:Z

.field private Fh:J

.field private Gh:Z

.field private jh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private kh:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

.field private lh:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBroadcastReceiver:Lcom/android/server/k$zta;

.field private mCharging:Z

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/k$you;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdleMode:Z

.field private mHandler:Landroid/os/Handler;

.field private mInactiveTimeout:J

.field mIntent:Landroid/content/Intent;

.field private mLock:Ljava/lang/Object;

.field private mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

.field mPending:Landroid/app/PendingIntent;

.field private mPmsInner:Lcom/android/server/power/PowerManagerService$PmsInner;

.field private mPowerSaveModeEnabled:Z

.field private mScreenOn:Z

.field private mh:Z

.field private nh:J

.field private oh:J

.field private opSmartPowerControl:Lcom/android/server/m;

.field private ph:J

.field private qh:J

.field private rh:J

.field private sh:Z

.field private th:Z

.field private uh:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private vh:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private wh:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private xh:Z

.field private yh:I

.field private zh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, jh:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, kh:Ljava/util/HashMap;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, lh:Landroid/util/ArraySet;

    const/4 v0, 0x0

    iput-boolean v0, p0, mh:Z

    iput-boolean v0, p0, sh:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, th:Z

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, uh:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, vh:Landroid/util/ArraySet;

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, wh:Landroid/util/ArraySet;

    iput-boolean v0, p0, xh:Z

    iput-boolean v0, p0, zh:Z

    iput-boolean v0, p0, Bh:Z

    iput-boolean v0, p0, mCharging:Z

    iput-boolean v0, p0, Ch:Z

    iput-boolean v0, p0, Dh:Z

    iput-boolean v0, p0, mPowerSaveModeEnabled:Z

    iput-boolean v0, p0, Eh:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    const-wide/32 v2, 0xea60

    iput-wide v2, p0, mInactiveTimeout:J

    iput-wide v2, p0, Fh:J

    iput-boolean v1, p0, Gh:Z

    iput-wide v2, p0, ph:J

    const-wide/32 v0, 0x1b7740

    iput-wide v0, p0, qh:J

    const-wide/32 v0, 0x493e0

    iput-wide v0, p0, rh:J

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    iget-object v0, p0, wh:Landroid/util/ArraySet;

    const-string v1, "com.android.permissioncontroller"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, wh:Landroid/util/ArraySet;

    const-string v1, "net.oneplus.launcher"

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, wh:Landroid/util/ArraySet;

    const-string v0, "com.google.android.permissioncontroller"

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic bio(Lcom/android/server/k;)J
    .locals 2

    iget-wide v0, p0, ph:J

    return-wide v0
.end method

.method static synthetic bio(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Bh:Z

    return p1
.end method

.method static synthetic bvj(Lcom/android/server/k;)J
    .locals 2

    iget-wide v0, p0, qh:J

    return-wide v0
.end method

.method static synthetic cjf(Lcom/android/server/k;)J
    .locals 2

    iget-wide v0, p0, Fh:J

    return-wide v0
.end method

.method static synthetic cno(Lcom/android/server/k;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, jh:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, mPowerSaveModeEnabled:Z

    return p1
.end method

.method static synthetic dma(Lcom/android/server/k;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, wh:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic ear(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, mPowerSaveModeEnabled:Z

    return p0
.end method

.method static synthetic fto(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, Eh:Z

    return p0
.end method

.method static synthetic gck(Lcom/android/server/k;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Ah:Ljava/util/List;

    return-object p0
.end method

.method static synthetic gwm(Lcom/android/server/k;)Lcom/android/server/net/NetworkPolicyManagerService;
    .locals 0

    iget-object p0, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    return-object p0
.end method

.method static synthetic hmo(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, Bh:Z

    return p0
.end method

.method static synthetic ibl(Lcom/android/server/k;)Lcom/android/server/power/PowerManagerService$PmsInner;
    .locals 0

    iget-object p0, p0, mPmsInner:Lcom/android/server/power/PowerManagerService$PmsInner;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/k;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, uh:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic igw(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Eh:Z

    return p1
.end method

.method static synthetic ire(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, Ch:Z

    return p0
.end method

.method static synthetic kth(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, th:Z

    return p0
.end method

.method static synthetic kth(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Ch:Z

    return p1
.end method

.method static synthetic lqr(Lcom/android/server/k;)I
    .locals 0

    iget p0, p0, yh:I

    return p0
.end method

.method static synthetic obl(Lcom/android/server/k;)J
    .locals 2

    iget-wide v0, p0, nh:J

    return-wide v0
.end method

.method static synthetic oif(Lcom/android/server/k;)J
    .locals 2

    iget-wide v0, p0, rh:J

    return-wide v0
.end method

.method static synthetic oxb(Lcom/android/server/k;)J
    .locals 2

    iget-wide v0, p0, mInactiveTimeout:J

    return-wide v0
.end method

.method static synthetic qbh(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, sh:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/k;J)J
    .locals 0

    iput-wide p1, p0, mInactiveTimeout:J

    return-wide p1
.end method

.method static synthetic rtg(Lcom/android/server/k;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, lh:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic rtg(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, mScreenOn:Z

    return p1
.end method

.method static synthetic sis(Lcom/android/server/k;J)J
    .locals 0

    iput-wide p1, p0, qh:J

    return-wide p1
.end method

.method static synthetic sis(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, zh:Z

    return p0
.end method

.method static synthetic sis(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, zh:Z

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/k;J)J
    .locals 0

    iput-wide p1, p0, Fh:J

    return-wide p1
.end method

.method static synthetic ssp(Lcom/android/server/k;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, kh:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, mCharging:Z

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/k;J)J
    .locals 0

    iput-wide p1, p0, nh:J

    return-wide p1
.end method

.method static synthetic tsu(Lcom/android/server/k;)Landroid/app/AlarmManager;
    .locals 0

    iget-object p0, p0, mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, th:Z

    return p1
.end method

.method static synthetic ugm(Lcom/android/server/k;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic vdb(Lcom/android/server/k;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, vh:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic veq(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, Dh:Z

    return p0
.end method

.method static synthetic wtn(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, mCharging:Z

    return p0
.end method

.method static synthetic wtn(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Dh:Z

    return p1
.end method

.method static synthetic you(Lcom/android/server/k;J)J
    .locals 0

    iput-wide p1, p0, rh:J

    return-wide p1
.end method

.method static synthetic you(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, xh:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, Gh:Z

    return p1
.end method

.method static synthetic ywr(Lcom/android/server/k;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zgw(Lcom/android/server/k;)Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;
    .locals 0

    iget-object p0, p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/k;J)J
    .locals 0

    iput-wide p1, p0, ph:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/k;)Z
    .locals 0

    iget-boolean p0, p0, Gh:Z

    return p0
.end method

.method static synthetic zta(Lcom/android/server/k;Z)Z
    .locals 0

    iput-boolean p1, p0, xh:Z

    return p1
.end method


# virtual methods
.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    iget-boolean p3, p0, Gh:Z

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eq p2, p5, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "change from "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " to "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " to TOP"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "OpSmartDoze"

    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p3, 0x3e8

    if-ne p2, p3, :cond_1

    return-void

    :cond_1
    iget-object p3, p0, Ah:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p0, p1}, obl(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    if-eqz p2, :cond_2

    iget-object p3, p0, uh:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    iget-object p3, p0, wh:Landroid/util/ArraySet;

    invoke-virtual {p3, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, lh:Landroid/util/ArraySet;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, lh:Landroid/util/ArraySet;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    return-void
.end method

.method public getAfterInactiveTimeout()J
    .locals 2

    iget-wide v0, p0, Fh:J

    return-wide v0
.end method

.method public getInactiveTimeout()J
    .locals 2

    iget-wide v0, p0, mInactiveTimeout:J

    return-wide v0
.end method

.method public getNotificationDirectRepliedUid(Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Gh:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object v0, p1, v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_1

    iget-object v1, p0, uh:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, obl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ah:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, wh:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, lh:Landroid/util/ArraySet;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, lh:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "add notification direct reply uid "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to SmartDoze whitelist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSmartDoze"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method grabOnlineConfig()V
    .locals 3

    const-string v0, "OpSmartDoze"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, mConfigUpdater:Lcom/android/server/k$you;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/k$you;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public igw(J)V
    .locals 6

    iget-boolean v0, p0, Gh:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, sh:Z

    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-wide v3, p0, nh:J

    add-long/2addr v3, p1

    iget-object v5, p0, mPending:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "will enter in STATE_IDLE_PENDING after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, nh:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpSmartDoze"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, jh:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, kh:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, lh:Landroid/util/ArraySet;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, lh:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v1, p0, uh:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, jh:Ljava/util/HashMap;

    iget-object v2, p0, uh:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, kh:Ljava/util/HashMap;

    iget-object v2, p0, uh:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clear Smart Doze WhiteList and Stay always whitelist:mWakeLockWhiteList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, jh:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",mNetWorkWhiteList="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, kh:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSmartDoze"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public initInstance(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    iput-object p1, p0, mNetworkPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    return-void
.end method

.method public initInstance(Lcom/android/server/power/PowerManagerService$PmsInner;)V
    .locals 0

    iput-object p1, p0, mPmsInner:Lcom/android/server/power/PowerManagerService$PmsInner;

    return-void
.end method

.method public isSmartDozeWhitelisted(I)Z
    .locals 1

    iget-object p0, p0, jh:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSmartDozeWakeLockWhitelisted UID:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSmartDoze"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public ja()V
    .locals 3

    iget-boolean v0, p0, mScreenOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, zh:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, xh:Z

    iget-object v0, p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->updateSmartDozeFlagLocked(Z)V

    iget-object v0, p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->cancelAlarmLocked()V

    iget-object v0, p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    iget-wide v1, p0, mInactiveTimeout:J

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->scheduleAlarm(JZ)V

    :goto_0
    return-void
.end method

.method public ka()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.update.network.smartdoze"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, rh:J

    add-long/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to clear SmartDoze Network Whitelist in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, rh:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSmartDoze"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method obl(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x60

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, opSmartPowerControl:Lcom/android/server/m;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_smart_power_control:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v1}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/m;

    iput-object v1, p0, opSmartPowerControl:Lcom/android/server/m;

    :cond_0
    iget-object p0, p0, opSmartPowerControl:Lcom/android/server/m;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/m;->isSmartOptApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public prepareDeviceIdleController(Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;)V
    .locals 4

    iput-object p1, p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ah:Ljava/util/List;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, mAlarmManager:Landroid/app/AlarmManager;

    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, nh:J

    new-instance p1, Lcom/android/server/k$zta;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p1, p0, v0}, Lcom/android/server/k$zta;-><init>(Lcom/android/server/k;Landroid/content/Context;)V

    iput-object p1, p0, mBroadcastReceiver:Lcom/android/server/k$zta;

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.enter.smartdoze"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, mIntent:Landroid/content/Intent;

    iget-object p1, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p1, v2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    iput-object p1, p0, mPending:Landroid/app/PendingIntent;

    iget-object p1, p0, lf:Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;

    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->isCharging()Z

    move-result p1

    iput-boolean p1, p0, mCharging:Z

    iget-boolean p1, p0, mCharging:Z

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, igw(J)V

    :cond_0
    new-instance p1, Lcom/android/server/k$you;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/k$you;-><init>(Lcom/android/server/k;Lcom/android/server/j;)V

    iput-object p1, p0, mConfigUpdater:Lcom/android/server/k$you;

    invoke-virtual {p0}, registerOnlineConfig()V

    invoke-virtual {p0}, grabOnlineConfig()V

    iput v1, p0, yh:I

    return-void
.end method

.method registerOnlineConfig()V
    .locals 5

    const-string v0, "OpSmartDoze"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, mContext:Landroid/content/Context;

    iget-object v3, p0, mHandler:Landroid/os/Handler;

    iget-object v4, p0, mConfigUpdater:Lcom/android/server/k$you;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v1, p0, mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public setAlarmCauseExitDoze()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, sh:Z

    return-void
.end method

.method public setAlarmToUpdateWakeLock()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.update.wakelock.smartdoze"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, qh:J

    add-long/2addr v2, v4

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set a alarm to clear SmartDoze WakeLock Whitelist in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, qh:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpSmartDoze"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setDeviceIdleState(I)V
    .locals 3

    iget-boolean v0, p0, Gh:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, yh:I

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    move p1, v2

    :goto_0
    iput-boolean p1, p0, mDeviceIdleMode:Z

    iget-boolean p1, p0, mDeviceIdleMode:Z

    if-eqz p1, :cond_2

    sget-boolean p1, mFirstDeviceMode:Z

    if-eqz p1, :cond_3

    sput-boolean v2, mFirstDeviceMode:Z

    invoke-virtual {p0}, setAlarmToUpdateWakeLock()V

    invoke-virtual {p0}, ka()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mDeviceIdleState:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, yh:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFirstDeviceMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, mFirstDeviceMode:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mDeviceIdleMode:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, mDeviceIdleMode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSmartDoze"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-boolean p0, mFirstDeviceMode:Z

    if-nez p0, :cond_3

    sput-boolean v1, mFirstDeviceMode:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public shellCommand(Lcom/android/server/DeviceIdleController$Shell;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4

    const-string v0, "smartdoze"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/server/DeviceIdleController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "whitelist"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current SmartDoze WakeLock WhiteList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, jh:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Current SmartDoze NetWork WhiteList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, kh:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Always SmartDoze WhiteList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, vh:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Always SmartDoze WhiteList Uid: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, uh:Landroid/util/ArraySet;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mEnabledShortScreenPeriodOnline: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, th:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mShortScreenPeriod: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, ph:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAllowWhitelistAccessWakeLockPeriod: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, qh:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mAllowWhitelistAccessNetWorkPeriod: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, rh:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIdleTimeMills: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, nh:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIgnoreList: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, wh:Landroid/util/ArraySet;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateRulesForSmartDozeWhitelistedAppIds(Landroid/util/SparseIntArray;)V
    .locals 2

    iget-object v0, p0, kh:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, kh:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
