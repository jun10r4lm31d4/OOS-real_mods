.class public Lcom/oneplus/android/server/you/you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/you/you$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OpAudioScreenoffMonitorManager"


# instance fields
.field private final _ka:Ljava/lang/Object;

.field private ala:Z

.field private bla:Lcom/oneplus/android/server/you/you$zta;

.field private dla:Landroid/os/PowerManager$WakeLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioService:Lcom/android/server/audio/AudioService;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, _ka:Ljava/lang/Object;

    iput-object p1, p0, mContext:Landroid/content/Context;

    iput-object p2, p0, mAudioService:Lcom/android/server/audio/AudioService;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, mAudioManager:Landroid/media/AudioManager;

    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/16 p2, 0x20

    const-string v0, "OpAudioScreenoffMonitorManager-ScreenoffWake-prox"

    invoke-virtual {p1, p2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, dla:Landroid/os/PowerManager$WakeLock;

    const/4 p1, 0x0

    iput-boolean p1, p0, ala:Z

    new-instance p1, Lcom/oneplus/android/server/you/you$zta;

    invoke-direct {p1, p0}, Lcom/oneplus/android/server/you/you$zta;-><init>(Lcom/oneplus/android/server/you/you;)V

    iput-object p1, p0, bla:Lcom/oneplus/android/server/you/you$zta;

    iget-object p1, p0, bla:Lcom/oneplus/android/server/you/you$zta;

    const-string p2, "OpAudioScreenoffMonitorManager"

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    iget-object p0, p0, bla:Lcom/oneplus/android/server/you/you$zta;

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$zta;)V

    const-string p0, "OpAudioScreenoffMonitorManager registerFrontActivityListener mAudioFrontActivityListener"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p0, "OpAudioScreenoffMonitorManager new success"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/you/you;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, dla:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/you/you;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, _ka:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/you/you;Z)Z
    .locals 0

    iput-boolean p1, p0, ala:Z

    return p1
.end method


# virtual methods
.method public onAcquireScreenoffWakeLock()V
    .locals 3

    iget-boolean v0, p0, ala:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mAudioManager:Landroid/media/AudioManager;

    const-string v1, "iscamerause"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/String;

    const-string v2, "false"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, _ka:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, dla:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, dla:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string p0, "OpAudioScreenoffMonitorManager"

    const-string v1, "acquire PROXIMITY_SCREEN_OFF_WAKE_LOCK to system active on off screen"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
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

.method public onReleaseScreenoffWakeLock()V
    .locals 2

    iget-object v0, p0, _ka:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, dla:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, dla:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string p0, "OpAudioScreenoffMonitorManager"

    const-string v1, "release PROXIMITY_SCREEN_OFF_WAKE_LOCK to system active on off screen"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
