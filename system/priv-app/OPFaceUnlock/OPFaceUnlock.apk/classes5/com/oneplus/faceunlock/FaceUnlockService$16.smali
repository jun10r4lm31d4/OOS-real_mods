.class Lcom/oneplus/faceunlock/FaceUnlockService$16;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->stopFaceUnlock(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    iput p2, p0, val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    iget v1, p0, val$userId:I

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$400(Lcom/oneplus/faceunlock/FaceUnlockService;I)V

    return-void
.end method
