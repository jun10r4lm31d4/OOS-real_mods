.class public Lcom/oneplus/faceunlock/FaceUnlockApplication;
.super Landroid/app/Application;
.source "FaceUnlockApplication.java"


# static fields
.field private static final SYNC_OBJ:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String;

.field private static volatile m_Current:Lcom/oneplus/faceunlock/FaceUnlockApplication;


# instance fields
.field private m_Handler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FaceUnlockApplication;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, SYNC_OBJ:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static final current()Lcom/oneplus/faceunlock/FaceUnlockApplication;
    .locals 4

    sget-object v1, m_Current:Lcom/oneplus/faceunlock/FaceUnlockApplication;

    if-eqz v1, :cond_0

    sget-object v1, m_Current:Lcom/oneplus/faceunlock/FaceUnlockApplication;

    :goto_0
    return-object v1

    :cond_0
    sget-object v2, SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-object v1, m_Current:Lcom/oneplus/faceunlock/FaceUnlockApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    :try_start_1
    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "current() - Wait for creating, [Start]"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, SYNC_OBJ:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "current() - Wait for creating, [End]"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :try_start_2
    sget-object v1, m_Current:Lcom/oneplus/faceunlock/FaceUnlockApplication;

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v1, TAG:Ljava/lang/String;

    const-string v3, "current() - Error to wait"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, m_Handler:Landroid/os/Handler;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, m_Handler:Landroid/os/Handler;

    sget-object v1, SYNC_OBJ:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object p0, m_Current:Lcom/oneplus/faceunlock/FaceUnlockApplication;

    sget-object v0, SYNC_OBJ:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
