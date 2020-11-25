.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaProvider$evXZwAfeF8nIkqIWHvxFCHvX8gg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/MediaProvider;

.field private final synthetic f$1:Landroid/net/Uri;

.field private final synthetic f$2:I

.field private final synthetic f$3:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;ILjava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/MediaProvider;

    iput-object p2, p0, f$1:Landroid/net/Uri;

    iput p3, p0, f$2:I

    iput-object p4, p0, f$3:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 3

    iget-object v0, p0, f$0:Lcom/android/providers/media/MediaProvider;

    iget-object v1, p0, f$1:Landroid/net/Uri;

    iget v2, p0, f$2:I

    iget-object p0, p0, f$3:Ljava/io/File;

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/providers/media/MediaProvider;->lambda$openFileAndEnforcePathPermissionsHelper$8$MediaProvider(Landroid/net/Uri;ILjava/io/File;Ljava/io/IOException;)V

    return-void
.end method
