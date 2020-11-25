.class Lcom/oneplus/faceunlock/FaceUnlockService$6;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->onCameraErrorReceived(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1200(Lcom/oneplus/faceunlock/FaceUnlockService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v4}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1300(Lcom/oneplus/faceunlock/FaceUnlockService;)I

    move-result v4

    const/4 v5, 0x3

    invoke-interface {v0, v3, v4, v5}, Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;->onEndRecognize(III)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1400()Ljava/lang/String;

    move-result-object v3

    const-string v4, "onCameraErrorReceived() - Error to notify error callback"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    return-void
.end method
