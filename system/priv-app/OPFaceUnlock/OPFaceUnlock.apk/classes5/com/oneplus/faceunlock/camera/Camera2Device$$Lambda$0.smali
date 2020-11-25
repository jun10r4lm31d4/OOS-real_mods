.class final synthetic Lcom/oneplus/faceunlock/camera/Camera2Device$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/camera/Camera2Device;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/camera/Camera2Device;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/camera/Camera2Device;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/camera/Camera2Device;

    invoke-virtual {v0}, Lcom/oneplus/faceunlock/camera/Camera2Device;->lambda$onInitialize$0$Camera2Device()V

    return-void
.end method
