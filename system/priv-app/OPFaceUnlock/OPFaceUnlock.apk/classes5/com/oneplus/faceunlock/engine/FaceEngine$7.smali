.class Lcom/oneplus/faceunlock/engine/FaceEngine$7;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->release(Lcom/oneplus/faceunlock/utils/Token;ILcom/oneplus/faceunlock/utils/ResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$flags:I

.field final synthetic val$token:Lcom/oneplus/faceunlock/utils/Token;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;ILcom/oneplus/faceunlock/utils/ResultCallback;Lcom/oneplus/faceunlock/utils/Token;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iput p2, p0, val$flags:I

    iput-object p3, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p4, p0, val$token:Lcom/oneplus/faceunlock/utils/Token;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$602(Lcom/oneplus/faceunlock/engine/FaceEngine;[B)[B

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v2}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "release() - Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iget v3, p0, val$flags:I

    invoke-virtual {v2, v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->onRelease(I)V

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v2}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$000(Lcom/oneplus/faceunlock/engine/FaceEngine;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "release() - Engine released, spent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    iget-object v3, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$300(Lcom/oneplus/faceunlock/engine/FaceEngine;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/faceunlock/utils/Handle;->close(Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$302(Lcom/oneplus/faceunlock/engine/FaceEngine;Lcom/oneplus/faceunlock/utils/Handle;)Lcom/oneplus/faceunlock/utils/Handle;

    iget-object v2, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-static {v2}, Lcom/oneplus/faceunlock/engine/FaceEngine;->access$100(Lcom/oneplus/faceunlock/engine/FaceEngine;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/oneplus/faceunlock/engine/FaceEngine$7$1;

    invoke-direct {v3, p0}, Lcom/oneplus/faceunlock/engine/FaceEngine$7$1;-><init>(Lcom/oneplus/faceunlock/engine/FaceEngine$7;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
