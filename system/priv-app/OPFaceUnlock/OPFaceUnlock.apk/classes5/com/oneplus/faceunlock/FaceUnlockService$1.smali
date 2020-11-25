.class Lcom/oneplus/faceunlock/FaceUnlockService$1;
.super Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;
.source "FaceUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/internal/IOPFacelockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public isReleaseComplete()Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$700(Lcom/oneplus/faceunlock/FaceUnlockService;)Z

    move-result v0

    return v0
.end method

.method public notify(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$600(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    return-void
.end method

.method public prepare()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$000(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    return-void
.end method

.method public registerCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$100(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    return-void
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$200(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    return-void
.end method

.method public startFaceUnlock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$300(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    return-void
.end method

.method public stopFaceUnlock(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$400(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    return-void
.end method

.method public unregisterCallback(Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$500(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    return-void
.end method
