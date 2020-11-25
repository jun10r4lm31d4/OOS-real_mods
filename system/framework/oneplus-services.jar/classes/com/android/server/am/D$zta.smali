.class Lcom/android/server/am/D$zta;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/D;


# direct methods
.method public constructor <init>(Lcom/android/server/am/D;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/D;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/16 v1, 0x64

    if-le v0, v1, :cond_4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/JobServiceContext;

    iget-object v0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v0}, Lcom/android/server/am/D;->sis(Lcom/android/server/am/D;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v1}, Lcom/android/server/am/D;->tsu(Lcom/android/server/am/D;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v1}, Lcom/android/server/am/D;->tsu(Lcom/android/server/am/D;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v2}, Lcom/android/server/am/D;->rtg(Lcom/android/server/am/D;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {}, Lcom/android/server/am/D;->access$2700()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v2}, Lcom/android/server/am/D;->tsu(Lcom/android/server/am/D;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v2, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v2}, Lcom/android/server/am/D;->ssp(Lcom/android/server/am/D;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v3}, Lcom/android/server/am/D;->rtg(Lcom/android/server/am/D;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v0, v2}, Lcom/android/server/am/D;->zta(Lcom/android/server/am/D;I)Lcom/android/server/am/D$tsu;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/server/am/D$tsu;->packageName:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v1, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v1}, Lcom/android/server/am/D;->cno(Lcom/android/server/am/D;)Ljava/util/HashSet;

    move-result-object v2

    monitor-enter v2

    :try_start_1
    iget-object p0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {p0}, Lcom/android/server/am/D;->cno(Lcom/android/server/am/D;)Ljava/util/HashSet;

    move-result-object p0

    iget-object v0, v0, Lcom/android/server/am/D$tsu;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p1}, Lcom/android/server/job/JobServiceContext;->restrictJob()V

    goto :goto_1

    :cond_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/job/controllers/JobStatus;

    iget-object v0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v0, p1}, Lcom/android/server/am/D;->zta(Lcom/android/server/am/D;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/am/D$tsu;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0, p1}, Lcom/android/server/am/D$tsu;->zta(Lcom/android/server/am/D$tsu;Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {p0}, Lcom/android/server/am/D;->bio(Lcom/android/server/am/D;)V

    goto :goto_1

    :cond_3
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {v0}, Lcom/android/server/am/D;->zta(Lcom/android/server/am/D;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "OpJobController"

    invoke-direct {p1, v0, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, this$0:Lcom/android/server/am/D;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/am/D;->zta(Lcom/android/server/am/D;Lorg/json/JSONArray;)V

    iget-object p0, p0, this$0:Lcom/android/server/am/D;

    invoke-static {p0}, Lcom/android/server/am/D;->you(Lcom/android/server/am/D;)Lcom/oneplus/config/ConfigObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_4
    :goto_1
    return-void
.end method
