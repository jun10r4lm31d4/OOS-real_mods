.class Lcom/oneplus/faceunlock/FaceUnlockService$13;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->startFaceUnlock(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/faceunlock/utils/ResultCallback",
        "<",
        "Lcom/oneplus/faceunlock/utils/OperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    iput p2, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 6

    :try_start_0
    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1500(Lcom/oneplus/faceunlock/FaceUnlockService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_0
    :try_start_2
    sget-object v2, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    if-ne p2, v2, :cond_2

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x0

    :try_start_3
    iget v4, p0, val$userId:I

    const/4 v5, 0x3

    invoke-interface {v0, v3, v4, v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "startFaceUnlock() - Error to notify error callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2

    :cond_1
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_6
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v2

    :cond_2
    :try_start_7
    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2202(Lcom/oneplus/faceunlock/FaceUnlockService;J)J

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2500(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v3, 0x0

    :try_start_8
    invoke-interface {v0, v3}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onBeginRecognize(I)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_9
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "startFaceUnlock() - Error to notify callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_a
    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$2600()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v3

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    throw v2

    :catchall_4
    move-exception v2

    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v2
.end method

.method public bridge synthetic onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {p0, p1, p2}, onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method
