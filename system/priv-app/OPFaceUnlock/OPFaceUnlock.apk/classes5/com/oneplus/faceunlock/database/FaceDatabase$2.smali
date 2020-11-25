.class final Lcom/oneplus/faceunlock/database/FaceDatabase$2;
.super Ljava/lang/Object;
.source "FaceDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/database/FaceDatabase;->deleteFaceFrame(ILcom/oneplus/faceunlock/utils/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0

    iput-object p1, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp_yuv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    iget-object v1, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
