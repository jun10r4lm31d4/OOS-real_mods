.class Lcom/oneplus/faceunlock/FaceUnlockService$10;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->registerCallback(ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

.field final synthetic val$callingPid:I

.field final synthetic val$cb:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    iput p2, p0, val$callingPid:I

    iput-object p3, p0, val$cb:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    iget v1, p0, val$callingPid:I

    iget-object v2, p0, val$cb:Lcom/oneplus/faceunlock/internal/IOPFacelockCallback;

    invoke-static {v0, v1, v2}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$100(Lcom/oneplus/faceunlock/FaceUnlockService;ILcom/oneplus/faceunlock/internal/IOPFacelockCallback;)V

    return-void
.end method
