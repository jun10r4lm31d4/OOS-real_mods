.class Lcom/android/server/am/OomAdjuster$1;
.super Ljava/lang/Thread;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OomAdjuster;->updataKernelTopUid(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OomAdjuster;

.field final synthetic val$app:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OomAdjuster;

    iput-object p3, p0, val$app:Lcom/android/server/am/ProcessRecord;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Foreground_io"

    const-string v1, "Setting fg uid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, val$app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/proc/fg_info/fg_uids"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v1, v4

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v2, v4

    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    goto :goto_0

    :catch_0
    move-exception v4

    :goto_0
    const-string v4, "Done"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
