.class Lcom/android/server/display/DisplayPowerController$11;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->initOnlineConfig()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$200(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/display/DisplayPowerController;->access$1300()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    nop

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;Lorg/json/JSONArray;)V

    nop

    :goto_0
    return-void
.end method
