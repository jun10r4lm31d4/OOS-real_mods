.class final Lcom/oneplus/faceunlock/database/FaceDatabase$7;
.super Ljava/lang/Object;
.source "FaceDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/database/FaceDatabase;->saveFaceFrame(I[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$image:[B


# direct methods
.method constructor <init>([BLcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, val$image:[B

    iput-object p2, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p3, p0, val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v2, Lcom/oneplus/faceunlock/utils/SimpleRef;

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->FAIL:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-direct {v2, v4}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getCacheDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/tmp_yuv"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x0

    :try_start_3
    iget-object v4, p0, val$image:[B

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    sget-object v4, Lcom/oneplus/faceunlock/utils/OperationResult;->SUCCESS:Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v2, v4}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v3, :cond_1

    if-eqz v6, :cond_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_0
    iget-object v4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v4, :cond_2

    iget-object v4, p0, val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$7;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    :try_start_5
    invoke-static {}, Lcom/oneplus/faceunlock/database/FaceDatabase;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "saveFaceFrame() - Error to create new file"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v4, :cond_2

    iget-object v4, p0, val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$7;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_6
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    invoke-static {}, Lcom/oneplus/faceunlock/database/FaceDatabase;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "saveFaceFrame() - Error to save face frame"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    iget-object v4, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v4, :cond_2

    iget-object v4, p0, val$handler:Landroid/os/Handler;

    new-instance v5, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;

    invoke-direct {v5, p0, v2}, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$7;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_3
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v4

    iget-object v5, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v5, :cond_4

    iget-object v5, p0, val$handler:Landroid/os/Handler;

    new-instance v6, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;

    invoke-direct {v6, p0, v2}, Lcom/oneplus/faceunlock/database/FaceDatabase$7$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$7;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    throw v4

    :catch_3
    move-exception v4

    :try_start_9
    throw v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v5

    move-object v6, v4

    :goto_2
    if-eqz v3, :cond_5

    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_5
    :goto_3
    :try_start_b
    throw v5

    :catch_4
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_3

    :catchall_2
    move-exception v4

    move-object v5, v4

    goto :goto_2
.end method
