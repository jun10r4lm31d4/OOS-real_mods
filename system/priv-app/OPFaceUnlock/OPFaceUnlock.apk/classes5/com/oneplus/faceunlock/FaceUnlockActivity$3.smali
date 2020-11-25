.class Lcom/oneplus/faceunlock/FaceUnlockActivity$3;
.super Ljava/lang/Object;
.source "FaceUnlockActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/faceunlock/FaceUnlockActivity;->onPackageManagerProxyConnected(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/faceunlock/FaceUnlockActivity;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onPackageManagerProxyConnected() - Disagree to disable GMS face lock, finish"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$300(Lcom/oneplus/faceunlock/FaceUnlockActivity;Z)V

    return-void
.end method
