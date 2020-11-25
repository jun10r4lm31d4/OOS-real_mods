.class Lcom/oneplus/faceunlock/engine/FaceEngine$1$1;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$1;

.field final synthetic val$similarity:D


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine$1;D)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$1;

    iput-wide p2, p0, val$similarity:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$1;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$1;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    const/4 v1, 0x0

    iget-wide v2, p0, val$similarity:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    return-void
.end method
