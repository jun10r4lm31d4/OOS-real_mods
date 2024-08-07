.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Lcom/oneplus/aod/OpDozeScrimController;
.source "DozeScrimController.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mFullyPulsing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private mRequestPulsing:Z

.field private final mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 0

    invoke-direct {p0, p2}, <init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/aod/OpDozeScrimController;->initWakeLock(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DozeParameters;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/aod/OpDozeScrimController;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, mPulseOutExtended:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, mPulseOut:Ljava/lang/Runnable;

    iput-object p1, p0, mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const-class p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 0

    iget-boolean p0, p0, mDozing:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, mPulseOutExtended:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, pulseFinished()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpDozeScrimController;->releaseWaleLock()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 0

    iget p0, p0, mPulseReason:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 0

    iget-boolean p0, p0, mRequestPulsing:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, pulseStarted()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/OpDozeScrimController;->acquireWakeLock()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, mPulseOut:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    iget-object p0, p0, mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)Z
    .locals 0

    iput-boolean p1, p0, mFullyPulsing:Z

    return p1
.end method

.method private cancelPulsing()V
    .locals 2

    iget-object v0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mFullyPulsing:Z

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, pulseFinished()V

    :cond_1
    return-void
.end method

.method private pulseFinished()V
    .locals 1

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mRequestPulsing:Z

    iget-object v0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    iput-object v0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OpDozeScrimController;->releaseWaleLock()V

    return-void
.end method

.method private pulseStarted()V
    .locals 1

    iget v0, p0, mPulseReason:I

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    iget-object v0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    iget-object p0, p0, mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_0
    return-void
.end method


# virtual methods
.method public extendPulse()V
    .locals 1

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object p0, p0, mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public extendPulse(I)V
    .locals 2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extendPulse: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DozeScrimController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, mPulseReason:I

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mPulseOut:Ljava/lang/Runnable;

    iget-object p0, p0, mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result p0

    int-to-long p0, p0

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public getScrimCallback()Lcom/android/systemui/statusbar/phone/ScrimController$Callback;
    .locals 0

    iget-object p0, p0, mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    return-object p0
.end method

.method public isPulsing()Z
    .locals 0

    iget-object p0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDozingChanged(Z)V
    .locals 0

    invoke-virtual {p0, p1}, setDozing(Z)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 2

    if-eqz p1, :cond_4

    iget-boolean v0, p0, mDozing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, mRequestPulsing:Z

    iput-object p1, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput p2, p0, mPulseReason:I

    iget-object p0, p0, mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    return-void

    :cond_1
    :goto_0
    sget-boolean p2, DEBUG:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Pulse supressed. Dozing: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " had callback? "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "DozeScrimController"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "callback must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public pulseOutNow()V
    .locals 1

    iget-object v0, p0, mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, mFullyPulsing:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, mPulseOut:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setDozing(Z)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, mDozing:Z

    iget-boolean p1, p0, mDozing:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, cancelPulsing()V

    :cond_1
    return-void
.end method
