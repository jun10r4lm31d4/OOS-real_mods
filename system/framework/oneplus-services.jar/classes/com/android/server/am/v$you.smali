.class Lcom/android/server/am/v$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# static fields
.field public static final GET_ONLINECONFIG:I = 0x0

.field public static final ta:I = 0x1

.field public static final u:I = 0xea60


# instance fields
.field final synthetic this$0:Lcom/android/server/am/v;


# direct methods
.method constructor <init>(Lcom/android/server/am/v;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/v;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, this$0:Lcom/android/server/am/v;

    invoke-static {p0, p1}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, this$0:Lcom/android/server/am/v;

    new-instance v0, Lcom/android/server/am/v$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/am/v$zta;-><init>(Lcom/android/server/am/v;Lcom/android/server/am/u;)V

    invoke-static {p1, v0}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v;Lcom/android/server/am/v$zta;)Lcom/android/server/am/v$zta;

    iget-object p1, p0, this$0:Lcom/android/server/am/v;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    invoke-static {p1}, Lcom/android/server/am/v;->sis(Lcom/android/server/am/v;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, this$0:Lcom/android/server/am/v;

    invoke-static {v2}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v;)Lcom/android/server/am/v$zta;

    move-result-object v2

    const-string v3, "OpBatteryStatsService"

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v;Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, this$0:Lcom/android/server/am/v;

    invoke-static {p1}, Lcom/android/server/am/v;->you(Lcom/android/server/am/v;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, this$0:Lcom/android/server/am/v;

    invoke-static {v0}, Lcom/android/server/am/v;->sis(Lcom/android/server/am/v;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/v;

    invoke-static {p0}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v;)Lcom/android/server/am/v$zta;

    move-result-object p0

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/v$zta;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
