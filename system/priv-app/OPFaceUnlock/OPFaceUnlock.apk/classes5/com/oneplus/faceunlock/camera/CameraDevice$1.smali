.class Lcom/oneplus/faceunlock/camera/CameraDevice$1;
.super Ljava/lang/Object;
.source "CameraDevice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/camera/CameraDevice;-><init>(Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/CameraDevice;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v0}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$100(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    move-result-object v0

    sget-object v1, Lcom/oneplus/faceunlock/camera/CameraDevice$State;->NEW:Lcom/oneplus/faceunlock/camera/CameraDevice$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    iget-object v1, p0, this$0:Lcom/oneplus/faceunlock/camera/CameraDevice;

    invoke-static {v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$200(Lcom/oneplus/faceunlock/camera/CameraDevice;)Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/camera/CameraDevice;->access$300(Lcom/oneplus/faceunlock/camera/CameraDevice;Lcom/oneplus/faceunlock/camera/CameraDevice$OpenParams;)Z

    :cond_0
    return-void
.end method
