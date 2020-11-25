.class Lcom/oneplus/android/server/you/you$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/you/you;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/you/you;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/you/you;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/you/you;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zta(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudiofrontActivityChanged activityName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uid = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " pid = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "OpAudioScreenoffMonitorManager"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Ljava/lang/String;

    const-string p3, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    invoke-direct {p2, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OpAudioScreenoffMonitorManager"

    const-string p2, "AudiofrontActivityChanged activityName is wechat phone Activity"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/you/you;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/oneplus/android/server/you/you;->zta(Lcom/oneplus/android/server/you/you;Z)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, this$0:Lcom/oneplus/android/server/you/you;

    invoke-static {p1}, Lcom/oneplus/android/server/you/you;->zta(Lcom/oneplus/android/server/you/you;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, this$0:Lcom/oneplus/android/server/you/you;

    invoke-static {p2}, Lcom/oneplus/android/server/you/you;->you(Lcom/oneplus/android/server/you/you;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, this$0:Lcom/oneplus/android/server/you/you;

    invoke-static {p2}, Lcom/oneplus/android/server/you/you;->you(Lcom/oneplus/android/server/you/you;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->release()V

    const-string p2, "OpAudioScreenoffMonitorManager"

    const-string p3, "wechat phone Activity is not Front Activity and release PROXIMITY_SCREEN_OFF_WAKE_LOCK"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/you/you;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oneplus/android/server/you/you;->zta(Lcom/oneplus/android/server/you/you;Z)Z

    const-string p0, "OpAudioScreenoffMonitorManager"

    const-string p1, "AudiofrontActivityChanged activityName is not wechat phone Activity"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
