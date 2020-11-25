.class Lcom/oneplus/faceunlock/FaceUnlockActivity$1;
.super Ljava/lang/Object;
.source "FaceUnlockActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceUnlockActivity;
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
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-static {v0, p2}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$000(Lcom/oneplus/faceunlock/FaceUnlockActivity;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->access$102(Lcom/oneplus/faceunlock/FaceUnlockActivity;Z)Z

    return-void
.end method
