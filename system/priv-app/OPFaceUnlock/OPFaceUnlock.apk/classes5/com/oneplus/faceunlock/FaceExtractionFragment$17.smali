.class Lcom/oneplus/faceunlock/FaceExtractionFragment$17;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;->prepareFaceEngine()V
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
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1800(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1800(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1900(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V

    return-void
.end method

.method public bridge synthetic onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {p0, p1, p2}, onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method
