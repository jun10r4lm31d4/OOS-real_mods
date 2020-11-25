.class Lcom/oneplus/faceunlock/engine/FaceEngine$2$1;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$2;

.field final synthetic val$result:Z


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine$2;Z)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$2;

    iput-boolean p2, p0, val$result:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$2;

    iget-object v0, v0, Lcom/oneplus/faceunlock/engine/FaceEngine$2;->val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iget-object v1, p0, this$1:Lcom/oneplus/faceunlock/engine/FaceEngine$2;

    iget-object v1, v1, Lcom/oneplus/faceunlock/engine/FaceEngine$2;->val$token:Lcom/oneplus/faceunlock/utils/Token;

    iget-boolean v2, p0, val$result:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oneplus/faceunlock/utils/ResultCallback;->onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V

    return-void
.end method
