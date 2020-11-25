.class Lcom/oneplus/faceunlock/FaceUnlockService$8;
.super Ljava/lang/Object;
.source "FaceUnlockService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockService;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockService;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockService;

    invoke-static {v0}, Lcom/oneplus/faceunlock/FaceUnlockService;->access$000(Lcom/oneplus/faceunlock/FaceUnlockService;)V

    return-void
.end method
