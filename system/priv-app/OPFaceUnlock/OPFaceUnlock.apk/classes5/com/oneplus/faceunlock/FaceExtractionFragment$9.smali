.class Lcom/oneplus/faceunlock/FaceExtractionFragment$9;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;->extractFeature([BLandroid/util/Size;Lcom/oneplus/faceunlock/camera/CameraDevice$PreviewMetadata;Ljava/lang/Runnable;)V
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
        "Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    iput-object p2, p0, val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;)V
    .locals 8

    if-eqz p2, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    iget-object v1, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->image:[B

    iget v2, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->width:I

    iget v3, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->height:I

    const/16 v4, 0x11

    iget-object v5, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->feature:[B

    iget v6, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->engineResultCode:I

    iget v7, p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;->resultCode:I

    invoke-static/range {v0 .. v7}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1200(Lcom/oneplus/faceunlock/FaceExtractionFragment;[BIII[BII)V

    :cond_0
    iget-object v0, p0, val$endAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    iget-object v0, p0, val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public bridge synthetic onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;

    invoke-virtual {p0, p1, p2}, onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;)V

    return-void
.end method
