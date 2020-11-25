.class Lcom/android/server/wm/you/bio$tsu;
.super Lcom/android/server/wm/you/bio$rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mSnapshot:Landroid/graphics/Bitmap;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/you/bio;


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/bio;Ljava/lang/String;ILandroid/graphics/Bitmap;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/bio;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/you/bio$rtg;-><init>(Lcom/android/server/wm/you/bio;Lcom/android/server/wm/you/kth;)V

    iput-object p2, p0, mPackageName:Ljava/lang/String;

    iput p3, p0, mUserId:I

    iput-object p4, p0, mSnapshot:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic zta(Lcom/android/server/wm/you/bio$tsu;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mPackageName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method onDequeuedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v0}, Lcom/android/server/wm/you/bio;->tsu(Lcom/android/server/wm/you/bio;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method onQueuedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-static {v0}, Lcom/android/server/wm/you/bio;->tsu(Lcom/android/server/wm/you/bio;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method write()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    iget v1, p0, mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/you/bio;->you(Lcom/android/server/wm/you/bio;I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to create snapshot directory for user dir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, this$0:Lcom/android/server/wm/you/bio;

    iget v2, p0, mUserId:I

    invoke-static {v1, v2}, Lcom/android/server/wm/you/bio;->sis(Lcom/android/server/wm/you/bio;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, writeBuffer()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    iget v1, p0, mUserId:I

    iget-object p0, p0, mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method writeBuffer()Z
    .locals 5

    iget-object v0, p0, mSnapshot:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "Invalid snapshot bitmap"

    :goto_0
    invoke-static {p0}, Lcom/android/server/wm/you/wtn;->sa(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    iget v2, p0, mUserId:I

    iget-object v3, p0, mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/you/bio;->igw(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeBuffer bitmapFile =: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object p0, p0, mSnapshot:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5f

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for persisting.\ne =:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method
