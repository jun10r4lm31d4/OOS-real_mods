.class final synthetic Lcom/oneplus/faceunlock/FaceUnlockService$$Lambda$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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
.method public run()V
    .locals 1

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/FaceUnlockService;->lambda$onCameraDisconnected$3$FaceUnlockService()V

    return-void
.end method
