.class final synthetic Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

.field private final arg$2:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    iput-object p2, p0, arg$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    iget-object v1, p0, arg$2:Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {v0, v1, p1, p2}, Lcom/oneplus/faceunlock/FaceUnlockService;->lambda$prepare$5$FaceUnlockService(Ljava/lang/String;Lcom/oneplus/faceunlock/utils/Token;[B)V

    return-void
.end method
