.class public Lcom/android/providers/media/scan/ModernMediaScanner;
.super Ljava/lang/Object;
.source "ModernMediaScanner.java"

# interfaces
.implements Lcom/android/providers/media/scan/MediaScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/scan/ModernMediaScanner$Scan;
    }
.end annotation


# static fields
.field private static final BATCH_SIZE:I = 0x20

.field private static final LOGD:Z

.field private static final LOGV:Z

.field private static final LOGW:Z

.field private static final PATTERN_INVISIBLE:Ljava/util/regex/Pattern;

.field private static final PATTERN_VISIBLE:Ljava/util/regex/Pattern;

.field private static final TAG:Ljava/lang/String; = "ModernMediaScanner"

.field private static sAudioTypes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDateFormat:Ljava/text/SimpleDateFormat;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSignals:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSignals"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/os/CancellationSignal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "ModernMediaScanner"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/providers/media/MediaProviderUtils;->DBG:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    sput-boolean v1, LOGW:Z

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/providers/media/MediaProviderUtils;->DBG:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v3

    :goto_3
    sput-boolean v1, LOGD:Z

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/providers/media/MediaProviderUtils;->DBG_LOGV:Z

    if-eqz v0, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    sput-boolean v2, LOGV:Z

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, sDateFormat:Ljava/text/SimpleDateFormat;

    sget-object v0, sDateFormat:Ljava/text/SimpleDateFormat;

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-string v0, "(?i)^/storage/[^/]+(?:/[0-9]+)?(?:/Android/sandbox/([^/]+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, PATTERN_VISIBLE:Ljava/util/regex/Pattern;

    const-string v0, "(?i)^/storage/[^/]+(?:/[0-9]+)?(?:/Android/sandbox/([^/]+))?/Android/(?:data|obb)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, PATTERN_INVISIBLE:Ljava/util/regex/Pattern;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const-string v2, "is_ringtone"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const-string v2, "is_notification"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const-string v2, "is_alarm"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    const-string v2, "is_podcast"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_AUDIOBOOKS:Ljava/lang/String;

    const-string v2, "is_audiobook"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sAudioTypes:Landroid/util/ArrayMap;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const-string v2, "is_music"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mSignals:Landroid/util/ArrayMap;

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, LOGD:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/providers/media/scan/ModernMediaScanner;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/providers/media/scan/ModernMediaScanner;Ljava/lang/String;)Landroid/os/CancellationSignal;
    .locals 0

    invoke-direct {p0, p1}, getOrCreateSignal(Ljava/lang/String;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, LOGV:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, LOGW:Z

    return v0
.end method

.method static synthetic access$600(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, scanItem(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0
.end method

.method static escapeForLike(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    const/16 v4, 0x5c

    if-eq v2, v3, :cond_0

    const/16 v3, 0x5f

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static extractExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static extractName(Ljava/io/File;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getOrCreateSignal(Ljava/lang/String;)Landroid/os/CancellationSignal;
    .locals 2

    iget-object v0, p0, mSignals:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mSignals:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/CancellationSignal;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iget-object p0, p0, mSignals:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static isDirectoryHidden(Ljava/io/File;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, PATTERN_VISIBLE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v2

    :cond_0
    sget-object v1, PATTERN_INVISIBLE:Ljava/util/regex/Pattern;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/media/MediaProviderUtils;->isProtectedMediaPathWithConfig(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return v2

    :cond_3
    return v3

    :cond_4
    return v2
.end method

.method static isDirectoryHiddenRecursive(Ljava/io/File;)Z
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "isDirectoryHiddenRecursive"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :goto_0
    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {p0}, isDirectoryHidden(Ljava/io/File;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1
.end method

.method static isPlaylist(Landroid/net/Uri;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "playlists"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static lastModifiedTime(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;)J
    .locals 2

    invoke-static {}, Landroid/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    const-wide/16 v0, 0x3e8

    if-eqz p0, :cond_0

    invoke-interface {p1}, Ljava/nio/file/attribute/BasicFileAttributes;->lastModifiedTime()Ljava/nio/file/attribute/FileTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/file/attribute/FileTime;->toMillis()J

    move-result-wide p0

    div-long/2addr p0, v0

    return-wide p0

    :cond_0
    sget-wide p0, Landroid/os/Build;->TIME:J

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static maybeOverrideMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    return-object p0
.end method

.method private static newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;
    .locals 2

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentProviderOperation$Builder;->withFailureAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentProviderOperation$Builder;->withExpectedCount(I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentProviderOperation$Builder;->withFailureAllowed(Z)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    return-object p0
.end method

.method private static parseOptional(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_3

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static parseOptionalDate(Ljava/lang/String;)Ljava/util/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    :try_start_0
    sget-object v0, sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p0

    :catch_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static parseOptionalDateTaken(Landroid/media/ExifInterface;J)Ljava/util/Optional;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/ExifInterface;",
            "J)",
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/media/ExifInterface;->getDateTimeOriginal()J

    move-result-wide v0

    const-string v2, "OffsetTimeOriginal"

    invoke-virtual {p0, v2}, Landroid/media/ExifInterface;->hasAttribute(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    const-wide/32 v6, 0xdbba0

    const v8, 0x495bba00    # 900000.0f

    const-wide/32 v9, 0x5265c00

    if-lez p0, :cond_1

    sub-long/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    cmp-long p0, v11, v9

    if-gez p0, :cond_1

    long-to-float p0, v2

    div-float/2addr p0, v8

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v6

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    cmp-long p0, p1, v4

    if-lez p0, :cond_2

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long p0, v2, v9

    if-gez p0, :cond_2

    long-to-float p0, p1

    div-float/2addr p0, v8

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    int-to-long p0, p0

    mul-long/2addr p0, v6

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static parseOptionalOrZero(Ljava/lang/Object;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, Ljava/lang/Number;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static parseOptionalOrientation(I)Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    const/16 p0, 0x10e

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 p0, 0x5a

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0xb4

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static parseOptionalResolution(Landroid/media/MediaMetadataRetriever;)Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaMetadataRetriever;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\u00d7"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static scanItem(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 9

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "ModernMediaScanner"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    sget-boolean p0, LOGD:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Ignoring hidden file: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v2

    :cond_1
    :try_start_0
    invoke-interface {p3}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v7, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    :goto_0
    invoke-interface {p3}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_3

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, scanItemDirectory(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-static {v7}, Landroid/media/MediaFile;->isPlayListMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, scanItemPlaylist(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {v7}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, scanItemAudio(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-static {v7}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, scanItemVideo(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_6
    invoke-static {v7}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, scanItemImage(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :cond_7
    move-wide v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-static/range {v3 .. v8}, scanItemFile(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-boolean p1, LOGW:Z

    if-eqz p1, :cond_8

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring troubled file: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    return-object v2
.end method

.method private static scanItemAudio(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-static/range {p5 .. p5}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-wide/from16 v3, p0

    invoke-static {v2, v3, v4}, newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    move-object/from16 v3, p3

    invoke-static {v2, v0, v3, v1}, withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V

    const-string v3, "artist"

    const-string v4, "<unknown>"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v4, "album_artist"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v6, "compilation"

    invoke-virtual {v2, v6, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v7, "composer"

    invoke-virtual {v2, v7, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "album"

    invoke-virtual {v2, v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v8, "track"

    invoke-virtual {v2, v8, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v10, "year"

    invoke-virtual {v2, v10, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v11, "genre"

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    sget-object v13, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v13}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_0
    sget-object v16, sAudioTypes:Landroid/util/ArrayMap;

    invoke-virtual/range {v16 .. v16}, Landroid/util/ArrayMap;->size()I

    move-result v5

    if-ge v14, v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v13, 0x2f

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v13, sAudioTypes:Landroid/util/ArrayMap;

    invoke-virtual {v13, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    sget-object v5, sAudioTypes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v5, v13}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    or-int/2addr v15, v1

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, p4

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-nez v15, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v12, "is_music"

    invoke-virtual {v2, v12, v5}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_1
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v12, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v12}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const-string v0, "title"

    const/4 v13, 0x7

    invoke-virtual {v12, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v2, v0, v13}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "is_drm"

    const/16 v13, 0x16

    invoke-virtual {v12, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v2, v0, v13}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v0, "duration"

    const/16 v13, 0x9

    invoke-virtual {v12, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v13

    invoke-static {v2, v0, v13}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/4 v0, 0x2

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v3, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/16 v0, 0xd

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v4, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/16 v0, 0xf

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v6, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/4 v0, 0x4

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v7, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-virtual {v12, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v9, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v8, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/16 v0, 0x8

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptionalOrZero(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v10, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/4 v0, 0x6

    invoke-virtual {v12, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    invoke-static {v2, v11, v0}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0, v12}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/media/util/IsoInterface;->fromFileDescriptor(Ljava/io/FileDescriptor;)Lcom/android/providers/media/util/IsoInterface;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/media/util/XmpInterface;->fromContainer(Lcom/android/providers/media/util/IsoInterface;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object v1

    move-object/from16 v3, p4

    invoke-static {v2, v1, v3}, withXmpValues(Landroid/content/ContentProviderOperation$Builder;Lcom/android/providers/media/util/XmpInterface;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v2, v0

    :try_start_6
    invoke-static {v1, v12}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_7
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    :try_start_8
    invoke-static {v1, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static scanItemDirectory(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p0, p1}, newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p2, p3, p4}, withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V

    const-string p1, "media_type"

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p1, "format"

    const/16 p2, 0x3001

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p1, "mime_type"

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static scanItemFile(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p0, p1}, newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p2, p3, p4}, withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static scanItemImage(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p0, p1}, newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string p5, "description"

    invoke-virtual {p0, p5, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/media/ExifInterface;

    invoke-direct {v1, v0}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string v2, "width"

    const-string v3, "ImageWidth"

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, parseOptionalOrZero(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {p0, v2, v3}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "height"

    const-string v3, "ImageLength"

    invoke-virtual {v1, v3}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, parseOptionalOrZero(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    invoke-static {p0, v2, v3}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v2, "datetaken"

    invoke-static {p2, p3}, lastModifiedTime(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;)J

    move-result-wide p2

    const-wide/16 v3, 0x3e8

    mul-long/2addr p2, v3

    invoke-static {v1, p2, p3}, parseOptionalDateTaken(Landroid/media/ExifInterface;J)Ljava/util/Optional;

    move-result-object p2

    invoke-static {p0, v2, p2}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string p2, "orientation"

    const-string p3, "Orientation"

    const/4 v2, 0x0

    invoke-virtual {v1, p3, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p3

    invoke-static {p3}, parseOptionalOrientation(I)Ljava/util/Optional;

    move-result-object p3

    invoke-static {p0, p2, p3}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string p2, "ImageDescription"

    invoke-virtual {v1, p2}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    invoke-static {p0, p5, p2}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-static {v1}, Lcom/android/providers/media/util/XmpInterface;->fromContainer(Landroid/media/ExifInterface;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object p2

    invoke-static {p0, p2, p4}, withXmpValues(Landroid/content/ContentProviderOperation$Builder;Lcom/android/providers/media/util/XmpInterface;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p1, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {p0, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static scanItemPlaylist(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p0, p1}, newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    :try_start_0
    invoke-static {p0, p2, p3, p4}, withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V

    const-string p1, "name"

    invoke-static {p2}, extractName(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static scanItemVideo(JLjava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContentProviderOperation;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p5}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p5

    invoke-static {p5, p0, p1}, newUpsert(Landroid/net/Uri;J)Landroid/content/ContentProviderOperation$Builder;

    move-result-object p0

    invoke-static {p0, p2, p3, p4}, withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V

    const-string p1, "artist"

    const-string p3, "<unknown>"

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p3

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p3

    const-string p5, "album"

    invoke-virtual {p0, p5, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p3, "resolution"

    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v1, "color_standard"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v2, "color_transfer"

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string v3, "color_range"

    invoke-virtual {p0, v3, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    const-string v5, "title"

    const/4 v6, 0x7

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p0, v5, v6}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v5, "is_drm"

    const/16 v6, 0x16

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p0, v5, v6}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v5, "width"

    const/16 v6, 0x12

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p0, v5, v6}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v5, "height"

    const/16 v6, 0x13

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p0, v5, v6}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v5, "duration"

    const/16 v6, 0x9

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p0, v5, v6}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const-string v5, "datetaken"

    const/4 v6, 0x5

    invoke-virtual {p2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, parseOptionalDate(Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v6

    invoke-static {p0, v5, v6}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/4 v5, 0x2

    invoke-virtual {p2, v5}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    invoke-static {p0, p1, v5}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, p5, p1}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    invoke-static {p2}, parseOptionalResolution(Landroid/media/MediaMetadataRetriever;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, p3, p1}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/16 p1, 0x23

    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, v1, p1}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/16 p1, 0x24

    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, v2, p1}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V

    const/16 p1, 0x25

    invoke-virtual {p2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, parseOptional(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    invoke-static {p0, v3, p1}, withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-static {v0, p2}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/media/util/IsoInterface;->fromFileDescriptor(Ljava/io/FileDescriptor;)Lcom/android/providers/media/util/IsoInterface;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/media/util/XmpInterface;->fromContainer(Lcom/android/providers/media/util/IsoInterface;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object p1

    invoke-static {p0, p1, p4}, withXmpValues(Landroid/content/ContentProviderOperation$Builder;Lcom/android/providers/media/util/XmpInterface;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-static {v0, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    invoke-virtual {p0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_6
    invoke-static {p0, p2}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    :try_start_8
    invoke-static {p0, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static withGenericValues(Landroid/content/ContentProviderOperation$Builder;Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->size()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "_size"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-static {p1}, extractName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-static {p1, p2}, lastModifiedTime(Ljava/io/File;Ljava/nio/file/attribute/BasicFileAttributes;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "date_modified"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p1, "mime_type"

    invoke-virtual {p0, p1, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "is_drm"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const/4 p1, 0x0

    const-string p2, "width"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "height"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "document_id"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "instance_id"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "original_document_id"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "duration"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    const-string p2, "orientation"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    return-void
.end method

.method private static withOptionalValue(Landroid/content/ContentProviderOperation$Builder;Ljava/lang/String;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentProviderOperation$Builder;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "*>;)V"
        }
    .end annotation

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    :cond_0
    return-void
.end method

.method private static withXmpValues(Landroid/content/ContentProviderOperation$Builder;Lcom/android/providers/media/util/XmpInterface;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/providers/media/util/XmpInterface;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, maybeOverrideMimeType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "mime_type"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p1}, Lcom/android/providers/media/util/XmpInterface;->getDocumentId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "document_id"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p1}, Lcom/android/providers/media/util/XmpInterface;->getInstanceId()Ljava/lang/String;

    move-result-object p2

    const-string v0, "instance_id"

    invoke-virtual {p0, v0, p2}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    invoke-virtual {p1}, Lcom/android/providers/media/util/XmpInterface;->getOriginalDocumentId()Ljava/lang/String;

    move-result-object p1

    const-string p2, "original_document_id"

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, mContext:Landroid/content/Context;

    return-object p0
.end method

.method public onDetachVolume(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, mSignals:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, mSignals:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/CancellationSignal;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public scanDirectory(Ljava/io/File;)V
    .locals 1

    :try_start_0
    new-instance v0, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;

    invoke-direct {v0, p0, p1}, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;-><init>(Lcom/android/providers/media/scan/ModernMediaScanner;Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {p0, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {p0, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public scanFile(Ljava/io/File;)Landroid/net/Uri;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;

    invoke-direct {v1, p0, p1}, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;-><init>(Lcom/android/providers/media/scan/ModernMediaScanner;Ljava/io/File;)V
    :try_end_0
    .catch Landroid/os/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;->run()V

    invoke-static {v1}, Lcom/android/providers/media/scan/ModernMediaScanner$Scan;->access$000(Lcom/android/providers/media/scan/ModernMediaScanner$Scan;)Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw p1
    :try_end_4
    .catch Landroid/os/OperationCanceledException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-boolean p1, LOGD:Z

    if-eqz p1, :cond_0

    const-string p1, "ModernMediaScanner"

    const-string v1, "scanFile ignored"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object v0
.end method
