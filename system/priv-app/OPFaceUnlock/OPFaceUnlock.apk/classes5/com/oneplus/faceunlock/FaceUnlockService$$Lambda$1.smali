.class final synthetic Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    check-cast p2, Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/faceunlock/FaceUnlockService;->lambda$invalidateFaceData$1$FaceUnlockService(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method
