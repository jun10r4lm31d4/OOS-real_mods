.class Lcom/android/server/display/rtg$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/rtg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/rtg;


# direct methods
.method public constructor <init>(Lcom/android/server/display/rtg;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, this$0:Lcom/android/server/display/rtg;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/server/display/rtg;->sis(Lcom/android/server/display/rtg;I)I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/display/rtg;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v1, v2}, Lcom/android/server/display/rtg;->tsu(Lcom/android/server/display/rtg;I)I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/display/rtg;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;Ljava/lang/Object;)Ljava/lang/String;

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 p1, 0x5

    if-eq v1, p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    const/4 p1, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;IZ)V

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p0, p1}, Lcom/android/server/display/rtg;->rtg(Lcom/android/server/display/rtg;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p1}, Lcom/android/server/display/rtg;->igw(Lcom/android/server/display/rtg;)Ljava/util/HashSet;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {v1}, Lcom/android/server/display/rtg;->igw(Lcom/android/server/display/rtg;)Ljava/util/HashSet;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p1}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;)I

    move-result p1

    if-eq v0, p1, :cond_3

    const/16 p1, 0x3e8

    if-ne v0, p1, :cond_6

    iget-object p1, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p1}, Lcom/android/server/display/rtg;->you(Lcom/android/server/display/rtg;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.oneplus.dialer"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_3
    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    const-string p1, "regPsensor false"

    invoke-static {p0, p1}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_4
    invoke-static {v2}, Lcom/android/server/display/rtg;->access$2102(Z)Z

    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p0, v2}, Lcom/android/server/display/rtg;->rtg(Lcom/android/server/display/rtg;I)V

    goto :goto_0

    :cond_5
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {v0}, Lcom/android/server/display/rtg;->ssp(Lcom/android/server/display/rtg;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "OpProximityController"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/display/rtg;->zta(Lcom/android/server/display/rtg;Lorg/json/JSONArray;)V

    iget-object p0, p0, this$0:Lcom/android/server/display/rtg;

    invoke-static {p0}, Lcom/android/server/display/rtg;->cno(Lcom/android/server/display/rtg;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_6
    :goto_0
    return-void
.end method
