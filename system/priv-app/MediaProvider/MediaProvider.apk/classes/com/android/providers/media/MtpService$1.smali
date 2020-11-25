.class Lcom/android/providers/media/MtpService$1;
.super Landroid/os/storage/StorageEventListener;
.source "MtpService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, this$0:Lcom/android/providers/media/MtpService;

    monitor-enter v0

    :try_start_0
    const-string v1, "MtpService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStorageStateChanged "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mounted"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p3}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)[Landroid/os/storage/StorageVolume;

    move-result-object p3

    array-length p3, p3

    if-ge p2, p3, :cond_3

    iget-object p3, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p3}, Lcom/android/providers/media/MtpService;->access$000(Lcom/android/providers/media/MtpService;)[Landroid/os/storage/StorageVolume;

    move-result-object p3

    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p1}, Lcom/android/providers/media/MtpService;->access$200(Lcom/android/providers/media/MtpService;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p3}, Landroid/os/storage/StorageVolume;->isPrimary()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p1}, Lcom/android/providers/media/MtpService;->access$300(Lcom/android/providers/media/MtpService;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p0, p3}, Lcom/android/providers/media/MtpService;->access$400(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V

    goto :goto_1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-string p3, "mounted"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p2}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, this$0:Lcom/android/providers/media/MtpService;

    iget-object p0, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-static {p0}, Lcom/android/providers/media/MtpService;->access$100(Lcom/android/providers/media/MtpService;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageVolume;

    invoke-static {p2, p0}, Lcom/android/providers/media/MtpService;->access$500(Lcom/android/providers/media/MtpService;Landroid/os/storage/StorageVolume;)V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
