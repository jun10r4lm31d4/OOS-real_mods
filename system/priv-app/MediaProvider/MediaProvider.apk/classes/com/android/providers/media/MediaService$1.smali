.class Lcom/android/providers/media/MediaService$1;
.super Ljava/lang/Object;
.source "MediaService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaService;->onScanVolume(Landroid/content/Context;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    const/16 v1, 0x3e7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/media/MediaProviderRingtoneUtils;->checkRingtones(Landroid/content/Context;)V

    iget-object v0, p0, val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/providers/media/MediaProviderUtils;->confirmFoldersNoMedia(Landroid/content/Context;)V

    iget-object p0, p0, val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/providers/media/MediaProviderRingtoneUtils;->updateVibratorSceneIds(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "MediaProvider"

    const-string v1, "mScannerReceiver error."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
