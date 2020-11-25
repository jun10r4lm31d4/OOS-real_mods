.class Lcom/oneplus/faceunlock/FaceExtractionFragment$10;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;->hideHintText()V
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

    sget-object v1, Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;->INVISIBLE:Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->access$1302(Lcom/oneplus/faceunlock/FaceExtractionFragment;Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;)Lcom/oneplus/faceunlock/FaceExtractionFragment$VisibilityState;

    return-void
.end method
