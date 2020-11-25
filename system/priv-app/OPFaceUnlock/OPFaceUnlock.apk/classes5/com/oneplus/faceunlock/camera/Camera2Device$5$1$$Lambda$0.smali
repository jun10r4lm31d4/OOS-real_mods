.class final synthetic Lcom/oneplus/faceunlock/camera/Camera2Device$5$1$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;

.field private final arg$2:Landroid/hardware/camera2/CameraManager;

.field private final arg$3:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;

    iput-object p2, p0, arg$2:Landroid/hardware/camera2/CameraManager;

    iput-object p3, p0, arg$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;

    iget-object v1, p0, arg$2:Landroid/hardware/camera2/CameraManager;

    iget-object v2, p0, arg$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/faceunlock/camera/Camera2Device$5$1;->lambda$onError$0$Camera2Device$5$1(Landroid/hardware/camera2/CameraManager;Ljava/lang/String;)V

    return-void
.end method
