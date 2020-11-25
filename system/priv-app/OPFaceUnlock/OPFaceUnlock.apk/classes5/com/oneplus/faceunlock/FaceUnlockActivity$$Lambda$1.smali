.class final synthetic Lcom/oneplus/faceunlock/FaceUnlockActivity$$Lambda$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final arg$1:Lcom/oneplus/faceunlock/FaceUnlockActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, arg$1:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v0, p1}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->lambda$showUI$0$FaceUnlockActivity(Landroid/view/View;)V

    return-void
.end method
