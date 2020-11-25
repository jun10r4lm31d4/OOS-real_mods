.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$SongQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "SongQuery"
.end annotation


# static fields
.field public static final DATE_MODIFIED:I = 0x4

.field public static final MIME_TYPE:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SIZE:I = 0x3

.field public static final TITLE:I = 0x1

.field public static final _ID:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "_id"

    const-string v1, "title"

    const-string v2, "mime_type"

    const-string v3, "_size"

    const-string v4, "date_modified"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, PROJECTION:[Ljava/lang/String;

    return-void
.end method
