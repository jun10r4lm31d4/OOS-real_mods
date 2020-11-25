.class public final Lcom/android/server/you/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/you/zta$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/you/tsu$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final MSG_SHOW:I = 0x0

.field public static final RT:Ljava/lang/String; = "verification_code_str"

.field private static final TAG:Ljava/lang/String; = "OpVCAction"

.field public static final TT:Ljava/lang/String; = "sent_time_mills"

.field public static final UT:Ljava/lang/String; = "receive_time_mills"

.field public static final VT:Ljava/lang/String; = "cur_code_time_stamp"

.field public static final WT:Ljava/lang/String; = "readIntent"

.field private static final XT:J = 0x2bf20L

.field private static final YT:J = 0xaL

.field private static final ZT:I = 0x1

.field private static final _T:I = 0x2

.field private static final aU:I = 0x3

.field private static final bU:I = 0x4

.field private static final cU:I = 0x5

.field private static final dU:I = 0x6


# instance fields
.field private IT:Lcom/android/server/you/zta;

.field private KT:Ljava/lang/String;

.field private LT:Landroid/app/PendingIntent;

.field private MT:Z

.field private NT:Z

.field private OT:Z

.field private PT:Lcom/android/server/you/wtn$you;

.field private final QT:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInputShown:Z

.field private mLatestCodeTimeStamp:Ljava/lang/Long;

.field private mWindow:Lcom/android/server/you/wtn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/you/zta;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, MT:Z

    iput-boolean v0, p0, mInputShown:Z

    iput-boolean v0, p0, NT:Z

    iput-boolean v0, p0, OT:Z

    new-instance v0, Lcom/android/server/you/you;

    invoke-direct {v0, p0}, Lcom/android/server/you/you;-><init>(Lcom/android/server/you/tsu;)V

    iput-object v0, p0, PT:Lcom/android/server/you/wtn$you;

    new-instance v0, Lcom/android/server/you/sis;

    invoke-direct {v0, p0}, Lcom/android/server/you/sis;-><init>(Lcom/android/server/you/tsu;)V

    iput-object v0, p0, QT:Landroid/content/BroadcastReceiver;

    const-string v0, "OpVCAction Construct."

    invoke-static {v0}, logd(Ljava/lang/String;)V

    iput-object p1, p0, mContext:Landroid/content/Context;

    iput-object p2, p0, IT:Lcom/android/server/you/zta;

    iget-object p1, p0, IT:Lcom/android/server/you/zta;

    invoke-interface {p1, p0}, Lcom/android/server/you/zta;->zta(Lcom/android/server/you/zta$zta;)V

    new-instance p1, Lcom/android/server/you/tsu$zta;

    invoke-direct {p1, p0}, Lcom/android/server/you/tsu$zta;-><init>(Lcom/android/server/you/tsu;)V

    iput-object p1, p0, mHandler:Landroid/os/Handler;

    invoke-direct {p0}, pq()V

    return-void
.end method

.method public static B(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string v1, "COND_IME_VISIBILITY | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_1

    const-string v1, "COND_IME_LAYOUT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_2

    const-string v1, "COND_INPUT_TYPE_NUM | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_3

    const-string p0, "COND_INPUT_CONTENT_EMPTY | "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic bio(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn$you;
    .locals 0

    iget-object p0, p0, PT:Lcom/android/server/you/wtn$you;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/you/tsu;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isAvailable()Z
    .locals 2

    iget-boolean v0, p0, MT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, IT:Lcom/android/server/you/zta;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/you/zta;->sis()Z

    move-result v0

    iput-boolean v0, p0, mInputShown:Z

    iget-object v0, p0, IT:Lcom/android/server/you/zta;

    invoke-interface {v0}, Lcom/android/server/you/zta;->zgw()Z

    move-result v0

    iput-boolean v0, p0, NT:Z

    iget-object v0, p0, IT:Lcom/android/server/you/zta;

    invoke-interface {v0}, Lcom/android/server/you/zta;->oif()Z

    move-result v0

    iput-boolean v0, p0, OT:Z

    iget-boolean v0, p0, mInputShown:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, NT:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, OT:Z

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method static synthetic kth(Lcom/android/server/you/tsu;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, oq()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static logd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpVCAction"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OpVCAction"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private nc(I)V
    .locals 4

    iget-boolean v0, p0, MT:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Input Condition Changed : What = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, B(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, logd(Ljava/lang/String;)V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const-wide/16 v2, 0xa

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1f4

    :cond_1
    iget-object p0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private nq()V
    .locals 5

    iget-object v0, p0, LT:Landroid/app/PendingIntent;

    const-string v1, "OpVCAction"

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iput-object v2, p0, LT:Landroid/app/PendingIntent;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail to feedback MMS, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    iput-object v2, p0, LT:Landroid/app/PendingIntent;

    throw v0

    :cond_0
    const-string p0, "Fail to feedback MMS, Null Feedback Intent"

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private oq()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, KT:Ljava/lang/String;

    return-object p0
.end method

.method private pq()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    iget-object p0, p0, QT:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/you/tsu;)Z
    .locals 0

    invoke-direct {p0}, isAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/android/server/you/tsu;)Lcom/android/server/you/zta;
    .locals 0

    iget-object p0, p0, IT:Lcom/android/server/you/zta;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/you/tsu;)Lcom/android/server/you/wtn;
    .locals 0

    iget-object p0, p0, mWindow:Lcom/android/server/you/wtn;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/you/tsu;)V
    .locals 0

    invoke-direct {p0}, nq()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/you/tsu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, KT:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/you/tsu;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, zc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private zc(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, LT:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Lcom/android/server/you/wtn;)Lcom/android/server/you/wtn;
    .locals 0

    iput-object p1, p0, mWindow:Lcom/android/server/you/wtn;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, KT:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/you/tsu;Z)Z
    .locals 0

    iput-boolean p1, p0, MT:Z

    return p1
.end method


# virtual methods
.method public you(I)V
    .locals 0

    invoke-direct {p0, p1}, nc(I)V

    return-void
.end method

.method public zta(Landroid/os/Bundle;)V
    .locals 4

    const-string v0, "OpVCAction activateVCWindowCycle()"

    invoke-static {v0}, logd(Ljava/lang/String;)V

    iget-object v0, p0, IT:Lcom/android/server/you/zta;

    if-nez v0, :cond_0

    const-string p0, "mVActionsProvider == null"

    invoke-static {p0}, logi(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, mWindow:Lcom/android/server/you/wtn;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/you/wtn;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/you/wtn;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mWindow:Lcom/android/server/you/wtn;

    :cond_1
    const-string v0, "verification_code_str"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, zc(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "Illegal Code."

    invoke-static {p0}, logi(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, KT:Ljava/lang/String;

    const-string v0, "cur_code_time_stamp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, mLatestCodeTimeStamp:Ljava/lang/Long;

    const-string v0, "readIntent"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/app/PendingIntent;

    iput-object p1, p0, LT:Landroid/app/PendingIntent;

    const-wide/32 v0, 0x2bf20

    iget-object p1, p0, mLatestCodeTimeStamp:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p1, v2, v0

    if-gez p1, :cond_3

    const-string p0, "Expired VC, Skip."

    invoke-static {p0}, logi(Ljava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x1

    iput-boolean p1, p0, MT:Z

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
