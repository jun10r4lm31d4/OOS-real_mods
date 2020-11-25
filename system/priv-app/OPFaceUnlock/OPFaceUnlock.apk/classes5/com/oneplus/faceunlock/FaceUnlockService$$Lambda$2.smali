.class final synthetic Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

.field private final arg$2:Lcom/oneplus/faceunlock/utils/SimpleRef;

.field private final arg$3:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;Lcom/oneplus/faceunlock/utils/SimpleRef;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    iput-object p2, p0, arg$2:Lcom/oneplus/faceunlock/utils/SimpleRef;

    iput-object p3, p0, arg$3:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    iget-object v1, p0, arg$2:Lcom/oneplus/faceunlock/utils/SimpleRef;

    iget-object v2, p0, arg$3:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->lambda$isReleaseComplete$2$FaceUnlockService(Lcom/oneplus/faceunlock/utils/SimpleRef;Ljava/lang/Object;)V

    return-void
.end method
