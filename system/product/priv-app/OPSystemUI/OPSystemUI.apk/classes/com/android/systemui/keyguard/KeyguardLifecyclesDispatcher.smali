.class public Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;
.super Ljava/lang/Object;
.source "KeyguardLifecyclesDispatcher.java"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher$1;-><init>(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    iput-object p1, p0, mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iput-object p2, p0, mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/ScreenLifecycle;
    .locals 0

    iget-object p0, p0, mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)Lcom/android/systemui/keyguard/WakefulnessLifecycle;
    .locals 0

    iget-object p0, p0, mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    return-object p0
.end method


# virtual methods
.method dispatch(I)V
    .locals 0

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method