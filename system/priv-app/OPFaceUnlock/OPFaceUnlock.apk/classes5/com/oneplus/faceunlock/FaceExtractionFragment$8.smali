.class Lcom/oneplus/faceunlock/FaceExtractionFragment$8;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1000(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Lcom/oneplus/faceunlock/CircleTextureView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1000(Lcom/oneplus/faceunlock/FaceExtractionFragment;)Lcom/oneplus/faceunlock/CircleTextureView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/CircleTextureView;->setVisibility(I)V

    :cond_0
    return-void
.end method
