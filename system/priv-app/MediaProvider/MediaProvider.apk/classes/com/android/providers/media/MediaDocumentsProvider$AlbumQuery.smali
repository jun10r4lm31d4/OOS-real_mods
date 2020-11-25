.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$AlbumQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "AlbumQuery"
.end annotation


# static fields
.field public static final ALBUM:I = 0x1

.field public static final ALBUM_ID:I

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "album_id"

    const-string v1, "album"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, PROJECTION:[Ljava/lang/String;

    return-void
.end method
