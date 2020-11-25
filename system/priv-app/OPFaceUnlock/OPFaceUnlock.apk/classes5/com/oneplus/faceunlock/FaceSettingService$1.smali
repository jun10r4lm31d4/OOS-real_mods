.class Lcom/oneplus/faceunlock/FaceSettingService$1;
.super Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;
.source "FaceSettingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceSettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceSettingService;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceSettingService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceSettingService;

    invoke-direct {p0}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public checkState(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceSettingService;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceSettingService;->access$000(Lcom/oneplus/faceunlock/FaceSettingService;I)I

    move-result v0

    return v0
.end method

.method public removeFace(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceSettingService;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceSettingService;->access$100(Lcom/oneplus/faceunlock/FaceSettingService;I)V

    return-void
.end method
