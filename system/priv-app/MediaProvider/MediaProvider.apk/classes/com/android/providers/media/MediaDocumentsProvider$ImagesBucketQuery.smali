.class interface abstract Lcom/android/providers/media/MediaDocumentsProvider$ImagesBucketQuery;
.super Ljava/lang/Object;
.source "MediaDocumentsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaDocumentsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ImagesBucketQuery"
.end annotation


# static fields
.field public static final BUCKET_DISPLAY_NAME:I = 0x1

.field public static final BUCKET_ID:I = 0x0

.field public static final DATE_MODIFIED:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final SORT_ORDER:Ljava/lang/String; = "bucket_id, date_modified DESC"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "bucket_id"

    const-string v1, "bucket_display_name"

    const-string v2, "date_modified"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, PROJECTION:[Ljava/lang/String;

    return-void
.end method
