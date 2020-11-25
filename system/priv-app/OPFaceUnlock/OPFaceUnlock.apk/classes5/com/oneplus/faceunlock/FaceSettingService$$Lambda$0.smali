.class final synthetic Lcom/oneplus/faceunlock/FaceSettingService$$Lambda$0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceSettingService;

.field private final arg$2:Lcom/oneplus/faceunlock/utils/SimpleRef;

.field private final arg$3:I

.field private final arg$4:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceSettingService;Lcom/oneplus/faceunlock/utils/SimpleRef;ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceSettingService;

    iput-object p2, p0, arg$2:Lcom/oneplus/faceunlock/utils/SimpleRef;

    iput p3, p0, arg$3:I

    iput-object p4, p0, arg$4:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceSettingService;

    iget-object v1, p0, arg$2:Lcom/oneplus/faceunlock/utils/SimpleRef;

    iget v2, p0, arg$3:I

    iget-object v3, p0, arg$4:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/faceunlock/FaceSettingService;->lambda$checkState$0$FaceSettingService(Lcom/oneplus/faceunlock/utils/SimpleRef;ILjava/lang/Object;)V

    return-void
.end method
