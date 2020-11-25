.class final Lcom/oneplus/faceunlock/database/FaceDatabase$4;
.super Ljava/lang/Object;
.source "FaceDatabase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/database/FaceDatabase;->loadFaceFrame(ILcom/oneplus/faceunlock/utils/ResultCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(ILcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V
    .locals 0

    iput p1, p0, val$userId:I

    iput-object p2, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    iput-object p3, p0, val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/oneplus/faceunlock/utils/SimpleRef;

    iget v1, p0, val$userId:I

    invoke-static {v1}, Lcom/oneplus/faceunlock/database/FaceDatabase;->loadFaceFrameSync(I)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/faceunlock/utils/SimpleRef;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, val$callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, val$handler:Landroid/os/Handler;

    new-instance v2, Lcom/oneplus/faceunlock/database/FaceDatabase$4$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/faceunlock/database/FaceDatabase$4$1;-><init>(Lcom/oneplus/faceunlock/database/FaceDatabase$4;Lcom/oneplus/faceunlock/utils/SimpleRef;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
