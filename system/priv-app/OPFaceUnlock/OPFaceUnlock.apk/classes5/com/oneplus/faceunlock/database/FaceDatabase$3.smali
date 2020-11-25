.class final Lcom/oneplus/faceunlock/database/FaceDatabase$3;
.super Ljava/lang/Object;
.source "FaceDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/database/FaceDatabase;->loadFaceFeature(ILcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p2, p0, val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const/4 v10, 0x0

    new-instance v5, Lcom/oneplus/faceunlock/utils/SimpleRef;

    invoke-direct {v5, v10}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    :try_start_0
    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tmp"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;

    invoke-direct {v8, p0, v5}, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v7, 0x0

    :try_start_2
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    const/4 v8, 0x0

    const/16 v9, 0x1000

    :try_start_3
    new-array v0, v9, [B

    :goto_1
    const/4 v9, 0x0

    const/16 v11, 0x1000

    invoke-virtual {v6, v0, v9, v11}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_4

    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_4
    throw v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v8

    move-object v9, v7

    :goto_2
    if-eqz v4, :cond_2

    if-eqz v9, :cond_8

    :try_start_5
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_2
    :goto_3
    :try_start_6
    throw v8
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_1
    move-exception v7

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v8

    move-object v10, v7

    :goto_4
    if-eqz v6, :cond_3

    if-eqz v10, :cond_b

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_3
    :goto_5
    :try_start_9
    throw v8
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catch_2
    move-exception v1

    :try_start_a
    invoke-static {}, Lcom/oneplus/faceunlock/database/FaceDatabase;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "loadFaceFeature() - Error to load face feature"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;

    invoke-direct {v8, p0, v5}, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    :try_start_b
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/oneplus/faceunlock/utils/SimpleRef;->set(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v4, :cond_5

    if-eqz v10, :cond_7

    :try_start_c
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_5
    :goto_6
    if-eqz v6, :cond_6

    if-eqz v10, :cond_a

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :cond_6
    :goto_7
    iget-object v7, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v7, :cond_0

    iget-object v7, p0, val$handler:Landroid/os/Handler;

    new-instance v8, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;

    invoke-direct {v8, p0, v5}, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_3
    move-exception v9

    :try_start_e
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_2
    move-exception v7

    move-object v8, v7

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_6

    :catch_4
    move-exception v7

    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    :catch_5
    move-exception v8

    :try_start_f
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_7

    :catchall_3
    move-exception v7

    iget-object v8, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v8, :cond_9

    iget-object v8, p0, val$handler:Landroid/os/Handler;

    new-instance v9, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;

    invoke-direct {v9, p0, v5}, Lcom/oneplus/faceunlock/database/FaceDatabase$3$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$3;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_9
    throw v7

    :cond_a
    :try_start_10
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catch_6
    move-exception v7

    invoke-virtual {v10, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_5

    :catchall_4
    move-exception v7

    move-object v8, v7

    move-object v9, v10

    goto/16 :goto_2
.end method
