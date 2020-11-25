.class public Lcom/android/server/wm/you/bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/you/bio$zta;,
        Lcom/android/server/wm/you/bio$you;,
        Lcom/android/server/wm/you/bio$tsu;,
        Lcom/android/server/wm/you/bio$rtg;,
        Lcom/android/server/wm/you/bio$sis;
    }
.end annotation


# static fields
.field private static final BITMAP_EXTENSION:Ljava/lang/String; = ".jpg"

.field private static final DELAY_MS:J = 0x64L

.field private static final MAX_STORE_QUEUE_DEPTH:I = 0x2

.field private static final QUALITY:I = 0x5f

.field private static final xga:Ljava/lang/String; = "appsnapshots"


# instance fields
.field private final mDirectoryResolver:Lcom/android/server/wm/you/bio$sis;

.field private final mLock:Ljava/lang/Object;

.field private mPaused:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mPersister:Ljava/lang/Thread;

.field private mQueueIdling:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mStarted:Z

.field private final mStoreQueueItems:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/you/bio$tsu;",
            ">;"
        }
    .end annotation
.end field

.field private final mWriteQueue:Ljava/util/ArrayDeque;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/wm/you/bio$rtg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/wm/you/bio$sis;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, mWriteQueue:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, mStoreQueueItems:Ljava/util/ArrayDeque;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wm/you/kth;

    const-string v1, "AppSnapshotPersister"

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/you/kth;-><init>(Lcom/android/server/wm/you/bio;Ljava/lang/String;)V

    iput-object v0, p0, mPersister:Ljava/lang/Thread;

    iput-object p1, p0, mDirectoryResolver:Lcom/android/server/wm/you/bio$sis;

    return-void
.end method

.method private Kc(I)V
    .locals 7

    :try_start_0
    invoke-direct {p0, p1}, getDirectory(I)Ljava/io/File;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAllSnapshotsForUser userId =: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",fileNumber = : "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",spend time = : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAllSnapshotsForUser fail userId =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",error =: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->sa(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private createDirectory(I)Z
    .locals 0

    invoke-direct {p0, p1}, getDirectory(I)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private ensureStoreQueueDepthLocked()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    :goto_0
    iget-object v0, p0, mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    iget-object v0, p0, mStoreQueueItems:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/you/bio$tsu;

    iget-object v1, p0, mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Queue is too deep! Purged item with package ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/wm/you/bio$tsu;->zta(Lcom/android/server/wm/you/bio$tsu;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private getDirectory(I)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    iget-object p0, p0, mDirectoryResolver:Lcom/android/server/wm/you/bio$sis;

    invoke-interface {p0, p1}, Lcom/android/server/wm/you/bio$sis;->getSystemDirectoryForUser(I)Ljava/io/File;

    move-result-object p0

    const-string p1, "appsnapshots"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic sis(Lcom/android/server/wm/you/bio;I)Ljava/io/File;
    .locals 0

    invoke-direct {p0, p1}, getDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/you/bio;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, mWriteQueue:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/wm/you/bio;)Ljava/util/ArrayDeque;
    .locals 0

    iget-object p0, p0, mStoreQueueItems:Ljava/util/ArrayDeque;

    return-object p0
.end method

.method private veq(ILjava/lang/String;)V
    .locals 3

    const-string v0, ",userId =: "

    :try_start_0
    invoke-virtual {p0, p1, p2}, igw(ILjava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteSnapshot surcess packageName =: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteSnapshot fail packageName =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",error =: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->sa(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/you/bio;)Z
    .locals 0

    iget-boolean p0, p0, mPaused:Z

    return p0
.end method

.method static synthetic you(Lcom/android/server/wm/you/bio;I)Z
    .locals 0

    invoke-direct {p0, p1}, createDirectory(I)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/you/bio;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, mLock:Ljava/lang/Object;

    return-object p0
.end method

.method private zta(Lcom/android/server/wm/you/bio$rtg;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, mWriteQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/android/server/wm/you/bio$rtg;->onQueuedLocked()V

    invoke-direct {p0}, ensureStoreQueueDepthLocked()V

    iget-boolean p1, p0, mPaused:Z

    if-nez p1, :cond_0

    iget-object p0, p0, mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/you/bio;I)V
    .locals 0

    invoke-direct {p0, p1}, Kc(I)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/you/bio;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, veq(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/you/bio;Z)Z
    .locals 0

    iput-boolean p1, p0, mQueueIdling:Z

    return p1
.end method


# virtual methods
.method public clearCache(I)V
    .locals 2

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/you/bio$zta;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/you/bio$zta;-><init>(Lcom/android/server/wm/you/bio;I)V

    invoke-direct {p0, v1}, zta(Lcom/android/server/wm/you/bio$rtg;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method igw(ILjava/lang/String;)Ljava/io/File;
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, getDirectory(I)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method setPaused(Z)V
    .locals 1

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, mPaused:Z

    if-nez p1, :cond_0

    iget-object p0, p0, mLock:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 1

    iget-boolean v0, p0, mStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, mStarted:Z

    iget-object p0, p0, mPersister:Ljava/lang/Thread;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public wtn(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/you/bio$you;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/you/bio$you;-><init>(Lcom/android/server/wm/you/bio;ILjava/lang/String;)V

    invoke-direct {p0, v1}, zta(Lcom/android/server/wm/you/bio$rtg;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public zta(Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/wm/you/bio$tsu;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/wm/you/bio$tsu;-><init>(Lcom/android/server/wm/you/bio;Ljava/lang/String;ILandroid/graphics/Bitmap;)V

    invoke-direct {p0, v1}, zta(Lcom/android/server/wm/you/bio$rtg;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
