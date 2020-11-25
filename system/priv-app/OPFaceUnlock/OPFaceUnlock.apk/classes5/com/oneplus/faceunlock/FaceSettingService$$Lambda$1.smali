.class final synthetic Lcom/oneplus/faceunlock/FaceSettingService$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceSettingService;

.field private final arg$2:I


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceSettingService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceSettingService;

    iput p2, p0, arg$2:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceSettingService;

    iget v1, p0, arg$2:I

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/FaceSettingService;->lambda$removeFace$1$FaceSettingService(I)V

    return-void
.end method
