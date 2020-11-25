.class final Lcom/oneplus/faceunlock/engine/FaceEngine$5;
.super Ljava/lang/Object;
.source "FaceEngine.java"

# interfaces
.implements Lcom/oneplus/faceunlock/utils/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;->preInitialize(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oneplus/faceunlock/utils/ResultCallback",
        "<",
        "Lcom/oneplus/faceunlock/utils/OperationResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$initFaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;)V
    .locals 0

    iput-object p1, p0, val$initFaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V
    .locals 3

    iget-object v0, p0, val$initFaceEngine:Lcom/oneplus/faceunlock/engine/FaceEngine;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/faceunlock/engine/FaceEngine;->release(Lcom/oneplus/faceunlock/utils/Token;ILcom/oneplus/faceunlock/utils/ResultCallback;)V

    return-void
.end method

.method public bridge synthetic onResult(Lcom/oneplus/faceunlock/utils/Token;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/oneplus/faceunlock/utils/OperationResult;

    invoke-virtual {p0, p1, p2}, onResult(Lcom/oneplus/faceunlock/utils/Token;Lcom/oneplus/faceunlock/utils/OperationResult;)V

    return-void
.end method
