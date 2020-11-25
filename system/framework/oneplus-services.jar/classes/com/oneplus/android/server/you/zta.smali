.class public Lcom/oneplus/android/server/you/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/audiomonitor/IOpAudioMonitorManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpAudioMonitorManager"


# instance fields
.field private Zka:Lcom/oneplus/android/server/you/you;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public initInstance(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V
    .locals 1

    iput-object p1, p0, mContext:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/android/server/you/you;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p1, v0, p2}, Lcom/oneplus/android/server/you/you;-><init>(Landroid/content/Context;Lcom/android/server/audio/AudioService;)V

    iput-object p1, p0, Zka:Lcom/oneplus/android/server/you/you;

    const-string p0, "OpAudioMonitorManager"

    const-string p1, "IOpAudioMonitorManager initInstance success"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAcquireScreenoffWakeLock()V
    .locals 0

    iget-object p0, p0, Zka:Lcom/oneplus/android/server/you/you;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/you/you;->onAcquireScreenoffWakeLock()V

    :cond_0
    return-void
.end method

.method public onReleaseScreenoffWakeLock()V
    .locals 0

    iget-object p0, p0, Zka:Lcom/oneplus/android/server/you/you;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/you/you;->onReleaseScreenoffWakeLock()V

    :cond_0
    return-void
.end method
