.class final synthetic Lcom/oneplus/faceunlock/FaceExtractionFragment$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceExtractionFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceExtractionFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceExtractionFragment;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/FaceExtractionFragment;->lambda$reset$4$FaceExtractionFragment()V

    return-void
.end method
