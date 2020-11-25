.class Lcom/android/providers/media/RingtoneOverlayService$1;
.super Ljava/lang/Object;
.source "RingtoneOverlayService.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/RingtoneOverlayService;->scanFile(Ljava/io/File;)Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/RingtoneOverlayService;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$queue:Ljava/util/concurrent/SynchronousQueue;


# direct methods
.method constructor <init>(Lcom/android/providers/media/RingtoneOverlayService;Ljava/io/File;Ljava/util/concurrent/SynchronousQueue;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/RingtoneOverlayService;

    iput-object p2, p0, val$file:Ljava/io/File;

    iput-object p3, p0, val$queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p0, p0, val$file:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, val$queue:Ljava/util/concurrent/SynchronousQueue;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/SynchronousQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RingtoneOverlayService"

    const-string p2, "Unable to put new Uri in queue"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
