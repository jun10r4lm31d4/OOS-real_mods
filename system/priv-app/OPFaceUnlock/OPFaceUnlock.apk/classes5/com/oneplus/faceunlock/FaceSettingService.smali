.class public Lcom/oneplus/faceunlock/FaceSettingService;
.super Landroid/app/Service;
.source "FaceSettingService.java"


# static fields
.field public static final ACTION_FACE_SETTING_CHANGED:Ljava/lang/String; = "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

.field private static final CHECK_STATE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

.field public static final EXTRA_IS_FACE_SAVED:Ljava/lang/String; = "IsFaceSaved"

.field private static final REMOVE_FACE_LOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final m_Binder:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;

.field private m_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    const-class v0, Lcom/oneplus/faceunlock/FaceSettingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/Semaphore;

    invoke-direct {v0, v1, v1}, Ljava/util/concurrent/Semaphore;-><init>(IZ)V

    sput-object v0, CHECK_STATE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, REMOVE_FACE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/oneplus/faceunlock/FaceSettingService$1;

    invoke-direct {v0, p0}, Lcom/oneplus/faceunlock/FaceSettingService$1;-><init>(Lcom/oneplus/faceunlock/FaceSettingService;)V

    iput-object v0, p0, m_Binder:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/faceunlock/FaceSettingService;I)I
    .locals 1

    invoke-direct {p0, p1}, checkState(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/faceunlock/FaceSettingService;I)V
    .locals 0

    invoke-direct {p0, p1}, removeFace(I)V

    return-void
.end method

.method public static broadcastFaceSettingChanged(Z)V
    .locals 4

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastFaceSettingChanged() - Face saved : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.faceunlock.action.FACE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "IsFaceSaved"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v1

    const-string v2, "com.oneplus.faceunlock.permission.FACE_SETTING"

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private checkState(I)I
    .locals 7

    invoke-direct {p0}, isMainThread()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    const-string v4, "IsFaceFeatureSaved"

    invoke-static {v4}, Lcom/oneplus/faceunlock/utils/Settings;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v2, 0x2

    :cond_0
    :goto_0
    return v2

    :cond_1
    :try_start_0
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "checkState() - Acquiring semaphore [Start]"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, CHECK_STATE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->acquire()V

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "checkState() - Acquiring semaphore [End]"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance v3, Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {v3}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>()V

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    monitor-enter v1

    :try_start_1
    iget-object v4, p0, m_Handler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/FaceSettingService$$Lambda$0;

    invoke-direct {v5, p0, v3, p1, v1}, Lcom/oneplus/faceunlock/FaceSettingService$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/FaceSettingService;Lcom/oneplus/faceunlock/utils/SimpleRef;ILjava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "checkState() - [Start]"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v4, 0xbb8

    invoke-virtual {v1, v4, v5}, Ljava/lang/Object;->wait(J)V

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkState() - Result : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", [End]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    sget-object v4, CHECK_STATE_SEMAPHORE:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v4}, Ljava/util/concurrent/Semaphore;->release()V

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/utils/SimpleRef;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_3
    move v2, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, TAG:Ljava/lang/String;

    const-string v5, "checkState() - Fail to acquire semaphore to check state"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    :cond_2
    const/4 v4, 0x2

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_2
.end method

.method private isMainThread()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFace(I)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "IsFaceFeatureSaved"

    invoke-static {v0, v2}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Z)V

    const-string v0, "FaceToken"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/utils/Settings;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, broadcastFaceSettingChanged(Z)V

    sget-object v1, REMOVE_FACE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, REMOVE_FACE_LOCK:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    sget-object v1, REMOVE_FACE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/FaceSettingService$$Lambda$1;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/faceunlock/FaceSettingService$$Lambda$1;-><init>(Lcom/oneplus/faceunlock/FaceSettingService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "removeFace() - [Start]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, REMOVE_FACE_LOCK:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v2, "removeFace() - [End]"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    :try_start_3
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method final synthetic lambda$checkState$0$FaceSettingService(Lcom/oneplus/faceunlock/utils/SimpleRef;ILjava/lang/Object;)V
    .locals 1

    invoke-direct {p0, p2}, checkState(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V

    monitor-enter p3

    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final synthetic lambda$removeFace$1$FaceSettingService(I)V
    .locals 0

    invoke-direct {p0, p1}, removeFace(I)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, m_Handler:Landroid/os/Handler;

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, m_Binder:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;

    return-object v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
