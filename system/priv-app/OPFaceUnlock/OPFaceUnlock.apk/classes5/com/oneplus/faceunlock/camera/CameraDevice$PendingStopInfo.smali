.class Lcom/oneplus/faceunlock/camera/CameraDevice$PendingStopInfo;
.super Ljava/lang/Object;
.source "CameraDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PendingStopInfo"
.end annotation


# instance fields
.field final callback:Lcom/oneplus/faceunlock/utils/ResultCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, callback:Lcom/oneplus/faceunlock/utils/ResultCallback;

    return-void
.end method
