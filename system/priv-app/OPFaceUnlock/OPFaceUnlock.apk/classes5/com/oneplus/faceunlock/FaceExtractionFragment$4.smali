.class Lcom/oneplus/faceunlock/FaceExtractionFragment$4;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Lcom/oneplus/faceunlock/camera/CameraDevice$FaceKeyPointsCallback;


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
.method public onFaceKeyPointsUpdated([F)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$400(Lcom/oneplus/faceunlock/FaceExtractionFragment;[F)V

    return-void
.end method
