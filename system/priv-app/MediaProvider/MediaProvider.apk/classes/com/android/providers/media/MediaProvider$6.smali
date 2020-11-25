.class Lcom/android/providers/media/MediaProvider$6;
.super Lcom/android/providers/media/MediaProvider$Thumbnailer;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0, p2}, Lcom/android/providers/media/MediaProvider$Thumbnailer;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getThumbnailBitmap(Landroid/net/Uri;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0, p1, p2}, Lcom/android/providers/media/MediaProvider;->queryForDataFile(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p1

    iget-object p0, p0, this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->access$700(Lcom/android/providers/media/MediaProvider;)Landroid/util/Size;

    move-result-object p0

    invoke-static {p1, p0, p2}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/io/File;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
