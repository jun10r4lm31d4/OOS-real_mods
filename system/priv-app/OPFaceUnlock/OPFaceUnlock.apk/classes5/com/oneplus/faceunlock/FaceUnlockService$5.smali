.class Lcom/oneplus/faceunlock/FaceUnlockService$5;
.super Landroid/os/Handler;
.source "FaceUnlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
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

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0, p1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$1100(Lcom/oneplus/faceunlock/FaceUnlockService;Landroid/os/Message;)V

    return-void
.end method
