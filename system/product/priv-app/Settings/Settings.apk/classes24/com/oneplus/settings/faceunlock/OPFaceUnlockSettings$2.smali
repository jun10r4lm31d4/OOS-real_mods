.class Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings$2;
.super Landroid/os/Handler;
.source "OPFaceUnlockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;

    invoke-static {v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->access$200(Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;)V

    nop

    :goto_0
    return-void
.end method
