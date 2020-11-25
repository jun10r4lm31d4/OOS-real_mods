.class Lcom/android/providers/media/MediaProvider$2;
.super Ljava/lang/Object;
.source "MediaProvider.java"

# interfaces
.implements Landroid/database/sqlite/SQLiteDatabase$CustomFunction;


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
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback([Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {p1}, Lcom/android/providers/media/MediaProvider;->access$000(Lcom/android/providers/media/MediaProvider;)Landroid/util/ArrayMap;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, this$0:Lcom/android/providers/media/MediaProvider;

    invoke-static {p0}, Lcom/android/providers/media/MediaProvider;->access$000(Lcom/android/providers/media/MediaProvider;)Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
