.class public Lcom/android/providers/media/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/MediaProvider$VolumeArgumentException;,
        Lcom/android/providers/media/MediaProvider$VolumeNotFoundException;,
        Lcom/android/providers/media/MediaProvider$FallbackException;,
        Lcom/android/providers/media/MediaProvider$RedactionInfo;,
        Lcom/android/providers/media/MediaProvider$Thumbnailer;,
        Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUDIO_ALBUMART:I = 0x77

.field private static final AUDIO_ALBUMART_FILE_ID:I = 0x79

.field private static final AUDIO_ALBUMART_ID:I = 0x78

.field private static final AUDIO_ALBUMS:I = 0x74

.field private static final AUDIO_ALBUMS_ID:I = 0x75

.field private static final AUDIO_ARTISTS:I = 0x72

.field private static final AUDIO_ARTISTS_ID:I = 0x73

.field private static final AUDIO_ARTISTS_ID_ALBUMS:I = 0x76

.field private static final AUDIO_GENRES:I = 0x6a

.field private static final AUDIO_GENRES_ALL_MEMBERS:I = 0x6d

.field private static final AUDIO_GENRES_ID:I = 0x6b

.field private static final AUDIO_GENRES_ID_MEMBERS:I = 0x6c

.field private static final AUDIO_MEDIA:I = 0x64

.field private static final AUDIO_MEDIA_ID:I = 0x65

.field private static final AUDIO_MEDIA_ID_GENRES:I = 0x66

.field private static final AUDIO_MEDIA_ID_GENRES_ID:I = 0x67

.field private static final AUDIO_MEDIA_ID_PLAYLISTS:I = 0x68

.field private static final AUDIO_MEDIA_ID_PLAYLISTS_ID:I = 0x69

.field private static final AUDIO_PLAYLISTS:I = 0x6e

.field private static final AUDIO_PLAYLISTS_ID:I = 0x6f

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS:I = 0x70

.field private static final AUDIO_PLAYLISTS_ID_MEMBERS_ID:I = 0x71

.field private static final CANONICAL:Ljava/lang/String; = "canonical"

.field static final DBG:Z

.field private static final DOWNLOADS:I = 0x320

.field private static final DOWNLOADS_ID:I = 0x321

.field private static final EMULATED_PATH:Ljava/lang/String; = "/storage/emulated/"

.field public static final ENABLE_MODERN_SCANNER:Z

.field private static final EXTERNAL_DATABASE_NAME:Ljava/lang/String; = "external.db"

.field private static final FILES:I = 0x2bc

.field private static final FILES_DIRECTORY:I = 0x2c2

.field private static final FILES_ID:I = 0x2bd

.field private static final FS_ID:I = 0x258

.field private static final GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

.field private static final HIDDEN_URI_MATCHER:Landroid/content/UriMatcher;

.field private static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field private static final ID_NOT_PARENT_CLAUSE:Ljava/lang/String; = "_id NOT IN (SELECT parent FROM files)"

.field private static final IMAGES_MEDIA:I = 0x1

.field private static final IMAGES_MEDIA_ID:I = 0x2

.field private static final IMAGES_MEDIA_ID_THUMBNAIL:I = 0x3

.field private static final IMAGES_THUMBNAILS:I = 0x4

.field private static final IMAGES_THUMBNAILS_ID:I = 0x5

.field private static final INTERNAL_DATABASE_NAME:Ljava/lang/String; = "internal.db"

.field static final LOCAL_LOGV:Z

.field private static final MAX_EXTERNAL_DATABASES:I = 0x3

.field private static final MEDIA_SCANNER:I = 0x1f4

.field private static final MTP_OBJECTS:I = 0x2be

.field private static final MTP_OBJECTS_ID:I = 0x2bf

.field private static final MTP_OBJECT_REFERENCES:I = 0x2c0

.field private static final OBJECT_REFERENCES_QUERY:Ljava/lang/String; = "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

.field private static final OBSOLETE_DATABASE_DB:J = 0x134fd9000L

.field private static final OP_DEBUG:I = 0xd348

.field private static final PATH_PROJECTION:[Ljava/lang/String;

.field private static final PATTERN_ANDROID_PATH:Ljava/util/regex/Pattern;

.field private static final PATTERN_OWNED_PATH:Ljava/util/regex/Pattern;

.field private static final PATTERN_RELATIVE_PATH:Ljava/util/regex/Pattern;

.field private static final PATTERN_SELECTION_ID:Ljava/util/regex/Pattern;

.field private static final PATTERN_STORAGE_PATH:Ljava/util/regex/Pattern;

.field private static final PATTERN_VOLUME_NAME:Ljava/util/regex/Pattern;

.field private static final PUBLIC_URI_MATCHER:Landroid/content/UriMatcher;

.field private static final REDACTED_EXIF_TAGS:[Ljava/lang/String;

.field private static final REDACTED_ISO_BOXES:[I

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field static final TAG:Ljava/lang/String; = "MediaProvider"

.field private static final TYPE_DELETE:I = 0x2

.field private static final TYPE_QUERY:I = 0x0

.field private static final TYPE_UPDATE:I = 0x1

.field private static final VERSION:I = 0x259

.field static final VERSION_J:I = 0x1fd

.field static final VERSION_K:I = 0x2bc

.field static final VERSION_L:I = 0x2bc

.field static final VERSION_M:I = 0x320

.field static final VERSION_N:I = 0x320

.field static final VERSION_O:I = 0x320

.field static final VERSION_P:I = 0x384

.field static final VERSION_Q:I = 0x3ff

.field private static final VIDEO_MEDIA:I = 0xc8

.field private static final VIDEO_MEDIA_ID:I = 0xc9

.field private static final VIDEO_MEDIA_ID_THUMBNAIL:I = 0xca

.field private static final VIDEO_THUMBNAILS:I = 0xcb

.field private static final VIDEO_THUMBNAILS_ID:I = 0xcc

.field private static final VOLUMES:I = 0x12c

.field private static final VOLUMES_ID:I = 0x12d

.field private static final XATTR_UUID:Ljava/lang/String; = "user.uuid"

.field private static volatile sBackgroundDelay:J

.field private static final sCacheLock:Ljava/lang/Object;

.field private static final sCachedExternalVolumeNames:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sCachedVolumeScanPaths:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCachedVolumes:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sCacheLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDataColumns:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final sDataOnlyColumn:[Ljava/lang/String;

.field private static final sDefaultFolderNames:[Ljava/lang/String;

.field static final sGreylist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field

.field private static final sIdDataColumn:[Ljava/lang/String;

.field private static final sIdOnlyColumn:[Ljava/lang/String;

.field private static final sMediaTableColumns:[Ljava/lang/String;

.field private static final sMutableColumns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPlacementColumns:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPlaylistIdPlayOrder:[Ljava/lang/String;

.field private static final sProjectionMapCache:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sProjectionMapCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mActiveListener:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAttachedVolumeNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mAttachedVolumeNames"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

.field private final mCachedCallingIdentity:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCachedCallingIdentity"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/providers/media/LocalCallingIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final mCallingIdentity:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/android/providers/media/LocalCallingIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private final mDirectoryCache:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mDirectoryCache"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field private mImageThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

.field private mInternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field private mMediaReceiver:Landroid/content/BroadcastReceiver;

.field private mMediaScannerVolume:Ljava/lang/String;

.field private final mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mRedactingCounts:I

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mThumbSize:Landroid/util/Size;

.field private mVideoThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

.field private mVolumeId:I


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
    .locals 41

    const/4 v0, 0x1

    const-string v1, "persist.sys.modern_scanner"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, ENABLE_MODERN_SCANNER:Z

    const-string v1, "(?i)^/storage/[^/]+/(?:[0-9]+/)?Android/(?:data|media|obb|sandbox)/([^/]+)/.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, PATTERN_OWNED_PATH:Ljava/util/regex/Pattern;

    const-string v1, "(?i)^/storage/[^/]+/(?:[0-9]+/)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, PATTERN_STORAGE_PATH:Ljava/util/regex/Pattern;

    const-string v1, "(?i)^/storage/[^/]+/(?:[0-9]+/)?(Android/sandbox/([^/]+)/)?"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, PATTERN_RELATIVE_PATH:Ljava/util/regex/Pattern;

    const-string v1, "(?i)^/storage/([^/]+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, PATTERN_VOLUME_NAME:Ljava/util/regex/Pattern;

    const-string v1, "(?:image_id|video_id)\\s*=\\s*(\\d+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, PATTERN_SELECTION_ID:Ljava/util/regex/Pattern;

    const-string v1, "(?i)^/storage/[^/]+/(?:[0-9]+/)?Android/([^/]+)/.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, PATTERN_ANDROID_PATH:Ljava/util/regex/Pattern;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, sDataColumns:Landroid/util/ArrayMap;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, sCacheLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, sCachedVolumes:Ljava/util/List;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    sput-object v1, sCachedExternalVolumeNames:Ljava/util/Set;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sput-object v1, sCachedVolumeScanPaths:Ljava/util/Map;

    const-wide/16 v1, 0x0

    sput-wide v1, sBackgroundDelay:J

    const-string v1, "_id"

    const-string v2, "media_type"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, sMediaTableColumns:[Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    sput-object v2, sIdOnlyColumn:[Ljava/lang/String;

    const-string v2, "_data"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, sDataOnlyColumn:[Ljava/lang/String;

    const-string v3, "playlist_id"

    const-string v4, "play_order"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, sPlaylistIdPlayOrder:[Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, sIdDataColumn:[Ljava/lang/String;

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v4, v3, v0

    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    const/4 v7, 0x3

    aput-object v4, v3, v7

    sget-object v4, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    const/4 v8, 0x4

    aput-object v4, v3, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    const/4 v9, 0x5

    aput-object v4, v3, v9

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    const/4 v10, 0x6

    aput-object v4, v3, v10

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/4 v10, 0x7

    aput-object v4, v3, v10

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    const/16 v10, 0x8

    aput-object v4, v3, v10

    sput-object v3, sDefaultFolderNames:[Ljava/lang/String;

    const-string v3, "name"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v10, "GPSAltitude"

    const-string v11, "GPSAltitudeRef"

    const-string v12, "GPSAreaInformation"

    const-string v13, "GPSDOP"

    const-string v14, "GPSDateStamp"

    const-string v15, "GPSDestBearing"

    const-string v16, "GPSDestBearingRef"

    const-string v17, "GPSDestDistance"

    const-string v18, "GPSDestDistanceRef"

    const-string v19, "GPSDestLatitude"

    const-string v20, "GPSDestLatitudeRef"

    const-string v21, "GPSDestLongitude"

    const-string v22, "GPSDestLongitudeRef"

    const-string v23, "GPSDifferential"

    const-string v24, "GPSImgDirection"

    const-string v25, "GPSImgDirectionRef"

    const-string v26, "GPSLatitude"

    const-string v27, "GPSLatitudeRef"

    const-string v28, "GPSLongitude"

    const-string v29, "GPSLongitudeRef"

    const-string v30, "GPSMapDatum"

    const-string v31, "GPSMeasureMode"

    const-string v32, "GPSProcessingMethod"

    const-string v33, "GPSSatellites"

    const-string v34, "GPSSpeed"

    const-string v35, "GPSSpeedRef"

    const-string v36, "GPSStatus"

    const-string v37, "GPSTimeStamp"

    const-string v38, "GPSTrack"

    const-string v39, "GPSTrackRef"

    const-string v40, "GPSVersionID"

    filled-new-array/range {v10 .. v40}, [Ljava/lang/String;

    move-result-object v3

    sput-object v3, REDACTED_EXIF_TAGS:[Ljava/lang/String;

    new-array v3, v8, [I

    fill-array-data v3, :array_0

    sput-object v3, REDACTED_ISO_BOXES:[I

    const-string v3, "MediaProvider"

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "persist.debug.mp.all"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v5, v0

    :cond_1
    sput-boolean v5, LOCAL_LOGV:Z

    sget-boolean v3, LOCAL_LOGV:Z

    const-string v4, "persist.sys.assert.panic"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, DBG:Z

    new-instance v3, Landroid/content/UriMatcher;

    const/4 v4, -0x1

    invoke-direct {v3, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v3, HIDDEN_URI_MATCHER:Landroid/content/UriMatcher;

    new-instance v3, Landroid/content/UriMatcher;

    invoke-direct {v3, v4}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v3, PUBLIC_URI_MATCHER:Landroid/content/UriMatcher;

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, PATH_PROJECTION:[Ljava/lang/String;

    sget-object v1, PUBLIC_URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v2, HIDDEN_URI_MATCHER:Landroid/content/UriMatcher;

    const-string v3, "media"

    const-string v4, "*/images/media"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "*/images/media/#"

    invoke-virtual {v1, v3, v0, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "*/images/media/#/thumbnail"

    invoke-virtual {v1, v3, v0, v7}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "*/images/thumbnails"

    invoke-virtual {v1, v3, v0, v8}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const-string v0, "*/images/thumbnails/#"

    invoke-virtual {v1, v3, v0, v9}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x64

    const-string v4, "*/audio/media"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x65

    const-string v4, "*/audio/media/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x66

    const-string v4, "*/audio/media/#/genres"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x67

    const-string v4, "*/audio/media/#/genres/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x68

    const-string v4, "*/audio/media/#/playlists"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x69

    const-string v4, "*/audio/media/#/playlists/#"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x6a

    const-string v4, "*/audio/genres"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x6b

    const-string v4, "*/audio/genres/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x6c

    const-string v4, "*/audio/genres/#/members"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x6d

    const-string v4, "*/audio/genres/all/members"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x6e

    const-string v4, "*/audio/playlists"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x6f

    const-string v4, "*/audio/playlists/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x70

    const-string v4, "*/audio/playlists/#/members"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x71

    const-string v4, "*/audio/playlists/#/members/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x72

    const-string v4, "*/audio/artists"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x73

    const-string v4, "*/audio/artists/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x76

    const-string v4, "*/audio/artists/#/albums"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x74

    const-string v4, "*/audio/albums"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x75

    const-string v4, "*/audio/albums/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x77

    const-string v4, "*/audio/albumart"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x78

    const-string v4, "*/audio/albumart/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x79

    const-string v4, "*/audio/media/#/albumart"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xc8

    const-string v4, "*/video/media"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xc9

    const-string v4, "*/video/media/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xca

    const-string v4, "*/video/media/#/thumbnail"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xcb

    const-string v4, "*/video/thumbnails"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0xcc

    const-string v4, "*/video/thumbnails/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x1f4

    const-string v4, "*/media_scanner"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x258

    const-string v4, "*/fs_id"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x259

    const-string v4, "*/version"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x12d

    const-string v4, "*"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x0

    const/16 v4, 0x12c

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x2bc

    const-string v4, "*/file"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x2bd

    const-string v4, "*/file/#"

    invoke-virtual {v1, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x2be

    const-string v4, "*/object"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x2bf

    const-string v4, "*/object/#"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x2c0

    const-string v4, "*/object/#/references"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x2c2

    const-string v4, "*/dir"

    invoke-virtual {v2, v3, v4, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x320

    const-string v2, "*/downloads"

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const/16 v0, 0x321

    const-string v2, "*/downloads/#"

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    const v0, 0xd348

    const-string v2, "*/op_debug"

    invoke-virtual {v1, v3, v2, v0}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, sMutableColumns:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, sPlacementColumns:Landroid/util/ArraySet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, sGreylist:Ljava/util/ArrayList;

    const-string v0, "(?i)[_a-z0-9]+( (as )?[_a-z0-9]+)?"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "audio\\._id AS _id"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "(?i)(min|max|sum|avg|total|count|cast)\\(([_a-z0-9]+( (as )?[_a-z0-9]+)?|\\*)\\)( (as )?[_a-z0-9]+)?"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "case when case when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added \\* \\d+ when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added / \\d+ else \\d+ end > case when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified \\* \\d+ when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified / \\d+ else \\d+ end then case when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added \\* \\d+ when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added / \\d+ else \\d+ end else case when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified \\* \\d+ when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified / \\d+ else \\d+ end end as corrected_added_modified"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "MAX\\(case when \\(datetaken >= \\d+ and datetaken < \\d+\\) then datetaken \\* \\d+ when \\(datetaken >= \\d+ and datetaken < \\d+\\) then datetaken when \\(datetaken >= \\d+ and datetaken < \\d+\\) then datetaken / \\d+ else \\d+ end\\)"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "MAX\\(case when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added \\* \\d+ when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added when \\(date_added >= \\d+ and date_added < \\d+\\) then date_added / \\d+ else \\d+ end\\)"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "MAX\\(case when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified \\* \\d+ when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified when \\(date_modified >= \\d+ and date_modified < \\d+\\) then date_modified / \\d+ else \\d+ end\\)"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "\"content://media/[a-z]+/audio/media\""

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "substr\\(_data, length\\(_data\\)-length\\(_display_name\\), 1\\) as filename_prevchar"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "\\*( (as )?[_a-z0-9]+)?"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    const-string v0, "case when \\(datetaken >= \\d+ and datetaken < \\d+\\) then datetaken \\* \\d+ when \\(datetaken >= \\d+ and datetaken < \\d+\\) then datetaken when \\(datetaken >= \\d+ and datetaken < \\d+\\) then datetaken / \\d+ else \\d+ end"

    invoke-static {v0}, addGreylistPattern(Ljava/lang/String;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, sProjectionMapCache:Landroid/util/ArrayMap;

    return-void

    :array_0
    .array-data 4
        0x6c6f6369
        -0x56878686
        0x67707320
        0x67707330
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    sget-object v0, sDataColumns:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sDataColumns:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sDataColumns:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sDataColumns:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, sDataColumns:Landroid/util/ArrayMap;

    const-string v3, "album_art"

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/providers/media/-$$Lambda$MediaProvider$Truz5caeyHQmgQCfXjSnuq6p2qg;

    invoke-direct {v0, p0}, Lcom/android/providers/media/-$$Lambda$MediaProvider$Truz5caeyHQmgQCfXjSnuq6p2qg;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, mActiveListener:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    new-instance v0, Lcom/android/providers/media/-$$Lambda$MediaProvider$RQOQ1sP-V_0MTy4rAh_cdeRWm1k;

    invoke-direct {v0, p0}, Lcom/android/providers/media/-$$Lambda$MediaProvider$RQOQ1sP-V_0MTy4rAh_cdeRWm1k;-><init>(Lcom/android/providers/media/MediaProvider;)V

    invoke-static {v0}, Ljava/lang/ThreadLocal;->withInitial(Ljava/util/function/Supplier;)Ljava/lang/ThreadLocal;

    move-result-object v0

    iput-object v0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, mDirectoryCache:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/providers/media/MediaProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$1;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, mMediaReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/providers/media/MediaProvider$2;

    invoke-direct {v0, p0}, Lcom/android/providers/media/MediaProvider$2;-><init>(Lcom/android/providers/media/MediaProvider;)V

    iput-object v0, p0, mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    new-instance v0, Lcom/android/providers/media/MediaProvider$5;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$5;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V

    iput-object v0, p0, mAudioThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    new-instance v0, Lcom/android/providers/media/MediaProvider$6;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$6;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V

    iput-object v0, p0, mVideoThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    new-instance v0, Lcom/android/providers/media/MediaProvider$7;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/media/MediaProvider$7;-><init>(Lcom/android/providers/media/MediaProvider;Ljava/lang/String;)V

    iput-object v0, p0, mImageThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    const/4 v0, -0x1

    iput v0, p0, mVolumeId:I

    const/4 v0, 0x0

    iput v0, p0, mRedactingCounts:I

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v0, "relative_path"

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v1, "_display_name"

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v3, "is_pending"

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v3, "is_trashed"

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v3, "date_expires"

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v3, "primary_directory"

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v4, "secondary_directory"

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v5, "bookmark"

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v6, "tags"

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v6, "category"

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v5, "name"

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v5, "audio_id"

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v5, "play_order"

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v5, "mime_type"

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sMutableColumns:Landroid/util/ArraySet;

    const-string v6, "media_type"

    invoke-virtual {p0, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sPlacementColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sPlacementColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sPlacementColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sPlacementColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sPlacementColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p0, sPlacementColumns:Landroid/util/ArraySet;

    invoke-virtual {p0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static acceptWithExpansion(Ljava/util/function/Consumer;Landroid/net/Uri;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    invoke-static {p0, p1, v1}, acceptWithExpansionInternal(Ljava/util/function/Consumer;Landroid/net/Uri;I)V

    :try_start_0
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const v5, -0x6c869c35

    const/4 v6, 0x0

    const-string v7, "external"

    if-eq v4, v5, :cond_1

    const v5, 0x21ffc6bd

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    const-string v4, "internal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v6

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    :goto_0
    if-eqz v3, :cond_4

    if-eq v3, v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v6, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, v1}, acceptWithExpansionInternal(Ljava/util/function/Consumer;Landroid/net/Uri;I)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private static acceptWithExpansionInternal(Ljava/util/function/Consumer;Landroid/net/Uri;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/net/Uri;",
            "I)V"
        }
    .end annotation

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    const/16 v1, 0x65

    const/16 v2, 0x64

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    if-eq p2, v2, :cond_3

    if-eq p2, v1, :cond_2

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_3

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_2

    const/16 v0, 0x2bc

    if-eq p2, v0, :cond_1

    const/16 v0, 0x2bd

    if-eq p2, v0, :cond_0

    const/16 v0, 0x320

    if-eq p2, v0, :cond_1

    const/16 v0, 0x321

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v5

    invoke-interface {p0, v5}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0, v3, v4}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    if-eq p2, v2, :cond_4

    if-eq p2, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Artists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Albums;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/media/MediaProvider;)Landroid/util/ArrayMap;
    .locals 0

    iget-object p0, p0, mDirectoryCache:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, downgradeDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    return-void
.end method

.method static synthetic access$300()J
    .locals 2

    sget-wide v0, sBackgroundDelay:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    invoke-direct {p0}, updateVolumes()V

    return-void
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    invoke-static {p0, p1}, recomputeDataValuesByPage(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, resolveVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/providers/media/MediaProvider;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, mThumbSize:Landroid/util/Size;

    return-object p0
.end method

.method private static addGreylistPattern(Ljava/lang/String;)V
    .locals 3

    sget-object v0, sGreylist:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " *"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static varargs appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereStandalone(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static assertFileColumnsSane(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/media/MediaProvider$VolumeArgumentException;
        }
    .end annotation

    const-string p0, "_data"

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1}, resolveVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, getVolumeScanPaths(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/FileUtils;->contains(Ljava/util/Collection;Ljava/io/File;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/android/providers/media/MediaProvider$VolumeArgumentException;

    invoke-direct {p2, p0, p1}, Lcom/android/providers/media/MediaProvider$VolumeArgumentException;-><init>(Ljava/io/File;Ljava/util/Collection;)V

    throw p2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private attachVolume(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method

.method static varargs bindList([Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private checkAccess(Landroid/net/Uri;Ljava/io/File;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, enforceCallingPermission(Landroid/net/Uri;Z)V

    invoke-static {}, Landroid/os/Environment;->getStorageDirectory()Ljava/io/File;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/os/FileUtils;->contains(Ljava/io/File;Ljava/io/File;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, checkWorldReadAccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private checkCallingPermissionAudio(ZLjava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/16 p1, 0x40

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method private checkCallingPermissionGlobal(Landroid/net/Uri;Z)Z
    .locals 5

    invoke-direct {p0}, isCallingPackageSystem()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/16 v3, 0x65

    if-eq v0, v3, :cond_1

    const/16 v3, 0xc9

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2bd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x321

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    iget-object v0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-virtual {v0, v3, v4}, Lcom/android/providers/media/LocalCallingIdentity;->isOwned(J)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/LocalCallingIdentity;

    iget v3, v3, Lcom/android/providers/media/LocalCallingIdentity;->pid:I

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    iget p0, p0, Lcom/android/providers/media/LocalCallingIdentity;->uid:I

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-virtual {v0, p1, v3, p0, v2}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result p0

    if-nez p0, :cond_4

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0
.end method

.method private checkCallingPermissionImages(ZLjava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/16 p1, 0x100

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/16 p1, 0x20

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method private checkCallingPermissionLegacy(Landroid/net/Uri;ZLjava/lang/String;)Z
    .locals 0

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method private checkCallingPermissionVideo(ZLjava/lang/String;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/16 p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/16 p1, 0x10

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method private static checkLeadingPathComponentsWorldExecutable(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "Can\'t access "

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    const-string v2, "/storage/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/system/OsConstants;->S_IXGRP:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/system/OsConstants;->S_IXOTH:I

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v3

    iget v3, v3, Landroid/system/StructStat;->st_mode:I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v3, v2

    if-ne v3, v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    goto :goto_0

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "access denied"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-void
.end method

.method private static checkWorldReadAccess(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "/storage/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/system/OsConstants;->S_IRGRP:I

    goto :goto_0

    :cond_0
    sget v0, Landroid/system/OsConstants;->S_IROTH:I

    :goto_0
    :try_start_0
    invoke-static {p0}, Landroid/system/Os;->stat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v1

    iget v2, v1, Landroid/system/StructStat;->st_mode:I

    invoke-static {v2}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroid/system/StructStat;->st_mode:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_1

    invoke-static {p0}, checkLeadingPathComponentsWorldExecutable(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    :cond_1
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t access "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static computeCommonPrefix(Ljava/util/List;)Landroid/net/Uri;
    .locals 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x1

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_2

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v6, :cond_1

    invoke-interface {v3, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v5, :cond_3

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    :goto_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method static computeDataValues(Landroid/content/ContentValues;)V
    .locals 11
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "bucket_id"

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "bucket_display_name"

    invoke-virtual {p0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v2, "group_id"

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v3, "volume_name"

    invoke-virtual {p0, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "relative_path"

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "primary_directory"

    invoke-virtual {p0, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v6, "secondary_directory"

    invoke-virtual {p0, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v7, "_data"

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-void

    :cond_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/io/File;

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, extractVolumeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v3, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, extractRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v7}, extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v7, "_display_name"

    invoke-virtual {p0, v7, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    const-string v7, "/"

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, 0x0

    if-lez v1, :cond_2

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    invoke-virtual {p0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_4

    aget-object v1, v0, v3

    invoke-virtual {p0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_5

    aget-object v0, v0, v2

    invoke-virtual {p0, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method static containsAny(Ljava/util/Set;Ljava/util/Set;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/util/Set<",
            "TT;>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static createLatestSchema(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 3

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->revokeUriPermission(Landroid/net/Uri;I)V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/media/MediaDocumentsProvider;->revokeAllUriGrants(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/providers/media/-$$Lambda$MediaProvider$zwqYorahwz9cSWratn5aFT2yQKA;->INSTANCE:Lcom/android/providers/media/-$$Lambda$MediaProvider$zwqYorahwz9cSWratn5aFT2yQKA;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {p0}, makePristineSchema(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v0, "CREATE TABLE android_metadata (locale TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE thumbnails (_id INTEGER PRIMARY KEY,_data TEXT,image_id INTEGER,kind INTEGER,width INTEGER,height INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE artists (artist_id INTEGER PRIMARY KEY,artist_key TEXT NOT NULL UNIQUE,artist TEXT NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE albums (album_id INTEGER PRIMARY KEY,album_key TEXT NOT NULL UNIQUE,album TEXT NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE album_art (album_id INTEGER PRIMARY KEY,_data TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE videothumbnails (_id INTEGER PRIMARY KEY,_data TEXT,video_id INTEGER,kind INTEGER,width INTEGER,height INTEGER)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE files (_id INTEGER PRIMARY KEY AUTOINCREMENT,_data TEXT UNIQUE COLLATE NOCASE,_size INTEGER,format INTEGER,parent INTEGER,date_added INTEGER,date_modified INTEGER,mime_type TEXT,title TEXT,description TEXT,_display_name TEXT,picasa_id TEXT,orientation INTEGER,latitude DOUBLE,longitude DOUBLE,datetaken INTEGER,mini_thumb_magic INTEGER,bucket_id TEXT,bucket_display_name TEXT,isprivate INTEGER,title_key TEXT,artist_id INTEGER,album_id INTEGER,composer TEXT,track INTEGER,year INTEGER CHECK(year!=0),is_ringtone INTEGER,is_music INTEGER,is_alarm INTEGER,is_notification INTEGER,is_podcast INTEGER,album_artist TEXT,duration INTEGER,bookmark INTEGER,artist TEXT,album TEXT,resolution TEXT,tags TEXT,category TEXT,language TEXT,mini_thumb_data TEXT,name TEXT,media_type INTEGER,old_id INTEGER,is_drm INTEGER,width INTEGER, height INTEGER, title_resource_uri TEXT,owner_package_name TEXT DEFAULT NULL,color_standard INTEGER, color_transfer INTEGER, color_range INTEGER,_hash BLOB DEFAULT NULL, is_pending INTEGER DEFAULT 0,is_download INTEGER DEFAULT 0, download_uri TEXT DEFAULT NULL,referer_uri TEXT DEFAULT NULL, is_audiobook INTEGER DEFAULT 0,date_expires INTEGER DEFAULT NULL,is_trashed INTEGER DEFAULT 0,group_id INTEGER DEFAULT NULL,primary_directory TEXT DEFAULT NULL,secondary_directory TEXT DEFAULT NULL,document_id TEXT DEFAULT NULL,instance_id TEXT DEFAULT NULL,original_document_id TEXT DEFAULT NULL,relative_path TEXT DEFAULT NULL,volume_name TEXT DEFAULT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE log (time DATETIME, message TEXT)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v0, "CREATE TABLE audio_genres (_id INTEGER PRIMARY KEY,name TEXT NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE audio_genres_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,genre_id INTEGER NOT NULL,UNIQUE (audio_id,genre_id) ON CONFLICT IGNORE)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE audio_playlists_map (_id INTEGER PRIMARY KEY,audio_id INTEGER NOT NULL,playlist_id INTEGER NOT NULL,play_order INTEGER NOT NULL)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER audio_genres_cleanup DELETE ON audio_genres BEGIN DELETE FROM audio_genres_map WHERE genre_id = old._id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER audio_playlists_cleanup DELETE ON files WHEN old.media_type=4 BEGIN DELETE FROM audio_playlists_map WHERE playlist_id = old._id;SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER files_cleanup DELETE ON files BEGIN SELECT _OBJECT_REMOVED(old._id);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string v0, "CREATE INDEX image_id_index on thumbnails(image_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX album_idx on albums(album)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX albumkey_index on albums(album_key)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX artist_idx on artists(artist)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX artistkey_index on artists(artist_key)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX video_id_index on videothumbnails(video_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX album_id_idx ON files(album_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX artist_id_idx ON files(artist_id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX bucket_index on files(bucket_id,media_type,datetaken, _id)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX bucket_name on files(bucket_id,media_type,bucket_display_name)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX format_index ON files(format)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX media_type_index ON files(media_type)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX parent_index ON files(parent)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX path_index ON files(_data)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX sort_index ON files(datetaken ASC, _id ASC)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX title_idx ON files(title)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX titlekey_index ON files(title_key)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER albumart_cleanup1 DELETE ON albums BEGIN DELETE FROM album_art WHERE album_id = old.album_id;END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TRIGGER albumart_cleanup2 DELETE ON album_art BEGIN SELECT _DELETE_FILE(old._data);END"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p0, p1}, createLatestViews(Landroid/database/sqlite/SQLiteDatabase;Z)V

    return-void
.end method

.method private static createLatestViews(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 2

    invoke-static {p0}, makePristineViews(Landroid/database/sqlite/SQLiteDatabase;)V

    if-nez p1, :cond_0

    const-string p1, "CREATE VIEW audio_playlists AS SELECT _id,_data,name,date_added,date_modified,owner_package_name,_hash,is_pending,date_expires,is_trashed,volume_name FROM files WHERE media_type=4"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string p1, "CREATE VIEW audio_meta AS SELECT _id,_data,_display_name,_size,mime_type,date_added,is_drm,date_modified,title,title_key,duration,artist_id,composer,album_id,track,year,is_ringtone,is_music,is_alarm,is_notification,is_podcast,bookmark,album_artist,owner_package_name,_hash,is_pending,is_audiobook,date_expires,is_trashed,group_id,primary_directory,secondary_directory,document_id,instance_id,original_document_id,title_resource_uri,relative_path,volume_name,datetaken,bucket_id,bucket_display_name,group_id,orientation FROM files WHERE media_type=2"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW artists_albums_map AS SELECT DISTINCT artist_id, album_id FROM audio_meta"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW audio as SELECT *, NULL AS width, NULL as height FROM audio_meta LEFT OUTER JOIN artists ON audio_meta.artist_id=artists.artist_id LEFT OUTER JOIN albums ON audio_meta.album_id=albums.album_id"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW album_info AS SELECT audio.album_id AS _id, album, album_key, MIN(year) AS minyear, MAX(year) AS maxyear, artist, artist_id, artist_key, count(*) AS numsongs,album_art._data AS album_art FROM audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id WHERE is_music=1 GROUP BY audio.album_id"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW searchhelpertitle AS SELECT * FROM audio ORDER BY title_key"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW artist_info AS SELECT artist_id AS _id, artist, artist_key, COUNT(DISTINCT album_key) AS number_of_albums, COUNT(*) AS number_of_tracks FROM audio WHERE is_music=1 GROUP BY artist_key"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW search AS SELECT _id,\'artist\' AS mime_type,artist,NULL AS album,NULL AS title,artist AS text1,NULL AS text2,number_of_albums AS data1,number_of_tracks AS data2,artist_key AS match,\'content://media/external/audio/artists/\'||_id AS suggest_intent_data,1 AS grouporder FROM artist_info WHERE (artist!=\'<unknown>\') UNION ALL SELECT _id,\'album\' AS mime_type,artist,album,NULL AS title,album AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key AS match,\'content://media/external/audio/albums/\'||_id AS suggest_intent_data,2 AS grouporder FROM album_info WHERE (album!=\'<unknown>\') UNION ALL SELECT searchhelpertitle._id AS _id,mime_type,artist,album,title,title AS text1,artist AS text2,NULL AS data1,NULL AS data2,artist_key||\' \'||album_key||\' \'||title_key AS match,\'content://media/external/audio/media/\'||searchhelpertitle._id AS suggest_intent_data,3 AS grouporder FROM searchhelpertitle WHERE (title != \'\')"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "CREATE VIEW audio_genres_map_noid AS SELECT audio_id,genre_id FROM audio_genres_map"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CREATE VIEW video AS SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroid/provider/MediaStore$Video$Media;

    invoke-static {v0}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, ","

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM files WHERE media_type=3"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CREATE VIEW images AS SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroid/provider/MediaStore$Images$Media;

    invoke-static {v0}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM files WHERE media_type=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CREATE VIEW downloads AS SELECT "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroid/provider/MediaStore$Downloads;

    invoke-static {v0}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " FROM files WHERE is_download=1"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/providers/media/MediaProviderUtils;->updateOnePlusDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    invoke-static {p2}, Lcom/android/providers/media/MediaProviderUtils;->isUnmountedVolumeChecking(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MediaProvider"

    if-eqz v0, :cond_1

    sget-boolean p0, LOCAL_LOGV:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteIfAllowed: skip on deleting file "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v2}, checkAccess(Landroid/net/Uri;Ljava/io/File;Z)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, DBG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "deleteIfAllowed: path = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t delete "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    const-string v11, "audio_id=?"

    const-string v1, "op:delStack:"

    const-string v2, "op:pkg:"

    invoke-direct/range {p0 .. p1}, safeUncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v12}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v3

    invoke-direct/range {p0 .. p0}, isCallingPackageAllowedHidden()Z

    move-result v4

    invoke-static {v12, v4}, matchUri(Landroid/net/Uri;Z)I

    move-result v14

    const/4 v15, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/16 v4, 0x1f4

    if-ne v14, v4, :cond_2

    iget-object v1, v0, mMediaScannerVolume:Ljava/lang/String;

    if-nez v1, :cond_0

    return v8

    :cond_0
    :try_start_0
    invoke-static {v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    invoke-direct {v0, v1, v8}, dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {v1, v2}, logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    iget-object v1, v0, mMediaScannerVolume:Ljava/lang/String;

    const-string v2, "internal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "MediaScanBuild"

    invoke-virtual {v1, v2, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v3, "lastScanFingerprint"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iput-object v15, v0, mMediaScannerVolume:Ljava/lang/String;

    return v9

    :catch_0
    move-exception v0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result v0

    return v0

    :cond_2
    const-string v7, ""

    if-eqz p3, :cond_7

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "op:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p3 .. p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v2, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    :cond_3
    invoke-virtual {v8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_4

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8, v1, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    move-object v8, v1

    goto :goto_1

    :cond_6
    move-object v8, v15

    :goto_1
    move-object/from16 v6, v16

    move-object/from16 v5, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    throw v0

    :cond_7
    move-object/from16 v8, p3

    move-object v5, v15

    move-object v6, v5

    :goto_2
    const-string v4, "MediaProvider"

    if-eqz v8, :cond_a

    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v6, :cond_8

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " from {P:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ";U:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "}"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_8
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " from "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v1, LOCAL_LOGV:Z

    if-eqz v1, :cond_a

    if-eqz v5, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete delStack = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v9

    const/16 v1, 0x12d

    if-ne v14, v1, :cond_b

    invoke-direct {v0, v12}, detachVolume(Landroid/net/Uri;)V

    :cond_b
    :try_start_2
    invoke-direct {v0, v12}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3
    :try_end_2
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    const/4 v1, 0x2

    move-object/from16 p3, v9

    invoke-direct {v0, v1, v12, v14, v15}, getQueryBuilder(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v9

    const/16 v15, 0x65

    if-eq v14, v1, :cond_c

    if-eq v14, v15, :cond_c

    const/16 v1, 0xc9

    if-eq v14, v1, :cond_c

    goto :goto_4

    :cond_c
    const/4 v1, 0x1

    invoke-direct {v0, v12, v1}, enforceCallingPermission(Landroid/net/Uri;Z)V

    :goto_4
    const-string v1, "media_type"

    const-string v15, "_data"

    move-object/from16 v18, v2

    const-string v2, "_id"

    move-object/from16 v19, v4

    const-string v4, "is_download"

    move-object/from16 v20, v5

    const-string v5, "mime_type"

    filled-new-array {v1, v15, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    new-instance v15, Landroid/util/LongSparseArray;

    invoke-direct {v15}, Landroid/util/LongSparseArray;-><init>()V

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v1

    const-string v2, "files"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v5, 0x4

    if-eqz v1, :cond_1c

    const-string v1, "deletedata"

    invoke-virtual {v12, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    :cond_d
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/4 v2, 0x2

    const/16 v16, 0x1

    move-object v1, v9

    move-object/from16 v26, v18

    move-object v2, v3

    move-object/from16 v27, v3

    move-object v3, v4

    move-object/from16 v28, v19

    move-object/from16 v4, p2

    move-object/from16 v29, v20

    move-object v5, v8

    move-object/from16 v30, v6

    move-object/from16 v6, v22

    move-object/from16 v17, v7

    move-object/from16 v7, v23

    move-object/from16 v31, v8

    move-object/from16 v8, v24

    move-object/from16 v10, p3

    move/from16 p1, v14

    move/from16 v14, v16

    move-object/from16 v16, v9

    move-object/from16 v9, v25

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    filled-new-array/range {v17 .. v17}, [Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, v17

    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_5
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v9, 0x0

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 p3, v15

    const/4 v7, 0x2

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v8, 0x3

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    iget-object v8, v0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v8}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/providers/media/LocalCallingIdentity;

    move-object/from16 v17, v4

    const/4 v4, 0x0

    invoke-virtual {v8, v14, v15, v4}, Lcom/android/providers/media/LocalCallingIdentity;->setOwned(JZ)V

    invoke-static {v13, v14, v15}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v4}, invalidateThumbnails(Landroid/net/Uri;)V

    new-instance v8, Lcom/android/providers/media/-$$Lambda$MediaProvider$KrjGG7ZAGv12t19m4gKPe__OhmI;

    invoke-direct {v8, v0}, Lcom/android/providers/media/-$$Lambda$MediaProvider$KrjGG7ZAGv12t19m4gKPe__OhmI;-><init>(Lcom/android/providers/media/MediaProvider;)V

    invoke-static {v8, v4}, acceptWithExpansion(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete: id["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "], mediaType["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "], mimeType["

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "]."

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v8, v28

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    move-object/from16 v8, v28

    :goto_6
    const-string v4, "external"

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v28, v8

    move-object/from16 v8, v29

    move-object/from16 v4, v30

    move-object/from16 v29, v3

    invoke-static {v10, v4, v9, v1, v8}, Lcom/android/providers/media/PhotosProtectorUtils$RecycleUtils;->confirmDeletePermission(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_10

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Lcom/android/providers/media/PhotosProtectorUtils$ServiceUtils;->pushRecycled(Landroid/content/Context;)V

    return v3

    :cond_f
    move-object/from16 v28, v8

    move-object/from16 v8, v29

    move-object/from16 v29, v3

    :cond_10
    const/4 v3, 0x1

    if-ne v7, v3, :cond_11

    move-object/from16 v4, p3

    :try_start_4
    invoke-virtual {v4, v14, v15, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_7

    :cond_11
    move-object/from16 v4, p3

    :goto_7
    if-ne v5, v3, :cond_12

    invoke-direct {v0, v12, v6}, deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13, v3, v14, v15}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V

    :goto_8
    move-object/from16 p3, v4

    move-object/from16 v20, v8

    move-object/from16 v9, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v29

    goto/16 :goto_a

    :cond_12
    const/4 v3, 0x3

    if-ne v5, v3, :cond_13

    invoke-direct {v0, v12, v6}, deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13, v3, v14, v15}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V

    goto :goto_8

    :cond_13
    const/4 v3, 0x2

    if-ne v5, v3, :cond_17

    move-object/from16 v9, v26

    iget-boolean v5, v9, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v5, :cond_16

    invoke-direct {v0, v12, v6}, deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v13, v3, v14, v15}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "audio_genres_map"

    move-object/from16 v6, v27

    invoke-virtual {v6, v5, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v18, "audio_playlists_map"

    sget-object v19, sPlaylistIdPlayOrder:[Ljava/lang/String;

    const-string v20, "audio_id=?"

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v6

    move-object/from16 v21, v2

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :goto_9
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_15

    move-object/from16 p3, v4

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v29, v7

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v29, v7

    const-string v7, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE playlist_id=? AND play_order>?"

    move-object/from16 v20, v8

    move-object/from16 v8, v29

    invoke-virtual {v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->executeSql(Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v7

    if-lez v7, :cond_14

    invoke-direct {v0, v6, v3, v4}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_14
    move-object/from16 v4, p3

    move-object/from16 v29, v8

    move-object/from16 v8, v20

    const/4 v3, 0x2

    goto :goto_9

    :cond_15
    move-object/from16 p3, v4

    move-object/from16 v20, v8

    move-object/from16 v8, v29

    const-string v3, "audio_playlists_map"

    invoke-virtual {v6, v3, v11, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move/from16 v3, p1

    move-object/from16 v17, v4

    move-object v4, v6

    goto :goto_b

    :catchall_1
    move-exception v0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_16
    move-object/from16 p3, v4

    move-object/from16 v20, v8

    move-object/from16 v8, v29

    move-object/from16 v4, v27

    goto :goto_a

    :cond_17
    move-object/from16 p3, v4

    move-object/from16 v20, v8

    move-object/from16 v9, v26

    move-object/from16 v4, v27

    move-object/from16 v8, v29

    const/4 v3, 0x1

    if-ne v7, v3, :cond_18

    invoke-direct {v0, v12, v6}, deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v13, v5, v14, v15}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreDelete(Landroid/content/Context;Ljava/lang/String;IJ)V

    :cond_18
    :goto_a
    move/from16 v3, p1

    :goto_b
    const/16 v5, 0x65

    if-ne v3, v5, :cond_19

    if-nez v17, :cond_19

    iget-boolean v6, v9, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v6, :cond_19

    invoke-virtual {v12}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_19
    move-object/from16 v6, v17

    :goto_c
    if-eqz v6, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/android/providers/media/MediaProviderRingtoneUtils;->ringtoneCheck(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_1a
    move-object/from16 v15, p3

    move/from16 p1, v3

    move-object/from16 v27, v4

    move-object v4, v6

    move-object v3, v8

    move-object/from16 v26, v9

    move-object/from16 v29, v20

    const/4 v14, 0x1

    goto/16 :goto_5

    :cond_1b
    move/from16 v3, p1

    move-object/from16 p3, v15

    move-object/from16 v9, v26

    move-object/from16 v4, v27

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Lcom/android/providers/media/PhotosProtectorUtils$ServiceUtils;->pushRecycled(Landroid/content/Context;)V

    const/4 v11, 0x0

    new-array v1, v11, [Ljava/lang/Object;

    const-string v2, "_id NOT IN (SELECT parent FROM files)"

    move-object/from16 v5, v16

    invoke-static {v5, v2, v1}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d

    :catchall_2
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v10}, Lcom/android/providers/media/PhotosProtectorUtils$ServiceUtils;->pushRecycled(Landroid/content/Context;)V

    throw v0

    :cond_1c
    move-object v4, v3

    move-object/from16 v31, v8

    move-object v5, v9

    move v3, v14

    move-object/from16 p3, v15

    move-object/from16 v9, v18

    const/4 v11, 0x0

    :goto_d
    const/4 v1, 0x4

    if-eq v3, v1, :cond_1e

    const/4 v1, 0x5

    if-eq v3, v1, :cond_1e

    const/16 v1, 0x6c

    if-eq v3, v1, :cond_21

    const/16 v1, 0x71

    if-eq v3, v1, :cond_1f

    const/16 v1, 0xcb

    if-eq v3, v1, :cond_1e

    const/16 v1, 0xcc

    if-eq v3, v1, :cond_1e

    const/16 v1, 0x2be

    if-eq v3, v1, :cond_1d

    const/16 v1, 0x2bf

    if-eq v3, v1, :cond_1d

    move-object/from16 v10, p2

    move-object v13, v5

    move-object/from16 v15, v31

    invoke-direct {v0, v13, v4, v10, v15}, deleteRecursive(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_e
    move-object/from16 v26, v9

    goto/16 :goto_12

    :cond_1d
    move-object/from16 v10, p2

    move-object v13, v5

    move-object/from16 v15, v31

    invoke-direct {v0, v13, v4, v10, v15}, deleteRecursive(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_e

    :cond_1e
    move-object/from16 v10, p2

    move-object v13, v5

    move-object/from16 v15, v31

    goto :goto_f

    :cond_1f
    move-object/from16 v10, p2

    move-object v13, v5

    move-object/from16 v15, v31

    invoke-virtual {v12}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-direct {v0, v13, v4, v10, v15}, deleteRecursive(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_20

    invoke-direct {v0, v4, v1, v2}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_20
    move v1, v3

    goto :goto_e

    :cond_21
    move-object/from16 v10, p2

    move-object v13, v5

    move-object/from16 v15, v31

    invoke-direct {v0, v13, v4, v10, v15}, deleteRecursive(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_e

    :goto_f
    sget-object v3, sDataOnlyColumn:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v14, 0x0

    move-object v1, v13

    move-object v2, v4

    move-object/from16 v5, p3

    move-object v11, v4

    move-object/from16 v4, p2

    move-object v5, v15

    move-object/from16 v26, v9

    const/4 v10, 0x0

    move-object v9, v14

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_23

    :goto_10
    :try_start_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v12, v2}, deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_10

    :cond_22
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_11

    :catchall_3
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_23
    :goto_11
    move-object/from16 v1, p2

    invoke-direct {v0, v13, v11, v1, v15}, deleteRecursive(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_12
    invoke-virtual/range {p3 .. p3}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-lez v2, :cond_27

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "downloads"

    invoke-virtual {v0, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual/range {p3 .. p3}, Landroid/util/LongSparseArray;->size()I

    move-result v5

    new-array v5, v5, [J

    invoke-virtual/range {p3 .. p3}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Landroid/util/LongSparseArray;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    :goto_13
    if-ltz v7, :cond_24

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v9

    aput-wide v9, v5, v7

    invoke-virtual {v8, v7}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    aput-object v9, v6, v7

    add-int/lit8 v7, v7, -0x1

    move-object/from16 p3, v8

    goto :goto_13

    :cond_24
    const-string v7, "ids"

    invoke-virtual {v0, v7, v5}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    const-string v5, "mime_types"

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "mediastore_downloads_deleted"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v0}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v4, :cond_26

    :try_start_a
    invoke-static {v6, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto :goto_14

    :catchall_4
    move-exception v0

    move-object v5, v0

    :try_start_b
    throw v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :catchall_5
    move-exception v0

    move-object v6, v0

    if-eqz v4, :cond_25

    :try_start_c
    invoke-static {v5, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_25
    throw v6
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catch_1
    :cond_26
    :goto_14
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_27
    if-lez v1, :cond_28

    invoke-static/range {v26 .. v26}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;

    move-object/from16 v2, v26

    invoke-direct {v0, v2}, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;-><init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V

    invoke-static {v0, v12}, acceptWithExpansion(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    :cond_28
    return v1

    :catch_2
    move-exception v0

    invoke-virtual {v0, v3}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result v0

    return v0
.end method

.method private static deleteLegacyThumbnailData()V
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object v1, Lcom/android/providers/media/-$$Lambda$MediaProvider$U2k97ajc155duFYOmVbkZapXmeM;->INSTANCE:Lcom/android/providers/media/-$$Lambda$MediaProvider$U2k97ajc155duFYOmVbkZapXmeM;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to delete legacy thumbnail data "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteRecursive(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2, p3, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr p0, v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p0
.end method

.method private detachVolume(Landroid/net/Uri;)V
    .locals 0

    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, detachVolume(Ljava/lang/String;)V

    return-void
.end method

.method private static downgradeDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, p2}, createLatestSchema(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Database downgraded from version "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " seconds"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "version "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "count(*)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v3, "files"

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v10, 0x0

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " rows, "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v3, "couldn\'t get row count, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    iget-wide v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scan started "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const v6, 0x80011

    invoke-static {v3, v4, v5, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    iget-wide v4, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    sub-long/2addr v2, v5

    const-wide/32 v5, 0xf4240

    div-long/2addr v2, v5

    invoke-static {v2, v3}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStopTime:J

    iget-wide v5, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_4

    iget-object v3, p0, mMediaScannerVolume:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object p1, p1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p0, " (ongoing)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " (scanning "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, mMediaScannerVolume:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    if-eqz p2, :cond_6

    const-string p0, "time"

    const-string p1, "message"

    filled-new-array {p0, p1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "log"

    const-string v9, "rowid"

    move-object v2, v1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_5

    :goto_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p1

    :cond_5
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ": pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, ", fingerprint="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private enforceCallingPermission(Landroid/net/Uri;Z)V
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "enforceCallingPermission"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, enforceCallingPermissionInternal(Landroid/net/Uri;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method private enforceCallingPermissionInternal(Landroid/net/Uri;Z)V
    .locals 13

    invoke-direct {p0, p1, p2}, checkCallingPermissionGlobal(Landroid/net/Uri;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-direct {p0}, isCallingPackageAllowedHidden()Z

    move-result v1

    invoke-static {p1, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    if-eqz p2, :cond_4

    invoke-direct {p0, v10, p1, v9, v12}, getQueryBuilder(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    new-array v3, v11, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    invoke-static {v12, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    :cond_2
    if-eqz v1, :cond_4

    invoke-static {v12, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_3

    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw p1

    :cond_4
    :goto_0
    invoke-static {p1, v10}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/16 v2, 0x65

    if-eq v1, v2, :cond_5

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_5

    move v10, v11

    :cond_5
    invoke-direct {p0, v11, p1, v9, v12}, getQueryBuilder(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    new-array v3, v11, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const-string v2, " has no access to "

    if-eqz v1, :cond_9

    if-nez p2, :cond_7

    if-eqz v0, :cond_6

    invoke-static {v12, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    return-void

    :cond_7
    if-nez v10, :cond_8

    goto :goto_1

    :cond_8
    :try_start_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    const/16 v1, 0x2a

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/media/PermissionActivity;

    invoke-direct {v3, v12, p1, p2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v4, 0x54000000

    invoke-static {p2, v1, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0, p1}, getCollectionIcon(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;

    move-result-object v3

    new-instance v4, Landroid/app/RemoteAction;

    const v5, 0x7f08000d

    invoke-virtual {p2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-direct {v4, v3, v6, v5, v1}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    new-instance v1, Landroid/app/RecoverableSecurityException;

    new-instance v3, Ljava/lang/SecurityException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const p0, 0x7f08000c

    invoke-virtual {p2, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-direct {v1, v3, p0, v4}, Landroid/app/RecoverableSecurityException;-><init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_9
    :goto_1
    if-eqz v0, :cond_a

    invoke-static {v12, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_a
    new-instance p2, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p2

    :catchall_2
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    if-eqz v0, :cond_b

    invoke-static {p0, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b
    throw p1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$FallbackException;->rethrowAsIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0
.end method

.method private enforceShellRestrictions()V
    .locals 2

    invoke-static {}, Landroid/os/UserHandle;->getCallingAppId()I

    move-result v0

    const/16 v1, 0x7d0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const-string v0, "no_usb_file_transfer"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Shell user cannot access files for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private ensureDefaultFolders(Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    :try_start_0
    invoke-static {p1}, getVolumePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v1, v0}, Landroid/os/storage/StorageManager;->getStorageVolume(Ljava/io/File;)Landroid/os/storage/StorageVolume;

    move-result-object v0

    const-string v1, "emulated"

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "created_default_folders"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "created_default_folders_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getNormalizedUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_3

    sget-object v4, sDefaultFolderNames:[Ljava/lang/String;

    array-length v5, v4

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v4, v3

    new-instance v7, Ljava/io/File;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p2, p3, v6}, insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    goto :goto_2

    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, p3, v6}, Lcom/android/providers/media/MediaProviderUtils;->confirmDirectoryType(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 p2, 0x1

    invoke-interface {p0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_4

    :cond_3
    sget-object p0, sDefaultFolderNames:[Ljava/lang/String;

    array-length v1, p0

    :goto_3
    if-ge v3, v1, :cond_5

    aget-object v2, p0, v3

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p3, v2}, Lcom/android/providers/media/MediaProviderUtils;->confirmDirectoryType(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to ensure default folders for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaProvider"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_4
    return-void
.end method

.method private static ensureFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;ZLjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/media/MediaProvider$VolumeArgumentException;
        }
    .end annotation

    move/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-wide/32 v3, 0x100000

    const-string v5, "ensureFileColumns"

    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOCUMENTS:Ljava/lang/String;

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v9, 0x6e

    const-string v11, "application/octet-stream"

    const-string v12, ".thumbnails"

    const/4 v13, 0x4

    const-string v14, "image/jpeg"

    if-eq v0, v10, :cond_8

    if-eq v0, v6, :cond_8

    if-eq v0, v13, :cond_7

    const/4 v15, 0x5

    if-eq v0, v15, :cond_7

    const/16 v3, 0x64

    if-eq v0, v3, :cond_6

    const/16 v3, 0x65

    if-eq v0, v3, :cond_6

    if-eq v0, v9, :cond_5

    const/16 v3, 0x6f

    if-eq v0, v3, :cond_5

    const/16 v3, 0x77

    if-eq v0, v3, :cond_4

    const/16 v3, 0x78

    if-eq v0, v3, :cond_4

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_3

    const/16 v3, 0xc9

    if-eq v0, v3, :cond_3

    const/16 v3, 0xcb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xcc

    if-eq v0, v3, :cond_2

    const/16 v3, 0x2bc

    if-eq v0, v3, :cond_1

    const/16 v3, 0x2bd

    if-eq v0, v3, :cond_1

    const/16 v3, 0x320

    if-eq v0, v3, :cond_0

    const/16 v3, 0x321

    if-eq v0, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unhandled location "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; assuming generic files"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :cond_1
    :goto_0
    move-object v14, v11

    :goto_1
    const/16 v16, 0x0

    goto/16 :goto_4

    :cond_2
    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_3

    :cond_3
    sget-object v5, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v4, v3, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v3, "video/mp4"

    goto :goto_2

    :cond_4
    sget-object v5, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_3

    :cond_5
    sget-object v5, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_0

    :cond_6
    sget-object v5, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    new-array v3, v15, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_ALARMS:Ljava/lang/String;

    aput-object v4, v3, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v4, v3, v10

    sget-object v4, Landroid/os/Environment;->DIRECTORY_NOTIFICATIONS:Ljava/lang/String;

    aput-object v4, v3, v6

    const/4 v4, 0x3

    sget-object v6, Landroid/os/Environment;->DIRECTORY_PODCASTS:Ljava/lang/String;

    aput-object v6, v3, v4

    sget-object v4, Landroid/os/Environment;->DIRECTORY_RINGTONES:Ljava/lang/String;

    aput-object v4, v3, v13

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const-string v3, "audio/mpeg"

    :goto_2
    move-object v14, v3

    goto :goto_1

    :cond_7
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    new-array v3, v10, [Ljava/lang/String;

    aput-object v5, v3, v8

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    :goto_3
    move-object/from16 v16, v12

    goto :goto_4

    :cond_8
    sget-object v5, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    new-array v3, v6, [Ljava/lang/String;

    sget-object v4, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    aput-object v4, v3, v8

    sget-object v4, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v4, v3, v10

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_1

    :goto_4
    invoke-static/range {p1 .. p1}, resolveVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "internal"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to internal storage is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    const-string v10, "_display_name"

    const-string v12, "mime_type"

    if-nez v6, :cond_c

    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_b

    invoke-static {v6}, extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v10, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_c

    invoke-static {v6}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v10, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    const-string v6, "format"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    if-nez v6, :cond_e

    move v6, v8

    goto :goto_6

    :cond_e
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_6
    const/16 v15, 0x3001

    if-ne v6, v15, :cond_f

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v2, v12, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_7
    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_12

    const-string v11, "/"

    invoke-virtual {v14, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v14, v11, v8

    invoke-virtual {v6, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_11

    goto :goto_8

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MIME type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cannot be inserted into "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; expected MIME type under "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v11, v8

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/*"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    :goto_8
    invoke-virtual {v2, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1b

    const-string v11, "relative_path"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_16

    const-string v14, "primary_directory"

    invoke-virtual {v2, v14}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "secondary_directory"

    invoke-virtual {v2, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_13

    move-object v14, v5

    :cond_13
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_14

    move-object/from16 v15, v16

    :cond_14
    if-eqz v14, :cond_16

    const/16 v5, 0x2f

    if-eqz v15, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_15
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v11, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_9
    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, sanitizePath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, sanitizeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :try_start_0
    invoke-static {v3}, getVolumePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-static {v3, v5}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz p3, :cond_17

    :try_start_1
    invoke-static {v3, v6, v9}, Landroid/os/FileUtils;->buildUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    goto :goto_a

    :cond_17
    invoke-static {v3, v6, v9}, Landroid/os/FileUtils;->buildNonUniqueFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_a
    aget-object v5, v5, v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p4

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    invoke-interface {v7, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    goto :goto_b

    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Primary directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not allowed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; allowed directories are "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    :goto_b
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    :cond_1a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to build unique file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1b
    invoke-static/range {p0 .. p2}, assertFileColumnsSane(ILandroid/net/Uri;Landroid/content/ContentValues;)V

    :goto_c
    if-eq v0, v13, :cond_1c

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x77

    if-eq v0, v1, :cond_1c

    const/16 v1, 0xcb

    if-eq v0, v1, :cond_1c

    :goto_d
    const-wide/32 v0, 0x100000

    goto :goto_e

    :cond_1c
    invoke-virtual {v2, v10}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_d

    :goto_e
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method static ensureFileColumns(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/media/MediaProvider$VolumeArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, ensureNonUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V

    return-void
.end method

.method private static ensureNonUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/media/MediaProvider$VolumeArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, ensureFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;ZLjava/lang/String;)V

    return-void
.end method

.method private ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0}, isCallingPackageAllowedHidden()Z

    move-result v0

    invoke-static {p1, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v0

    const-wide/32 v1, 0x100000

    const-string v3, "ensureThumbnail"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/16 v4, 0x65

    if-eq v0, v4, :cond_5

    const/16 v4, 0x75

    if-eq v0, v4, :cond_1

    const/16 v4, 0xc9

    if-ne v0, v4, :cond_0

    :try_start_0
    iget-object v4, p0, mVideoThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v4, p1, p2}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {p0, v3}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1

    :cond_0
    :try_start_1
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-direct {p2}, Ljava/io/FileNotFoundException;-><init>()V

    throw p2

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :catch_0
    move-exception p2

    goto/16 :goto_1

    :cond_1
    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    const-string v7, "_id"

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "album_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    move-object v11, p2

    invoke-virtual/range {v5 .. v11}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x0

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    iget-object v7, p0, mAudioThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v7, v4, p2}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_2

    :try_start_3
    invoke-static {v6, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    invoke-virtual {p0, v3}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p2

    :cond_3
    :try_start_4
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No media for album "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v4

    if-eqz v5, :cond_4

    :try_start_6
    invoke-static {p2, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw v4

    :cond_5
    iget-object v4, p0, mAudioThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v4, p1, p2}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p1

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, mImageThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v4, p1, p2}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p1
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :goto_1
    :try_start_7
    const-string v4, "MediaProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ensureThumbnail failed from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', match = "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    invoke-virtual {p0, v3}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw p1
.end method

.method private static ensureUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/media/MediaProvider$VolumeArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, ensureFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;ZLjava/lang/String;)V

    return-void
.end method

.method private static extractDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static extractPathOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, PATTERN_OWNED_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method

.method private static extractRelativePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    sget-object v1, PATTERN_RELATIVE_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, "/"

    return-object p0

    :cond_3
    return-object v0
.end method

.method private static extractVolumeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, PATTERN_VOLUME_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "emulated"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "external_primary"

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/os/storage/StorageVolume;->normalizeUuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "internal"

    return-object p0
.end method

.method private forEachContributedMedia(Ljava/lang/String;Ljava/util/function/Consumer;)J
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)J"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    iget-object v3, v1, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    new-instance v4, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v4}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v6, "files"

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x1

    new-array v7, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v0, v7, v14

    const-string v8, "owner_package_name=?"

    invoke-static {v8, v7}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " AND NOT "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " REGEXP \'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, PATTERN_OWNED_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v15

    :try_start_0
    const-string v6, "volume_name"

    const-string v8, "_id"

    const-string v9, "_size"

    filled-new-array {v6, v8, v9, v7}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const-wide/16 v6, 0x0

    :goto_0
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v8, :cond_1

    :try_start_2
    invoke-interface {v4, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x2

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    const/4 v13, 0x3

    invoke-interface {v4, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "MediaProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " with size "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    invoke-static {v8, v9, v10}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    add-long/2addr v6, v11

    const/4 v13, 0x1

    const/4 v14, 0x0

    move-object/from16 v1, p0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    const/4 v0, 0x0

    :try_start_3
    invoke-static {v0, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_3

    :cond_2
    :goto_1
    move-object/from16 v1, p0

    invoke-virtual {v1, v15}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    return-wide v6

    :catchall_2
    move-exception v0

    :goto_2
    move-object v2, v0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v4, :cond_3

    :try_start_5
    invoke-static {v2, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception v0

    :goto_3
    invoke-virtual {v1, v15}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw v0
.end method

.method private getCallingPackageOrSelf()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-virtual {p0}, Lcom/android/providers/media/LocalCallingIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCallingPackageTargetSdkVersion()I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-virtual {p0}, Lcom/android/providers/media/LocalCallingIdentity;->getTargetSdkVersion()I

    move-result p0

    return p0
.end method

.method private getCollectionIcon(Landroid/net/Uri;)Landroid/graphics/drawable/Icon;
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p1, "android.permission-group.STORAGE"

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object p0

    iget-object p1, p0, Landroid/content/pm/PermissionGroupInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/PermissionGroupInfo;->icon:I

    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/media/MediaProvider$VolumeNotFoundException;
        }
    .end annotation

    invoke-static {p1}, resolveVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, mInternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    return-object p0

    :cond_0
    iget-object p0, p0, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    return-object p0

    :cond_1
    :try_start_1
    new-instance p0, Lcom/android/providers/media/MediaProvider$VolumeNotFoundException;

    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaProvider$VolumeNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getDatabaseVersion(Landroid/content/Context;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget p0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t get version code for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getDefaultTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, getTitleFromResourceUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting default title for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaProvider"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method private getDefaultTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    const-string v0, "title_resource_uri"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v0}, getDefaultTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "title"

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getExternalVolumeNames()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    sget-object v2, sCachedExternalVolumeNames:Ljava/util/Set;

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;Landroid/net/Uri;)J
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/providers/media/MediaProvider$DatabaseHelper;",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/net/Uri;",
            ")J"
        }
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p9

    move-object/from16 v13, p11

    const-string v1, "<unknown>"

    if-eqz p6, :cond_1

    invoke-virtual/range {p6 .. p6}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v14, p6

    goto :goto_1

    :cond_1
    :goto_0
    move-object v14, v1

    :goto_1
    invoke-static {v14}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v15, -0x1

    const-string v8, "MediaProvider"

    if-nez v2, :cond_2

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    const-string v1, "null key"

    invoke-static {v8, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-wide v15

    :cond_2
    const-string v3, "albums"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    invoke-static/range {p8 .. p8}, Lcom/android/providers/media/MediaProviderRingtoneUtils;->isRingtonePath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move/from16 v17, v7

    goto :goto_2

    :cond_3
    move/from16 v17, v6

    :goto_2
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v17, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v18, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    move-object v5, v2

    new-array v4, v7, [Ljava/lang/String;

    aput-object v5, v4, v6

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v23, v4

    move-object/from16 v4, v19

    move-object v15, v5

    move-object/from16 v5, v23

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move-object v10, v8

    move-object/from16 v8, v22

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "/"

    const-string v4, "/audio/"

    const-string v5, "content://media/"

    if-eqz v2, :cond_7

    const/4 v6, 0x1

    if-eq v2, v6, :cond_5

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple entries in table "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for key "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v7, -0x1

    goto/16 :goto_3

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v6, p0

    invoke-virtual {v6, v14, v2}, makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v14, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "rowid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-int v11, v7

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v14, v10, v11}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x18

    const/16 v11, 0x10

    invoke-virtual {v0, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    if-eqz v17, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    invoke-virtual {v13, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    move-object/from16 v6, p0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object/from16 v7, p4

    invoke-virtual {v2, v7, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v11, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "duration"

    invoke-virtual {v0, v9, v7, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v0, v7, v10

    if-lez v0, :cond_8

    invoke-virtual/range {p12 .. p12}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x18

    const/16 v10, 0x10

    invoke-virtual {v0, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_8
    :goto_3
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v13, :cond_9

    if-nez v18, :cond_9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v1, p7

    invoke-virtual {v13, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    return-wide v7

    :catchall_0
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private getLocalizedTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, getTitleFromResourceUri(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting localized title for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaProvider"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
.end method

.method private getObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;
    .locals 8

    sget-object v2, sMediaTableColumns:[Ljava/lang/String;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    aput-object p1, v4, p3

    const-string v1, "files"

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-interface {p1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :cond_0
    :try_start_1
    const-string v0, "SELECT audio_id FROM audio_playlists_map WHERE playlist_id=? ORDER BY play_order"

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, p3

    invoke-virtual {p2, v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0
.end method

.method private static getOrCreateUuid(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;
    .locals 5

    const-string v0, "user.uuid"

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/system/Os;->getxattr(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    iget v2, v1, Landroid/system/ErrnoException;->errno:I

    sget v3, Landroid/system/OsConstants;->ENODATA:I

    if-ne v2, v3, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_1
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {p0, v0, v3, v4}, Landroid/system/Os;->setxattr(Ljava/lang/String;Ljava/lang/String;[BI)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v2

    :catch_1
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 9

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p3

    const-string v0, "/"

    invoke-static {v0, p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_0
    iget-object v0, p0, mDirectoryCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mDirectoryCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v0, "_id"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p3, v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "files"

    const-string v4, "_data=?"

    move-object v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    if-eqz v1, :cond_3

    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    iget-object v0, p0, mDirectoryCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_2
    iget-object p0, p0, mDirectoryCache:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, p3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_4

    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw p1

    :catchall_3
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw p0
.end method

.method static getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, sProjectionMapCache:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    sget-object v1, sProjectionMapCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    if-nez v1, :cond_1

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    sget-object v2, sProjectionMapCache:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    const-class v5, Landroid/provider/Column;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->isAnnotationPresent(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private getQueryBuilder(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "getQueryBuilder"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, getQueryBuilderInternal(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method private getQueryBuilderInternal(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_1
    :goto_0
    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v6

    :goto_1
    new-instance v8, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string v9, "distinct"

    invoke-virtual {v2, v9}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, parseBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    :cond_3
    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionAggregationAllowed(Z)V

    invoke-virtual {v8, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    invoke-direct/range {p0 .. p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "external"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, getExternalVolumeNames()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, bindList([Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_2

    :cond_4
    new-array v11, v5, [Ljava/lang/Object;

    aput-object v10, v11, v6

    invoke-static {v11}, bindList([Ljava/lang/Object;)Ljava/lang/String;

    :goto_2
    invoke-direct {v0, v9}, getSharedPackages(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v2, v7}, checkCallingPermissionGlobal(Landroid/net/Uri;Z)Z

    move-result v11

    invoke-direct {v0, v2, v7, v9}, checkCallingPermissionLegacy(Landroid/net/Uri;ZLjava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    if-nez v7, :cond_5

    move v13, v5

    goto :goto_3

    :cond_5
    move v13, v6

    :goto_3
    const-string v14, "includePending"

    invoke-virtual {v2, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, parseBoolean(Ljava/lang/String;)Z

    move-result v14

    const-string v15, "includeTrashed"

    invoke-virtual {v2, v15}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, parseBoolean(Ljava/lang/String;)Z

    move-result v15

    const-string v6, "is_trashed=?"

    const-string v4, "is_pending=?"

    const-string v5, "owner_package_name IN "

    const-string v2, "files"

    move/from16 v17, v14

    const-string v14, "media_type=?"

    move/from16 v18, v15

    const/4 v15, 0x1

    if-eq v3, v15, :cond_29

    const-string v15, "_id=?"

    move/from16 v19, v12

    const/4 v12, 0x2

    if-eq v3, v12, :cond_28

    const/4 v12, 0x4

    if-eq v3, v12, :cond_27

    const/4 v12, 0x5

    if-eq v3, v12, :cond_26

    const/16 v12, 0xc8

    if-eq v3, v12, :cond_22

    const/16 v12, 0xc9

    if-eq v3, v12, :cond_21

    const/16 v12, 0xcb

    if-eq v3, v12, :cond_20

    const/16 v12, 0xcc

    if-eq v3, v12, :cond_1f

    const/16 v12, 0x2c2

    if-eq v3, v12, :cond_18

    const v12, 0xd348

    move/from16 v20, v13

    const-string v13, "_id"

    if-eq v3, v12, :cond_17

    const/16 v12, 0x320

    if-eq v3, v12, :cond_12

    const/16 v12, 0x321

    if-eq v3, v12, :cond_11

    const-string v12, "numsongs_by_artist"

    move-object/from16 v21, v6

    const-string v6, "0"

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown or unsupported URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x2

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    const/16 v16, 0x0

    aput-object v12, v6, v16

    invoke-static {v8, v15, v6}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v17, v3

    move/from16 v18, v17

    :goto_4
    move-object/from16 v12, v21

    goto/16 :goto_10

    :pswitch_1
    const/4 v3, 0x1

    goto :goto_4

    :pswitch_2
    const/4 v3, 0x1

    const/16 v16, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v16

    const-string v3, "album_id=?"

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_3
    const-string v2, "album_art"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Landroid/util/ArrayMap;

    const-class v3, Landroid/provider/MediaStore$Audio$Thumbnails;

    invoke-static {v3}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const-string v3, "album_id AS _id"

    invoke-virtual {v2, v13, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    const/4 v2, 0x0

    invoke-direct {v0, v2, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_4
    if-nez v1, :cond_6

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "audio LEFT OUTER JOIN album_art ON audio.album_id=album_art.album_id"

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const-string v4, "is_music=1 AND audio.album_id IN (SELECT album_id FROM artists_albums_map WHERE artist_id=?)"

    invoke-static {v8, v4, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v3, Landroid/util/ArrayMap;

    const-class v4, Landroid/provider/MediaStore$Audio$Artists$Albums;

    invoke-static {v4}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const-string v4, "album_art"

    const-string v5, "album_art._data AS album_art"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "numsongs"

    const-string v5, "count(*) AS numsongs"

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count(CASE WHEN artist_id=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " THEN \'foo\' ELSE NULL END) AS "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v12, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "minyear"

    const-string v4, "MIN(year) AS minyear"

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "maxyear"

    const-string v4, "MAX(year) AS maxyear"

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "album_id"

    const-string v4, "audio.album_id AS album_id"

    invoke-virtual {v3, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    const/4 v2, 0x0

    invoke-direct {v0, v2, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Albums cannot be directly modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v8, v15, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_6
    if-nez v1, :cond_7

    const-string v2, "album_info"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Landroid/util/ArrayMap;

    const-class v3, Landroid/provider/MediaStore$Audio$Albums;

    invoke-static {v3}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const-string v3, "NULL AS numsongs_by_artist"

    invoke-virtual {v2, v12, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "album_id"

    const-string v4, "_id AS album_id"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    const/4 v2, 0x0

    invoke-direct {v0, v2, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Albums cannot be directly modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_7
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v8, v15, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_8
    if-nez v1, :cond_8

    const-string v2, "artist_info"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Artists;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    const/4 v2, 0x0

    invoke-direct {v0, v2, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_8
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Artists cannot be directly modified"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_9
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "audio_playlists_map._id=?"

    invoke-static {v8, v4, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_a
    const/4 v2, 0x1

    const/4 v5, 0x0

    :goto_5
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "playlist_id=?"

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_9

    const-string v2, "audio_playlists_map, audio"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Landroid/util/ArrayMap;

    const-class v3, Landroid/provider/MediaStore$Audio$Playlists$Members;

    invoke-static {v3}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const-string v3, "audio_playlists_map._id AS _id"

    invoke-virtual {v2, v13, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/4 v3, 0x0

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "audio._id = audio_id"

    invoke-static {v8, v4, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    const-string v2, "audio_playlists_map"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_6
    if-nez v11, :cond_2d

    invoke-direct {v0, v3, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_b
    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v12, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v13, 0x3

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v12, v3

    invoke-static {v8, v15, v12}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    :pswitch_c
    if-nez v1, :cond_a

    const-string v2, "audio_playlists"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Playlists;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/4 v12, 0x0

    goto :goto_7

    :cond_a
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v12, 0x0

    aput-object v2, v3, v12

    invoke-static {v8, v14, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_7
    if-nez v11, :cond_b

    invoke-direct {v0, v7, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    const/4 v2, 0x1

    if-nez v17, :cond_c

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v12

    invoke-static {v8, v4, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c
    if-nez v18, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    move-object/from16 v3, v21

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_d
    const/4 v12, 0x0

    goto :goto_8

    :pswitch_e
    const/4 v2, 0x1

    const/4 v12, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v12

    const-string v3, "genre_id=?"

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-nez v1, :cond_d

    const-string v2, "audio_genres_map_noid, audio"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Genres$Members;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    new-array v2, v12, [Ljava/lang/Object;

    const-string v3, "audio._id = audio_id"

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_9

    :cond_d
    const-string v2, "audio_genres_map"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :goto_9
    if-nez v11, :cond_2d

    invoke-direct {v0, v12, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_f
    const/4 v2, 0x1

    const/4 v12, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {v8, v15, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :pswitch_10
    const/4 v12, 0x0

    :goto_a
    const-string v2, "audio_genres"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Genres;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    invoke-direct {v0, v12, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_11
    const/4 v2, 0x1

    const/4 v12, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x5

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v12

    invoke-static {v8, v15, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_12
    const-string v2, "audio_playlists"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Playlists;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "_id IN (SELECT playlist_id FROM audio_playlists_map WHERE audio_id=?)"

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v11, :cond_2d

    invoke-direct {v0, v4, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_13
    const/4 v2, 0x1

    const/4 v4, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v5, 0x5

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v8, v15, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :pswitch_14
    const-string v2, "audio_genres"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Genres;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v12, 0x0

    aput-object v3, v2, v12

    const-string v3, "_id IN (SELECT genre_id FROM audio_genres_map WHERE audio_id=?)"

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v11, :cond_2d

    invoke-direct {v0, v12, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v8, v6, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :pswitch_15
    move-object/from16 v3, v21

    const/4 v6, 0x1

    const/4 v12, 0x0

    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v3, 0x3

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v13, v12

    invoke-static {v8, v15, v13}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    :pswitch_16
    if-nez v1, :cond_e

    const-string v2, "audio"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Audio$Media;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_b

    :cond_e
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v8, v14, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_b
    if-nez v11, :cond_f

    invoke-direct {v0, v7, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR is_ringtone=1 OR is_alarm=1 OR is_notification=1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v5}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v8, v2, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_c

    :cond_f
    const/4 v3, 0x0

    :goto_c
    const/4 v6, 0x1

    if-nez v17, :cond_10

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v8, v4, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_10
    if-nez v18, :cond_2d

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v12, v21

    invoke-static {v8, v12, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_11
    move-object v12, v6

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v9, 0x2

    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v7, v3

    invoke-static {v8, v15, v7}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    goto :goto_d

    :cond_12
    move-object v12, v6

    :goto_d
    if-nez v1, :cond_13

    const-string v2, "downloads"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Downloads;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto :goto_e

    :cond_13
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "is_download=1"

    invoke-static {v8, v2, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_14

    if-nez v20, :cond_14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v19, :cond_14

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/Object;

    const-string v3, "external_primary"

    aput-object v3, v6, v5

    const-string v3, "volume_name=?"

    invoke-static {v3, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_15

    const-string v3, " OR "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v8, v2, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    :cond_15
    const/4 v3, 0x0

    :goto_f
    const/4 v2, 0x1

    if-nez v17, :cond_16

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v8, v4, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_16
    if-nez v18, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v8, v12, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_17
    const-string v2, "op_debug"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    invoke-virtual {v2, v13, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_tag"

    const-string v4, "_tag"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_action"

    const-string v4, "_action"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_uri"

    const-string v4, "_uri"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sel"

    const-string v4, "sel"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "sel_arg"

    const-string v4, "sel_arg"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "_pkg_name"

    const-string v4, "_pkg_name"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "datetime"

    const-string v4, "datetime"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    goto/16 :goto_16

    :cond_18
    move-object v12, v6

    move/from16 v20, v13

    :goto_10
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Files$FileColumns;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-nez v11, :cond_1c

    if-nez v20, :cond_1c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v3, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    if-eqz v19, :cond_19

    new-array v6, v3, [Ljava/lang/Object;

    const-string v10, "external_primary"

    aput-object v10, v6, v5

    const-string v10, "volume_name=?"

    invoke-static {v10, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_19
    invoke-direct {v0, v7, v9}, checkCallingPermissionAudio(ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v10, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-static {v14, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-static {v14, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "media_type=0 AND mime_type LIKE \'audio/%\'"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-direct {v0, v7, v9}, checkCallingPermissionVideo(ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1b

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v10, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    invoke-static {v14, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, "media_type=0 AND mime_type LIKE \'video/%\'"

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    invoke-direct {v0, v7, v9}, checkCallingPermissionImages(ZLjava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1c

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v14, v6}, Landroid/database/DatabaseUtils;->bindSelection(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "media_type=0 AND mime_type LIKE \'image/%\'"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1d

    const-string v3, " OR "

    invoke-static {v3, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v8, v2, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_11

    :cond_1d
    const/4 v3, 0x0

    :goto_11
    const/4 v2, 0x1

    if-nez v17, :cond_1e

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v8, v4, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1e
    if-nez v18, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v8, v12, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_1f
    const/4 v2, 0x1

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v8, v15, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    const-string v2, "videothumbnails"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Video$Thumbnails;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    invoke-direct {v0, v7, v9}, checkCallingPermissionVideo(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "video_id IN (SELECT _id FROM video WHERE owner_package_name IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_21
    move-object v12, v6

    const/4 v3, 0x0

    const/4 v6, 0x1

    new-array v13, v6, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    move-object/from16 v21, v12

    const/4 v12, 0x3

    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v13, v3

    invoke-static {v8, v15, v13}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    goto :goto_12

    :cond_22
    move-object/from16 v21, v6

    :goto_12
    if-nez v1, :cond_23

    const-string v2, "video"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Video$Media;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/4 v6, 0x0

    goto :goto_13

    :cond_23
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x0

    aput-object v2, v3, v6

    invoke-static {v8, v14, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_13
    if-nez v11, :cond_24

    invoke-direct {v0, v7, v9}, checkCallingPermissionVideo(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_24

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_24
    const/4 v2, 0x1

    if-nez v17, :cond_25

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    invoke-static {v8, v4, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_25
    if-nez v18, :cond_2d

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    move-object/from16 v3, v21

    invoke-static {v8, v3, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_26
    const/4 v2, 0x1

    const/4 v6, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v8, v15, v2}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_27
    const-string v2, "thumbnails"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v2, Landroid/util/ArrayMap;

    const-class v3, Landroid/provider/MediaStore$Images$Thumbnails;

    invoke-static {v3}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    const-string v3, "thumb_data"

    const-string v4, "NULL AS thumb_data"

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    if-nez v11, :cond_2d

    invoke-direct {v0, v7, v9}, checkCallingPermissionImages(ZLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image_id IN (SELECT _id FROM images WHERE owner_package_name IN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v8, v2, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_16

    :cond_28
    move-object v3, v6

    const/4 v6, 0x0

    const/4 v12, 0x1

    new-array v13, v12, [Ljava/lang/Object;

    invoke-virtual/range {p2 .. p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v12

    move-object/from16 v21, v3

    const/4 v3, 0x3

    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v13, v6

    invoke-static {v8, v15, v13}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v17, 0x1

    const/16 v18, 0x1

    goto :goto_14

    :cond_29
    move-object/from16 v21, v6

    :goto_14
    if-nez v1, :cond_2a

    const-string v2, "images"

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-class v2, Landroid/provider/MediaStore$Images$Media;

    invoke-static {v2}, getProjectionMap(Ljava/lang/Class;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const/4 v2, 0x0

    goto :goto_15

    :cond_2a
    invoke-virtual {v8, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v2, 0x0

    aput-object v6, v3, v2

    invoke-static {v8, v14, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_15
    if-nez v11, :cond_2b

    invoke-direct {v0, v7, v9}, checkCallingPermissionImages(ZLjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v8, v3, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2b
    const/4 v3, 0x1

    if-nez v17, :cond_2c

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v8, v4, v5}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2c
    if-nez v18, :cond_2d

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    move-object/from16 v2, v21

    invoke-static {v8, v2, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2d
    :goto_16
    if-nez v1, :cond_2f

    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->getProjectionMap()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v0

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2f

    sget-object v0, sGreylist:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionGreylist(Ljava/util/List;)V

    goto :goto_17

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "All queries must have a projection map"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_17
    return-object v8

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2bc
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRedactionRanges(Ljava/io/File;)Lcom/android/providers/media/MediaProvider$RedactionInfo;
    .locals 20

    move-object/from16 v1, p1

    const-wide/32 v2, 0x100000

    const-string v0, "getRedactionRanges"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v4, Landroid/util/LongArray;

    invoke-direct {v4}, Landroid/util/LongArray;-><init>()V

    new-instance v5, Landroid/util/LongArray;

    invoke-direct {v5}, Landroid/util/LongArray;-><init>()V

    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    new-instance v7, Landroid/media/ExifInterface;

    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    sget-object v8, REDACTED_EXIF_TAGS:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    move v11, v10

    :goto_0
    if-ge v11, v9, :cond_1

    aget-object v12, v8, v11

    invoke-virtual {v7, v12}, Landroid/media/ExifInterface;->getAttributeRange(Ljava/lang/String;)[J

    move-result-object v12

    if-eqz v12, :cond_0

    aget-wide v13, v12, v10

    invoke-virtual {v4, v13, v14}, Landroid/util/LongArray;->add(J)V

    aget-wide v13, v12, v10

    const/4 v15, 0x1

    aget-wide v15, v12, v15

    add-long/2addr v13, v15

    invoke-virtual {v4, v13, v14}, Landroid/util/LongArray;->add(J)V

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-static {v8}, Lcom/android/providers/media/util/IsoInterface;->fromFileDescriptor(Ljava/io/FileDescriptor;)Lcom/android/providers/media/util/IsoInterface;

    move-result-object v8

    sget-object v9, REDACTED_ISO_BOXES:[I

    array-length v11, v9

    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_3

    aget v13, v9, v12

    invoke-virtual {v8, v13}, Lcom/android/providers/media/util/IsoInterface;->getBoxRanges(I)[J

    move-result-object v13

    move v14, v10

    :goto_2
    array-length v15, v13

    if-ge v14, v15, :cond_2

    aget-wide v15, v13, v14

    const-wide/16 v17, 0x4

    move/from16 v19, v11

    sub-long v10, v15, v17

    invoke-virtual {v5, v10, v11}, Landroid/util/LongArray;->add(J)V

    invoke-virtual {v4, v10, v11}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v10, v14, 0x1

    aget-wide v10, v13, v10

    invoke-virtual {v4, v10, v11}, Landroid/util/LongArray;->add(J)V

    add-int/lit8 v14, v14, 0x2

    move/from16 v11, v19

    const/4 v10, 0x0

    goto :goto_2

    :cond_2
    move/from16 v19, v11

    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    new-instance v9, Landroid/util/ArraySet;

    sget-object v10, REDACTED_EXIF_TAGS:[Ljava/lang/String;

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v7, v9}, Lcom/android/providers/media/util/XmpInterface;->fromContainer(Landroid/media/ExifInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/util/XmpInterface;->getRedactionRanges()Landroid/util/LongArray;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V

    invoke-static {v8, v9}, Lcom/android/providers/media/util/XmpInterface;->fromContainer(Lcom/android/providers/media/util/IsoInterface;Ljava/util/Set;)Lcom/android/providers/media/util/XmpInterface;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/providers/media/util/XmpInterface;->getRedactionRanges()Landroid/util/LongArray;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/util/LongArray;->addAll(Landroid/util/LongArray;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v0, v6}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v7, v0

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v8, v0

    :try_start_4
    invoke-static {v7, v6}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to redact "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    new-instance v0, Lcom/android/providers/media/MediaProvider$RedactionInfo;

    invoke-virtual {v4}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    invoke-virtual {v5}, Landroid/util/LongArray;->toArray()[J

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/providers/media/MediaProvider$RedactionInfo;-><init>([J[J)V

    return-object v0
.end method

.method private getSharedPackages(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-virtual {p0}, Lcom/android/providers/media/LocalCallingIdentity;->getSharedPackageNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, bindList([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleFromResourceUri(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.resource"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "Error getting localized title for "

    const-string v6, "MediaProvider"

    if-eq v3, v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", must have 2 path segments"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v7, "string"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", first path segment must be \"string\""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_4

    iget-object p0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0, p2}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    :goto_0
    const/4 p2, 0x1

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVolumePath(Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    sget-object v0, sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, sCachedVolumes:Ljava/util/List;

    invoke-static {v1, p0}, Landroid/provider/MediaStore;->getVolumePath(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getVolumeScanPaths(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    sget-object v0, sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, sCachedVolumeScanPaths:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static hasOwnerPackageName(Landroid/net/Uri;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/16 v1, 0xcb

    if-eq p0, v1, :cond_0

    const/16 v1, 0xcc

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v0

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x77
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
    .locals 3

    sget-boolean v0, LOCAL_LOGV:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inserting directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/16 v1, 0x3001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "format"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "_data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "parent"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {p3}, extractPathOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "owner_package_name"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, extractVolumeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "volume_name"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, extractRelativePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "relative_path"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "_display_name"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p3}, Landroid/provider/MediaStore$Downloads;->isDownload(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string p1, "is_download"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    const-string p3, "date_modified"

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->lastModified()J

    move-result-wide p0

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    const-string p0, "files"

    invoke-virtual {p2, p0, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method private insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J
    .locals 30

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v15, p4

    move/from16 v13, p5

    sget-boolean v1, LOCAL_LOGV:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertFile: uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mediaType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertFile from {P:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";U:"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "} : "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "MediaProvider"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    move-object/from16 v12, p3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v11

    const-string v1, "_data"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v10, 0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_2

    const-string v1, "_data"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move/from16 v16, v9

    goto :goto_2

    :cond_2
    :goto_1
    move/from16 v16, v10

    :goto_2
    const-wide/16 v17, 0x0

    :try_start_0
    invoke-static/range {p2 .. p4}, ensureUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v19, 0x3e8

    const/4 v8, 0x3

    const/4 v7, 0x2

    if-eq v13, v10, :cond_e

    if-eq v13, v7, :cond_5

    if-eq v13, v8, :cond_4

    :cond_3
    :goto_3
    move/from16 v21, v9

    move-object/from16 p6, v11

    move-object v2, v14

    move-object v5, v15

    goto/16 :goto_e

    :cond_4
    iget-boolean v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v1, :cond_3

    invoke-static/range {p4 .. p4}, Lcom/android/providers/media/MediaProviderUtils;->reComputeExifTakenTime(Landroid/content/ContentValues;)V

    goto :goto_3

    :cond_5
    const-string v1, "album_artist"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v1, "compilation"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "compilation"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "artist"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, ""

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    move-object v5, v1

    const-string v1, "artist"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Landroid/util/ArrayMap;

    const-string v1, "_data"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    monitor-enter v4

    :try_start_1
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_7

    const-string v22, "artists"

    const-string v23, "artist_key"

    const-string v24, "artist"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 p2, v3

    move-object v3, v11

    move-object/from16 v27, v4

    move-object/from16 v4, v22

    move-object/from16 v22, v5

    move-object/from16 v5, v23

    move-object/from16 v28, v6

    move-object/from16 v6, v24

    move-object/from16 v7, v22

    move-object/from16 v8, v22

    move-object/from16 v9, p2

    move/from16 v10, v25

    move-object/from16 p6, v11

    move-object/from16 v11, v26

    move-object/from16 v12, v27

    move-object/from16 v13, p3

    :try_start_2
    invoke-direct/range {v1 .. v13}, getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_5

    :cond_7
    move-object/from16 p2, v3

    move-object/from16 v27, v4

    move-object/from16 v22, v5

    move-object/from16 v28, v6

    move-object/from16 p6, v11

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_5
    move-wide v12, v1

    monitor-exit v27
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v1, "album"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_8

    const-string v1, ""

    goto :goto_6

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_6
    move-object v7, v1

    const-string v1, "album"

    invoke-virtual {v15, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Landroid/util/ArrayMap;

    monitor-enter v11

    if-eqz v21, :cond_9

    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->hashCode()I

    move-result v1

    move-object/from16 v9, p2

    move v8, v1

    :goto_7
    const/4 v10, 0x0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object/from16 v23, v11

    goto/16 :goto_c

    :cond_9
    move-object/from16 v1, v28

    if-eqz v1, :cond_a

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v9, p2

    const/4 v8, 0x0

    goto :goto_7

    :cond_a
    const/16 v1, 0x2f

    move-object/from16 v9, p2

    invoke-virtual {v9, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v8, v1

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_b

    const-string v4, "albums"

    const-string v5, "album_key"

    const-string v21, "album"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p6

    move-object/from16 v23, v6

    move-object/from16 v6, v21

    move/from16 v29, v8

    move-object/from16 v8, v23

    move/from16 v21, v10

    move/from16 v10, v29

    move-object/from16 v23, v11

    move-object/from16 v11, v22

    move-wide v14, v12

    move-object/from16 v12, v23

    move-object/from16 v13, p3

    :try_start_4
    invoke-direct/range {v1 .. v13}, getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_9

    :cond_b
    move/from16 v21, v10

    move-object/from16 v23, v11

    move-wide v14, v12

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_9
    monitor-exit v23
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    long-to-int v3, v14

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "artist_id"

    move-object/from16 v5, p4

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "album_id"

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_c

    const-string v1, ""

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    move-object/from16 v2, p0

    :try_start_5
    invoke-direct {v2, v1}, getLocalizedTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_d

    const-string v4, "title_resource_uri"

    invoke-virtual {v5, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_b

    :cond_d
    const-string v3, "title_resource_uri"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_b

    :catch_0
    const-string v3, "title_resource_uri"

    invoke-virtual {v5, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "title_key"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v3, "title"

    invoke-virtual {v5, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :goto_c
    :try_start_6
    monitor-exit v23
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_c

    :catchall_2
    move-exception v0

    move-object/from16 v27, v4

    :goto_d
    :try_start_7
    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_d

    :cond_e
    move/from16 v21, v9

    move-object/from16 p6, v11

    move-object v2, v14

    move-object v5, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "date_added"

    invoke-virtual {v5, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget-boolean v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v1, :cond_f

    invoke-static/range {p4 .. p4}, Lcom/android/providers/media/MediaProviderUtils;->reComputeExifTakenTime(Landroid/content/ContentValues;)V

    :cond_f
    :goto_e
    const-string v1, "_data"

    invoke-virtual {v5, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static/range {p4 .. p4}, computeDataValues(Landroid/content/ContentValues;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    div-long v3, v3, v19

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "date_added"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "media_scanner_new_object_id"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_10

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v3, v3

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6, v5}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v5, "media_scanner_new_object_id"

    invoke-virtual {v6, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object v5, v6

    goto :goto_f

    :cond_10
    move-wide/from16 v3, v17

    :goto_f
    const-string v6, "title"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_11

    if-eqz v1, :cond_11

    invoke-static {v1}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_11
    const-string v7, "title"

    invoke-virtual {v5, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x3001

    if-eqz v1, :cond_12

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_12

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "format"

    invoke-virtual {v5, v9, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "mime_type"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    move/from16 v8, p5

    move v10, v7

    const/4 v9, 0x0

    const/4 v11, 0x2

    goto :goto_11

    :cond_12
    const-string v8, "mime_type"

    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "format"

    invoke-virtual {v5, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    if-nez v9, :cond_13

    move/from16 v9, v21

    goto :goto_10

    :cond_13
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_10
    move v10, v9

    const/4 v11, 0x2

    move-object v9, v8

    move/from16 v8, p5

    :goto_11
    if-ne v8, v11, :cond_14

    if-eqz v9, :cond_14

    const-string v12, "audio"

    invoke-virtual {v9, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_14

    const-string v12, "application/ogg"

    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Clear the invalid media mime type ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] for "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v12, "MediaProvider"

    invoke-static {v12, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    :cond_14
    const/4 v12, 0x4

    if-nez v10, :cond_17

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_16

    if-eqz v16, :cond_15

    goto :goto_12

    :cond_15
    invoke-static {v1, v9}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    goto :goto_13

    :cond_16
    :goto_12
    if-ne v8, v12, :cond_17

    const v1, 0xba05

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v13, "format"

    invoke-virtual {v5, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, "/Playlists/"

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "name"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v13, "_data"

    invoke-virtual {v5, v13, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "parent"

    invoke-virtual {v5, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_17
    :goto_13
    if-eqz v1, :cond_18

    const-string v13, "/"

    invoke-virtual {v1, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "directory has trailing slash: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_18
    if-eqz v10, :cond_19

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const-string v14, "format"

    invoke-virtual {v5, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-nez v9, :cond_19

    if-eq v10, v7, :cond_19

    invoke-static {v10}, Landroid/media/MediaFile;->getMimeTypeForFormatCode(I)Ljava/lang/String;

    move-result-object v9

    :cond_19
    if-nez v9, :cond_1a

    if-eqz v1, :cond_1a

    if-eq v10, v7, :cond_1a

    invoke-static {v1}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_1a
    if-eqz v9, :cond_21

    const-string v13, "_display_name"

    invoke-virtual {v5, v13}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-static {v1}, extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "_display_name"

    invoke-virtual {v5, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    const-string v13, "mime_type"

    invoke-virtual {v5, v13, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v14

    if-eqz v14, :cond_1c

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v14

    goto :goto_14

    :cond_1c
    move-wide/from16 v14, v17

    :goto_14
    invoke-virtual {v13}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    goto :goto_15

    :cond_1d
    move-wide/from16 v14, v17

    const/4 v13, 0x0

    :goto_15
    invoke-static {v1}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_21

    const-string v6, "media_type"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_21

    if-nez v8, :cond_21

    cmp-long v6, v14, v17

    if-nez v6, :cond_21

    if-eqz v13, :cond_21

    invoke-static {v13}, Lcom/android/providers/media/MediaProviderUtils;->isProtectedMediaPath(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    invoke-static {v9}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1e

    goto :goto_16

    :cond_1e
    invoke-static {v9}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1f

    const/4 v11, 0x3

    goto :goto_16

    :cond_1f
    invoke-static {v9}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    const/4 v11, 0x1

    goto :goto_16

    :cond_20
    invoke-static {v9}, Landroid/media/MediaFile;->isPlayListMimeType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_21

    move v11, v12

    goto :goto_16

    :cond_21
    move v11, v8

    :goto_16
    if-lez v11, :cond_25

    if-eqz v1, :cond_25

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_22

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    goto :goto_17

    :cond_22
    move-wide/from16 v8, v17

    :goto_17
    cmp-long v6, v8, v17

    if-eqz v6, :cond_25

    const-string v6, "_size"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    if-eqz v6, :cond_23

    const-string v6, "_size"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const/4 v6, 0x0

    :cond_23
    if-nez v6, :cond_25

    sget-boolean v6, DBG:Z

    if-eqz v6, :cond_24

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "insertFile: Update size("

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ") for "

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "MediaProvider"

    invoke-static {v13, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v8, "_size"

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_25
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v8, "media_type"

    invoke-virtual {v5, v8, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    cmp-long v6, v3, v17

    if-nez v6, :cond_2e

    if-ne v11, v12, :cond_27

    const-string v3, "name"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_28

    if-eqz v1, :cond_26

    goto :goto_18

    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no name was provided when inserting abstract playlist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_27
    if-eqz v1, :cond_2d

    :cond_28
    :goto_18
    if-eqz v1, :cond_2b

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2b

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    div-long v8, v8, v19

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "date_modified"

    invoke-virtual {v5, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "_size"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_29

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "_size"

    invoke-virtual {v5, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_29
    iget-boolean v3, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v3, :cond_2b

    const/4 v6, 0x1

    if-eq v11, v6, :cond_2a

    const/4 v3, 0x3

    if-ne v11, v3, :cond_2b

    :cond_2a
    invoke-static {v5}, Lcom/android/providers/media/MediaProviderUtils;->reComputeExifTakenTime(Landroid/content/ContentValues;)V

    :cond_2b
    const-string v3, "parent"

    invoke-virtual {v5, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    if-nez v3, :cond_2c

    if-eqz v1, :cond_2c

    move-object/from16 v8, p6

    invoke-direct {v2, v0, v8, v1}, getParent(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v3, "parent"

    invoke-virtual {v5, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_19

    :cond_2c
    move-object/from16 v8, p6

    :goto_19
    const-string v0, "files"

    const-string v3, "date_modified"

    invoke-virtual {v8, v0, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    goto :goto_1a

    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no path was provided when inserting new file"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2e
    move-object/from16 v8, p6

    const/4 v6, 0x1

    new-array v0, v6, [Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v21

    const-string v6, "files"

    const-string v9, "_id=?"

    invoke-virtual {v8, v6, v5, v9, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_1a
    if-ne v10, v7, :cond_2f

    iget-object v5, v2, mDirectoryCache:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_8
    iget-object v0, v2, mDirectoryCache:Landroid/util/ArrayMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5

    goto :goto_1b

    :catchall_4
    move-exception v0

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v0

    :cond_2f
    :goto_1b
    return-wide v3

    :catch_1
    move-exception v0

    move-object v2, v14

    move-object v1, v0

    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v0

    const/16 v2, 0x1d

    if-ge v0, v2, :cond_30

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v17

    :cond_30
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    move-object/from16 v8, p2

    invoke-direct/range {p0 .. p0}, isCallingPackageAllowedHidden()Z

    move-result v1

    invoke-static {v4, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v3

    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v9

    invoke-static/range {p1 .. p1}, resolveVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v10

    const/16 v2, 0x1f4

    if-ne v3, v2, :cond_0

    const-string v2, "volume"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, mMediaScannerVolume:Ljava/lang/String;

    :try_start_0
    iget-object v2, v0, mMediaScannerVolume:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    invoke-static {}, Landroid/provider/MediaStore;->getMediaScannerUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForInsert(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v2, 0x12c

    const-string v5, "name"

    if-ne v3, v2, :cond_2

    invoke-virtual {v8, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v0, mMediaScannerVolume:Ljava/lang/String;

    if-eqz v4, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    iget-object v2, v0, mMediaScannerVolume:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v2}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {}, Landroid/os/SystemClock;->currentTimeMicro()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mScanStartTime:J

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForInsert(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    const-string v2, "is_download"

    const-string v6, "_data"

    const-string v7, "owner_package_name"

    if-eqz v8, :cond_12

    sget-object v13, sDataColumns:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const-string v15, "MediaProvider"

    if-eqz v14, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v16

    if-nez v16, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, isCallingPackageSystem()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-direct/range {p0 .. p0}, isCallingPackageLegacy()Z

    move-result v16

    if-eqz v16, :cond_5

    goto :goto_1

    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring mutation of  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v15, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8, v14}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string v11, "genre"

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_d

    const-string v13, "external_primary"

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    :try_start_2
    invoke-static {v9}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    invoke-direct {v0, v13}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v17

    const-string v18, "files"

    sget-object v19, sIdDataColumn:[Ljava/lang/String;

    const-string v20, "_data=?"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v11, v14, v13

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v21, v14

    invoke-virtual/range {v17 .. v24}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v13, :cond_b

    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_b

    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertInternal: File already existed in db: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v0, PATTERN_ANDROID_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "insertInternal: return null here. yo"

    invoke-static {v15, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_8
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v1, 0x0

    return-object v1

    :cond_9
    :try_start_4
    const-string v0, "_id"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v9}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInternal: return existed uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_a
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v0

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_4

    :catchall_0
    move-exception v0

    const/4 v13, 0x0

    goto :goto_3

    :catch_3
    move-exception v0

    const/4 v13, 0x0

    :goto_2
    :try_start_5
    sget-boolean v1, DBG:Z

    if-eqz v1, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInternal: Checking error on \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_c
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v13, 0x0

    return-object v13

    :catchall_1
    move-exception v0

    :goto_3
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_d
    :goto_4
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    iget-object v15, v0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v15}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v15

    sget-object v13, sDefaultFolderNames:[Ljava/lang/String;

    invoke-static {v14, v15, v13, v8}, Lcom/android/providers/media/MediaProviderUtils;->correctDefaultPathLetters(Landroid/content/Context;Landroid/os/storage/StorageVolume;[Ljava/lang/String;Landroid/content/ContentValues;)V

    invoke-direct/range {p0 .. p0}, isCallingPackageSystem()Z

    move-result v13

    if-nez v13, :cond_e

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_e
    const-string v13, "latitude"

    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_f

    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_f
    const-string v13, "longitude"

    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    const-string v13, "longitude"

    invoke-virtual {v8, v13}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_10
    invoke-direct/range {p0 .. p0}, isCallingPackageSystem()Z

    move-result v13

    if-eqz v13, :cond_11

    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-static {v11}, extractPathOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_11
    invoke-virtual {v8, v7}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_12
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :cond_13
    :goto_5
    :try_start_6
    invoke-direct/range {p0 .. p1}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v14

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v15
    :try_end_6
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_6 .. :try_end_6} :catch_7

    move-object/from16 v17, v11

    const-string v11, "genre_id"

    move-object/from16 v19, v12

    const-string v12, "playlist_id"

    move-object/from16 v21, v11

    const-string v11, "audio_id"

    const-wide/16 v22, 0x0

    sparse-switch v3, :sswitch_data_0

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy/MM/dd_HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "datetime"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "op_debug"

    const-string v3, "_uri"

    invoke-virtual {v15, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_1
    invoke-direct {v0, v8, v7, v13}, maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v8, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    const-string v3, "media_type"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v10, v3, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v9}, Landroid/provider/MediaStore$Downloads;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_2
    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v8, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v14, v1, v2}, insertDirectory(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v9, v1, v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_3
    invoke-direct {v0, v8}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v9, v1, v2}, Landroid/provider/MediaStore$Files;->getMtpObjectsUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_4
    invoke-direct {v0, v8, v7, v13}, maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v10, v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v9, v1, v2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_5
    iget-boolean v2, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v2, :cond_14

    const-string v2, "video_id"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v10}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {v0, v2, v6}, enforceCallingPermission(Landroid/net/Uri;Z)V

    :try_start_7
    invoke-static {v3, v4, v8}, ensureUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_7
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_7 .. :try_end_7} :catch_4

    const-string v1, "videothumbnails"

    invoke-virtual {v15, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v9}, Landroid/provider/MediaStore$Video$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :catch_4
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForInsert(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to internal storage is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_6
    invoke-direct {v0, v8, v7, v13}, maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    const/4 v6, 0x3

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v10, v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v9}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_7
    iget-boolean v2, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v2, :cond_15

    :try_start_8
    invoke-static {v3, v4, v8}, ensureUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_8
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_8 .. :try_end_8} :catch_5

    const-string v1, "album_art"

    invoke-virtual {v15, v1, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :catch_5
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForInsert(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "no internal album art allowed"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_8
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, enforceCallingPermission(Landroid/net/Uri;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1, v2}, enforceCallingPermission(Landroid/net/Uri;Z)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v12, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "audio_playlists_map"

    invoke-virtual {v15, v2, v12, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v0, v15, v5, v6}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto/16 :goto_6

    :sswitch_9
    invoke-direct {v0, v8, v7, v13}, maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "date_added"

    invoke-virtual {v5, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v6, 0x4

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_a
    invoke-virtual {v8, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, enforceCallingPermission(Landroid/net/Uri;Z)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    move-object/from16 v3, v21

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "audio_genres_map"

    invoke-virtual {v15, v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_b
    const-string v1, "audio_genres"

    invoke-virtual {v15, v1, v11, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto/16 :goto_6

    :sswitch_c
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    const/4 v5, 0x1

    invoke-direct {v0, v3, v5}, enforceCallingPermission(Landroid/net/Uri;Z)V

    invoke-virtual {v8, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3, v5}, enforceCallingPermission(Landroid/net/Uri;Z)V

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "audio_playlists_map"

    invoke-virtual {v15, v1, v12, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    invoke-direct {v0, v15, v6, v7}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_6

    :sswitch_d
    move-object/from16 v3, v21

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v10}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, enforceCallingPermission(Landroid/net/Uri;Z)V

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, v8}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v5, v11, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "audio_genres_map"

    invoke-virtual {v15, v1, v3, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v4, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_6

    :sswitch_e
    invoke-direct {v0, v8, v7, v13}, maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    const/4 v6, 0x2

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v10, v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v9}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    if-eqz v19, :cond_16

    move-object/from16 v12, v19

    invoke-direct {v0, v1, v2, v12, v10}, updateGenre(JLjava/lang/String;Ljava/lang/String;)V

    :cond_16
    :goto_6
    const/4 v4, 0x1

    goto :goto_7

    :sswitch_f
    iget-boolean v2, v14, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v2, :cond_17

    const-string v2, "image_id"

    invoke-virtual {v8, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v10}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const/4 v6, 0x1

    invoke-direct {v0, v2, v6}, enforceCallingPermission(Landroid/net/Uri;Z)V

    :try_start_9
    invoke-static {v3, v4, v8}, ensureUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_9
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_9 .. :try_end_9} :catch_6

    const-string v1, "thumbnails"

    invoke-virtual {v15, v1, v5, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-static {v9}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForInsert(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Writing to internal storage is not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_10
    invoke-direct {v0, v8, v7, v13}, maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v8}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v7}, insertFile(Lcom/android/providers/media/MediaProvider$DatabaseHelper;ILandroid/net/Uri;Landroid/content/ContentValues;IZ)J

    move-result-wide v1

    cmp-long v3, v1, v22

    if-lez v3, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v10, v4, v1, v2}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V

    invoke-static {v9}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v11

    goto :goto_7

    :cond_18
    const/4 v4, 0x1

    const/4 v11, 0x0

    :goto_7
    iget-object v3, v0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/providers/media/LocalCallingIdentity;->setOwned(JZ)V

    if-eqz v17, :cond_19

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    move-object/from16 v2, v17

    invoke-virtual {v2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/.nomedia"

    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/providers/media/scan/MediaScanner;->scanFile(Ljava/io/File;)Landroid/net/Uri;

    :cond_19
    if-eqz v11, :cond_1a

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;

    invoke-direct {v0, v14}, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;-><init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V

    invoke-static {v0, v11}, acceptWithExpansion(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    :cond_1a
    return-object v11

    :catch_7
    move-exception v0

    invoke-virtual {v0, v1}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForInsert(I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_10
        0x4 -> :sswitch_f
        0x64 -> :sswitch_e
        0x66 -> :sswitch_d
        0x68 -> :sswitch_c
        0x6a -> :sswitch_b
        0x6c -> :sswitch_a
        0x6e -> :sswitch_9
        0x6f -> :sswitch_8
        0x70 -> :sswitch_8
        0x77 -> :sswitch_7
        0xc8 -> :sswitch_6
        0xcb -> :sswitch_5
        0x2bc -> :sswitch_4
        0x2be -> :sswitch_3
        0x2c2 -> :sswitch_2
        0x320 -> :sswitch_1
        0xd348 -> :sswitch_0
    .end sparse-switch
.end method

.method private invalidateThumbnails(Landroid/net/Uri;)V
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "invalidateThumbnails"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1}, invalidateThumbnailsInternal(Landroid/net/Uri;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method private invalidateThumbnailsInternal(Landroid/net/Uri;)V
    .locals 7

    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, mAudioThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v2, p1}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->invalidateThumbnail(Landroid/net/Uri;)V

    iget-object v2, p0, mVideoThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v2, p1}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->invalidateThumbnail(Landroid/net/Uri;)V

    iget-object v2, p0, mImageThumbnailer:Lcom/android/providers/media/MediaProvider$Thumbnailer;

    invoke-virtual {v2, p1}, Lcom/android/providers/media/MediaProvider$Thumbnailer;->invalidateThumbnail(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    invoke-direct {p0, p1}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2
    :try_end_1
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    const/4 v4, 0x1

    aput-object v0, v1, v4

    const-string v5, "select _data from thumbnails where image_id=? union all select _data from videothumbnails where video_id=?"

    invoke-virtual {v2, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v5, 0x0

    :goto_0
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, p1, v6}, deleteIfAllowed(Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {v5, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    new-array p0, v4, [Ljava/lang/String;

    aput-object v0, p0, v3

    const-string p1, "delete from thumbnails where image_id=?"

    invoke-virtual {v2, p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array p0, v4, [Ljava/lang/String;

    aput-object v0, p0, v3

    const-string p1, "delete from videothumbnails where video_id=?"

    invoke-virtual {v2, p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_2

    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p1

    :catch_1
    move-exception p0

    const-string p1, "MediaProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private isCallingPackageAllowedHidden()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, isCallingPackageSystem()Z

    move-result p0

    return p0
.end method

.method private isCallingPackageLegacy()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method private isCallingPackageSystem()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method static isInternalMediaDatabaseName(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "internal.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static isMediaDatabaseName(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "internal.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "external.db"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const-string v0, "external-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ".db"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private isPending(Landroid/net/Uri;)Z
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    invoke-static {p1, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const/16 v2, 0x65

    if-eq v1, v2, :cond_0

    const/16 v2, 0xc9

    if-eq v1, v2, :cond_0

    return v3

    :cond_0
    :try_start_0
    const-string v1, "is_pending"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    :try_start_1
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz p0, :cond_2

    :try_start_2
    invoke-static {p1, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return v0

    :catchall_0
    move-exception p1

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p0, :cond_3

    :try_start_4
    invoke-static {p1, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v0
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private isRedactionNeeded(Landroid/net/Uri;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/providers/media/LocalCallingIdentity;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/providers/media/LocalCallingIdentity;->hasPermission(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$createLatestSchema$3()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "downloads"

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_1
    const-string v2, "MediaProvider"

    const-string v3, "Skip createLatestSchema while client invalid"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    :try_start_2
    invoke-static {v1, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    return-void

    :cond_1
    :try_start_3
    const-string v2, "revoke_mediastore_uri_perms"

    invoke-virtual {v0, v2, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-static {v1, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_6
    invoke-static {v1, v0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v2
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic lambda$deleteLegacyThumbnailData$2(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".thumbdata"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private localizeTitles()V
    .locals 10

    iget-object v0, p0, mInternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "_id"

    const-string v2, "title_resource_uri"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "files"

    const-string v4, "title_resource_uri IS NOT NULL"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0, v5}, getLocalizedTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "title_key"

    invoke-static {v7}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "title"

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v8, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "files"

    const-string v8, "_id=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object v3, v4, v2

    invoke-virtual {v0, v7, v6, v8, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v2, "MediaProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error updating localized title for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", keeping old localization"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 p0, 0x0

    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_2

    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw v0
.end method

.method static logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "INSERT OR REPLACE INTO log (time,message) VALUES (strftime(\'%Y-%m-%d %H:%M:%f\',\'now\'),?);"

    invoke-virtual {p0, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p1, "DELETE FROM log WHERE rowid IN (SELECT rowid FROM log ORDER BY rowid DESC LIMIT 500,-1);"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method static makePristineSchema(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 13
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "sqlite_master"

    const-string v4, "type is \'trigger\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const-string v3, "sqlite_"

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DROP TRIGGER IF EXISTS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "sqlite_master"

    const-string v8, "type is \'view\'"

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP VIEW IF EXISTS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "sqlite_master"

    const-string v8, "type is \'index\'"

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DROP INDEX IF EXISTS "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "sqlite_master"

    const-string v8, "type is \'table\'"

    move-object v5, p0

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP TABLE IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private static makePristineViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const-string v0, "name"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "sqlite_master"

    const-string v4, "type is \'view\'"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DROP VIEW IF EXISTS "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private static matchUri(Landroid/net/Uri;Z)I
    .locals 2

    sget-object v0, PUBLIC_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    sget-object v0, HIDDEN_URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    if-eq v0, v1, :cond_2

    if-eqz p1, :cond_1

    return v0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " is hidden API"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    return v1
.end method

.method static maybeBalance(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x27

    if-eq v4, v5, :cond_1

    const/16 v5, 0x22

    if-ne v4, v5, :cond_3

    :cond_1
    if-nez v3, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    if-ne v3, v4, :cond_3

    move v3, v0

    :cond_3
    :goto_1
    if-nez v3, :cond_5

    const/16 v5, 0x28

    if-ne v4, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const/16 v5, 0x29

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, -0x1

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    if-lez v2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_7
    :goto_4
    if-gez v2, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    return-object p0
.end method

.method private maybeMarkAsDownload(Landroid/content/ContentValues;)Z
    .locals 2

    const-string p0, "_data"

    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/provider/MediaStore$Downloads;->isDownload(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_download"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private maybePut(Landroid/content/ContentValues;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private movePlaylistEntry(Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JII)I
    .locals 22

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move/from16 v0, p6

    move/from16 v13, p7

    const-string v14, ",1"

    const-string v15, ""

    const-string v16, "play_order"

    const-string v9, " AND playlist_id="

    const/4 v8, 0x0

    if-ne v0, v13, :cond_0

    return v8

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v7, 0x0

    :try_start_0
    const-string v2, "audio_playlists_map"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlist_id=?"

    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v8

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-string v19, "play_order"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object/from16 v1, p3

    move v0, v6

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move v0, v8

    move-object/from16 v8, v19

    move-object/from16 v21, v9

    move-object/from16 v9, v20

    :try_start_1
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-string v2, "audio_playlists_map"

    filled-new-array/range {v16 .. v16}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "playlist_id=?"

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v6, 0x0

    const/4 v15, 0x0

    const-string v16, "play_order"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v1, p3

    move/from16 v17, v7

    move-object v7, v15

    move v15, v8

    move-object/from16 v8, v16

    move-object/from16 v16, v9

    move-object v9, v14

    :try_start_3
    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE audio_playlists_map SET play_order=-1 WHERE play_order="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v2, v21

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    move/from16 v1, p6

    move/from16 v3, v17

    if-ge v1, v13, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists_map SET play_order=play_order-1 WHERE play_order<="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND play_order>"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sub-int v1, v13, v1

    :goto_0
    add-int/2addr v1, v3

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE audio_playlists_map SET play_order=play_order+1 WHERE play_order>="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " AND play_order<"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sub-int/2addr v1, v13

    goto :goto_0

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UPDATE audio_playlists_map SET play_order="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " WHERE play_order=-1 AND playlist_id="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static/range {p1 .. p1}, Landroid/provider/MediaStore$Audio$Playlists;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, v11, v12}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v9

    :goto_2
    move-object/from16 v7, v16

    goto :goto_3

    :catchall_3
    move-exception v0

    const/4 v3, 0x0

    move-object v7, v3

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, v7

    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0
.end method

.method private openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;ILjava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p3}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/high16 v2, 0x10000000

    if-eq p3, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {p1}, hasOwnerPackageName(Landroid/net/Uri;)Z

    move-result v3

    const/4 v4, 0x3

    new-array v7, v4, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v7, v0

    if-eqz v3, :cond_1

    const-string v4, "owner_package_name"

    goto :goto_1

    :cond_1
    const-string v4, "NULL"

    :goto_1
    aput-object v4, v7, v1

    if-eqz v3, :cond_2

    const-string v3, "is_pending"

    goto :goto_2

    :cond_2
    const-string v3, "0"

    :goto_2
    const/4 v4, 0x2

    aput-object v3, v7, v4

    invoke-virtual {p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v10, p4

    :try_start_0
    invoke-virtual/range {v5 .. v10}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v5, 0x0

    :try_start_1
    invoke-interface {p4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_18

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    invoke-interface {p4, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v4, :cond_3

    move v4, v1

    goto :goto_3

    :cond_3
    move v4, v0

    :goto_3
    if-eqz p4, :cond_4

    :try_start_2
    invoke-static {v5, p4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_4
    invoke-virtual {p0, v3}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    invoke-direct {p0, p1, v7, v2}, checkAccess(Landroid/net/Uri;Ljava/io/File;Z)V

    if-eqz v8, :cond_5

    move p4, v1

    goto :goto_4

    :cond_5
    move p4, v0

    :goto_4
    invoke-direct {p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v8}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v4, :cond_7

    if-eqz p4, :cond_7

    if-eqz v3, :cond_6

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Only owner is able to interact with pending media "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_5
    invoke-static {v6}, Lcom/android/providers/media/MediaProviderUtils;->getMimeTypebyPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_9

    invoke-static {p4}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {p4}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_8
    move v5, v1

    goto :goto_6

    :cond_9
    move v5, v0

    :goto_6
    invoke-static {v6}, Landroid/media/MediaFile;->getFormatCodeForFile(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v9}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-virtual {v9}, Lcom/android/providers/media/LocalCallingIdentity;->isSystemPrelodedApps()Z

    move-result v9

    if-eqz v9, :cond_b

    const/16 v9, 0x3000

    if-eq v8, v9, :cond_a

    const/16 v9, 0x3800

    if-eq v8, v9, :cond_a

    const v9, 0xb980

    if-eq v8, v9, :cond_a

    goto :goto_7

    :cond_a
    move v9, v1

    goto :goto_8

    :cond_b
    :goto_7
    move v9, v0

    :goto_8
    if-eqz v3, :cond_c

    goto :goto_9

    :cond_c
    invoke-direct {p0, p1}, isRedactionNeeded(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v5, :cond_d

    if-nez v9, :cond_d

    move v0, v1

    :cond_d
    :goto_9
    sget-boolean v3, DBG:Z

    const-string v5, "MediaProvider"

    if-eqz v3, :cond_e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "redactionNeeded("

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "): isIgnoreRedacting["

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "], mimeType["

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "], formatCode["

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "], "

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v5, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    if-eqz v0, :cond_f

    invoke-direct {p0, v7}, getRedactionRanges(Ljava/io/File;)Lcom/android/providers/media/MediaProvider$RedactionInfo;

    move-result-object p4

    goto :goto_a

    :cond_f
    new-instance p4, Lcom/android/providers/media/MediaProvider$RedactionInfo;

    sget-object v3, Llibcore/util/EmptyArray;->LONG:[J

    invoke-direct {p4, v3, v3}, Lcom/android/providers/media/MediaProvider$RedactionInfo;-><init>([J[J)V

    :goto_a
    if-eqz v0, :cond_11

    const-string v0, "requireOriginal"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_b

    :cond_10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Caller must hold ACCESS_MEDIA_LOCATION permission to access original"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_b
    new-instance v0, Lcom/android/providers/media/-$$Lambda$MediaProvider$evXZwAfeF8nIkqIWHvxFCHvX8gg;

    invoke-direct {v0, p0, p1, p2, v7}, Lcom/android/providers/media/-$$Lambda$MediaProvider$evXZwAfeF8nIkqIWHvxFCHvX8gg;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;ILjava/io/File;)V

    :try_start_3
    iget-object p1, p4, Lcom/android/providers/media/MediaProvider$RedactionInfo;->redactionRanges:[J

    array-length p1, p1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const-string p2, "mRedactingCounts = "

    const/16 v3, 0x8

    if-lez p1, :cond_13

    :try_start_4
    iget p1, p0, mRedactingCounts:I

    if-ge p1, v3, :cond_13

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, mRedactingCounts:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", redacting file: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget p1, p0, mRedactingCounts:I

    add-int/2addr p1, v1

    iput p1, p0, mRedactingCounts:I

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p4, Lcom/android/providers/media/MediaProvider$RedactionInfo;->redactionRanges:[J

    iget-object p4, p4, Lcom/android/providers/media/MediaProvider$RedactionInfo;->freeOffsets:[J

    invoke-static {p1, v7, p3, p2, p4}, Landroid/os/RedactingFileDescriptor;->open(Landroid/content/Context;Ljava/io/File;I[J[J)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iget p2, p0, mRedactingCounts:I

    if-lez p2, :cond_15

    iget p2, p0, mRedactingCounts:I

    sub-int/2addr p2, v1

    iput p2, p0, mRedactingCounts:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_d

    :catchall_0
    move-exception p1

    goto :goto_c

    :catch_0
    move-exception p1

    :try_start_7
    const-string p2, "openFileAndEnforcePathPermissionsHelper: RedactingFileDescriptor error"

    invoke-static {v5, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_c
    :try_start_8
    iget p2, p0, mRedactingCounts:I

    if-lez p2, :cond_12

    iget p2, p0, mRedactingCounts:I

    sub-int/2addr p2, v1

    iput p2, p0, mRedactingCounts:I

    :cond_12
    throw p1

    :cond_13
    sget-boolean p1, DBG:Z

    if-eqz p1, :cond_14

    iget p1, p0, mRedactingCounts:I

    if-lt p1, v3, :cond_14

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, mRedactingCounts:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", skip redacting of file: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_14
    :try_start_9
    invoke-static {v7, p3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    :cond_15
    :goto_d
    if-nez v4, :cond_16

    if-eqz v2, :cond_16

    if-eqz v0, :cond_16

    :try_start_a
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1, p0, v0}, Landroid/os/ParcelFileDescriptor;->fromPfd(Landroid/os/ParcelFileDescriptor;Landroid/os/Handler;Landroid/os/ParcelFileDescriptor$OnCloseListener;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_16
    return-object p1

    :catch_1
    move-exception p0

    const-string p1, "openFileAndEnforcePathPermissionsHelper: ParcelFileDescriptor error"

    invoke-static {v5, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw p0
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception p0

    instance-of p1, p0, Ljava/io/FileNotFoundException;

    if-eqz p1, :cond_17

    check-cast p0, Ljava/io/FileNotFoundException;

    throw p0

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_18
    :try_start_b
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Missing path for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception p1

    :try_start_c
    throw p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception p2

    if-eqz p4, :cond_19

    :try_start_d
    invoke-static {p1, p4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_19
    throw p2
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_e

    :catch_3
    move-exception p1

    :try_start_e
    new-instance p2, Ljava/io/FileNotFoundException;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :goto_e
    invoke-virtual {p0, v3}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw p1
.end method

.method private openFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, safeUncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0}, isCallingPackageAllowedHidden()Z

    move-result v0

    invoke-static {p1, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v0

    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x10000000

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/16 v4, 0xca

    if-eq v0, v4, :cond_2

    const/16 v4, 0x78

    if-eq v0, v4, :cond_1

    const/16 v4, 0x79

    if-eq v0, v4, :cond_0

    invoke-direct {p0, p1, v0, p2, p3}, openFileAndEnforcePathPermissionsHelper(Landroid/net/Uri;ILjava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p3}, ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {v1}, Landroid/provider/MediaStore$Audio$Albums;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p3}, ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {v1}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p3}, ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {v1}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1, p3}, ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private openTypedAssetFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {p0, p1}, safeUncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    if-eqz v2, :cond_0

    const-string v5, "android.content.extra.SIZE"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const-string v2, "image/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    invoke-direct {p0}, isCallingPackageAllowedHidden()Z

    move-result v1

    invoke-static {v4, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    invoke-static {v1}, Lcom/android/providers/media/MediaProviderUtils;->isMatchedThumbnailer(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v4, v3}, ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object v0

    new-instance v7, Landroid/content/res/AssetFileDescriptor;

    const/high16 v1, 0x10000000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v7

    :cond_1
    new-instance v1, Landroid/content/res/AssetFileDescriptor;

    const-string v2, "r"

    invoke-direct {p0, v4, v2, v3}, openFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    const-wide/16 v10, 0x0

    const-wide/16 v12, -0x1

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    return-object v1
.end method

.method private static parseBoolean(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "1"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const-string v1, "true"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method private playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 12

    new-instance v0, Landroid/database/DatabaseUtils$InsertHelper;

    const-string v1, "audio_playlists_map"

    invoke-direct {v0, p1, v1}, Landroid/database/DatabaseUtils$InsertHelper;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    const-string v1, "audio_id"

    invoke-virtual {v0, v1}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "playlist_id"

    invoke-virtual {v0, v3}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "play_order"

    invoke-virtual {v0, v4}, Landroid/database/DatabaseUtils$InsertHelper;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p2}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    array-length v8, p3

    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_0

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->prepareForInsert()V

    aget-object v10, p3, v9

    invoke-virtual {v10, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    invoke-virtual {v0, v2, v10, v11}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    invoke-virtual {v0, v3, v6, v7}, Landroid/database/DatabaseUtils$InsertHelper;->bind(IJ)V

    aget-object v10, p3, v9

    invoke-virtual {v10, v4}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    invoke-virtual {v0, v5, v10}, Landroid/database/DatabaseUtils$InsertHelper;->bind(II)V

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->execute()J

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v8

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v0}, Landroid/database/DatabaseUtils$InsertHelper;->close()V

    throw p0
.end method

.method private pruneThumbnails(Landroid/os/CancellationSignal;)V
    .locals 13

    const-string v0, "MediaProvider"

    iget-object p0, p0, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    new-instance v12, Landroid/util/LongArray;

    invoke-direct {v12}, Landroid/util/LongArray;-><init>()V

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x1

    const-string v3, "files"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p0

    move-object v11, p1

    invoke-virtual/range {v1 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Landroid/util/LongArray;->add(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    invoke-virtual {v12}, Landroid/util/LongArray;->toArray()[J

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    invoke-static {}, getExternalVolumeNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :try_start_1
    invoke-static {v4}, getVolumePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/io/File;

    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    aput-object v8, v7, v3

    const-string v8, ".thumbnails"

    const/4 v9, 0x1

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    aput-object v7, v5, v3

    new-array v7, v6, [Ljava/lang/String;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    aput-object v10, v7, v3

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    aput-object v7, v5, v9

    new-array v7, v6, [Ljava/lang/String;

    sget-object v10, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    aput-object v10, v7, v3

    aput-object v8, v7, v9

    invoke-static {v4, v7}, Landroid/os/Environment;->buildPath(Ljava/io/File;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    aput-object v4, v5, v6

    array-length v4, v5

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_2

    aget-object v7, v5, v6

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    invoke-static {v7}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;)[Ljava/io/File;

    move-result-object v7

    array-length v8, v7

    move v9, v3

    :goto_3
    if-ge v9, v8, :cond_4

    aget-object v10, v7, v9

    invoke-static {v10}, Lcom/android/providers/media/scan/ModernMediaScanner;->extractName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v11

    :try_start_2
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-static {v1, v11, v12}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v11
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    if-ltz v11, :cond_3

    goto :goto_4

    :catch_0
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Deleting stale thumbnail "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :catch_1
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve volume "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    const-string p1, "delete from thumbnails where image_id not in (select _id from images)"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "delete from videothumbnails where video_id not in (select _id from video)"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v1, :cond_6

    invoke-static {p0, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw p1
.end method

.method private queryInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v0, p3

    const-string v2, "MediaProvider"

    if-eqz v0, :cond_1

    const-string v4, "android:query-arg-sql-selection"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "android:query-arg-sql-selection-args"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const-string v6, "android:query-arg-sql-sort-order"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v7, "android:query-arg-sort-columns"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static/range {p3 .. p3}, Landroid/content/ContentResolver;->createSqlSortClause(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v11, v5

    move-object v14, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-direct/range {p0 .. p1}, safeUncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v7

    invoke-direct/range {p0 .. p0}, isCallingPackageAllowedHidden()Z

    move-result v8

    invoke-static {v5, v8}, matchUri(Landroid/net/Uri;Z)I

    move-result v8

    const/16 v9, 0x1f4

    const/4 v15, 0x1

    const/4 v13, 0x0

    if-ne v8, v9, :cond_2

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "volume"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/String;

    iget-object v1, v1, mMediaScannerVolume:Ljava/lang/String;

    aput-object v1, v2, v13

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :cond_2
    const/16 v9, 0x258

    if-ne v8, v9, :cond_3

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "fsid"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    iget v1, v1, mVolumeId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :cond_3
    const/16 v9, 0x259

    if-ne v8, v9, :cond_4

    new-instance v0, Landroid/database/MatrixCursor;

    const-string v2, "version"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    new-array v2, v15, [Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, getDatabaseVersion(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v13

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    return-object v0

    :cond_4
    :try_start_0
    invoke-direct {v1, v5}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v9

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    const/16 v7, 0x2c0

    if-ne v8, v7, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v9, v10, v0}, getObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-direct {v1, v13, v5, v8, v0}, getQueryBuilder(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v7

    const-string v0, "limit"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v0, "filter"

    invoke-virtual {v5, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "%"

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, " "

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v12, v0

    new-array v12, v12, [Ljava/lang/String;

    move v3, v13

    :goto_1
    array-length v13, v0

    if-ge v3, v13, :cond_7

    aget-object v13, v0, v3

    invoke-static {v13}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "\\"

    move-object/from16 p3, v0

    const-string v0, "\\\\"

    invoke-virtual {v13, v15, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "\\%"

    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "_"

    const-string v15, "\\_"

    invoke-virtual {v0, v13, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v3

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p3

    const/4 v15, 0x1

    goto :goto_1

    :cond_6
    const/4 v12, 0x0

    :cond_7
    const/16 v0, 0x64

    const/16 v3, 0x76

    if-eq v8, v0, :cond_e

    const/16 v0, 0x74

    if-eq v8, v0, :cond_d

    if-eq v8, v3, :cond_d

    const v0, 0xd348

    if-eq v8, v0, :cond_b

    const/16 v0, 0x6c

    if-eq v8, v0, :cond_e

    const/16 v0, 0x6d

    if-eq v8, v0, :cond_e

    packed-switch v8, :pswitch_data_0

    packed-switch v8, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_0
    if-eqz p2, :cond_c

    if-nez v11, :cond_c

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v13, "album_art"

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v15, Ljava/util/ArrayList;

    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v15, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_1
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    move-object/from16 v0, v18

    goto :goto_2

    :cond_9
    const-string v0, "unknown column \'album_art\' was removed on query here."

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_2
    const-string v13, "remove unknown column error."

    invoke-static {v2, v13, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_c

    :goto_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_6

    :goto_4
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    :cond_a
    throw v0

    :pswitch_1
    const-string v3, "artist_key"

    goto :goto_7

    :cond_b
    const-string v0, "op_debug"

    invoke-virtual {v7, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    :cond_c
    :goto_5
    move-object/from16 v0, p2

    :goto_6
    const/4 v3, 0x0

    goto :goto_8

    :cond_d
    const-string v3, "artist_key||album_key"

    goto :goto_7

    :cond_e
    :pswitch_2
    const-string v3, "artist_key||album_key||title_key"

    :goto_7
    move-object/from16 v0, p2

    :goto_8
    if-eqz v3, :cond_f

    const/4 v2, 0x0

    :goto_9
    if-eqz v12, :cond_f

    array-length v13, v12

    if-ge v2, v13, :cond_f

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " LIKE ? ESCAPE \'\\\'"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 p2, v3

    const/4 v15, 0x1

    new-array v3, v15, [Ljava/lang/Object;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v17, v5

    aget-object v5, v12, v2

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x0

    aput-object v5, v3, v15

    invoke-static {v7, v13, v3}, appendWhereStandalone(Landroid/database/sqlite/SQLiteQueryBuilder;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v3, p2

    move-object/from16 v5, v17

    goto :goto_9

    :cond_f
    move-object/from16 v17, v5

    const/16 v2, 0x76

    if-ne v8, v2, :cond_10

    const-string v3, "audio.album_id"

    goto :goto_a

    :cond_10
    const/4 v3, 0x0

    :goto_a
    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v2

    const/16 v5, 0x1d

    if-ge v2, v5, :cond_17

    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-static {v2}, recoverAbusiveGroupBy(Landroid/util/Pair;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_11

    aget-object v4, v0, v5

    const-string v9, "DISTINCT "

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    aget-object v4, v0, v5

    const/16 v9, 0x9

    invoke-virtual {v4, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v5

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    :cond_11
    const/16 v4, 0xcb

    const/4 v9, 0x4

    if-eq v8, v9, :cond_12

    if-ne v8, v4, :cond_16

    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_16

    sget-object v12, PATTERN_SELECTION_ID:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_16

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    if-ne v8, v9, :cond_13

    invoke-static {v6}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_b

    :cond_13
    if-ne v8, v4, :cond_15

    invoke-static {v6}, Landroid/provider/MediaStore$Video$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    :goto_b
    new-instance v5, Landroid/database/MatrixCursor;

    invoke-direct {v5, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :try_start_3
    sget-boolean v0, Landroid/content/ContentResolver;->DEPRECATE_DATA_COLUMNS:Z

    if-eqz v0, :cond_14

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "thumbnail"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ContentResolver;->translateDeprecatedDataPath(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_14
    move-object/from16 v6, p4

    invoke-direct {v1, v4, v6}, ensureThumbnail(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_c
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v4, "_id"

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v4, "image_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v4, "video_id"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v1

    const-string v2, "_data"

    invoke-virtual {v1, v2, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-object v5

    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_16
    move-object/from16 v6, p4

    const/4 v15, 0x1

    move-object v12, v2

    goto :goto_d

    :cond_17
    move-object/from16 v6, p4

    const/4 v5, 0x0

    const/4 v15, 0x1

    move-object v12, v3

    move-object v3, v4

    :goto_d
    const/4 v13, 0x0

    move-object v8, v10

    move-object v9, v0

    move-object v10, v3

    move v2, v5

    move v3, v15

    move-object/from16 v15, v16

    move-object/from16 v16, p4

    invoke-virtual/range {v7 .. v16}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_18

    move-object v4, v0

    check-cast v4, Landroid/database/AbstractCursor;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-array v3, v3, [Landroid/net/Uri;

    aput-object v17, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v1, v3, v5, v2}, Landroid/database/AbstractCursor;->setNotificationUris(Landroid/content/ContentResolver;Ljava/util/List;IZ)V

    :cond_18
    return-object v0

    :catch_2
    move-exception v0

    invoke-virtual {v0, v7}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForQuery(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2bc
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static recomputeDataValues(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 13

    const-string v0, "_data"

    sget-boolean v1, DBG:Z

    const-string v2, "recomputeDataValues("

    const-string v3, "MediaProvider"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")+"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    const-string v5, "files"

    const-string v4, "_id"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Recomputing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " data values"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v6, v1

    :cond_1
    :goto_0
    :try_start_2
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Landroid/content/ContentValues;->clear()V

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v7, 0x1

    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v0, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v5}, computeDataValues(Landroid/content/ContentValues;)V

    invoke-virtual {v5, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    move v12, v7

    goto :goto_1

    :cond_2
    move v12, v1

    :goto_1
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "): reopen db "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v8, v1}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    move v6, v7

    :cond_3
    const-string v7, "files"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "_id="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v5, v9, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    :try_start_3
    invoke-static {v8, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    move v1, v6

    goto :goto_4

    :cond_5
    :goto_2
    if-eqz v6, :cond_6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_6
    sget-boolean p0, DBG:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")-"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_1
    move-exception p1

    move v1, v6

    goto :goto_3

    :catchall_2
    move-exception p1

    :goto_3
    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    if-eqz v4, :cond_8

    :try_start_5
    invoke-static {p1, v4}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :catchall_4
    move-exception p1

    :goto_4
    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_9
    throw p1
.end method

.method private static recomputeDataValuesByPage(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 21

    const-string v0, "_data"

    const-string v1, "MediaProvider"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v13, "1000"

    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    :try_start_0
    const-string v5, "files"

    const-string v4, "count(*)"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v12, 0x0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " recomputeDataValuesByPage total files count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    :catch_0
    move-exception v0

    move-object v15, v4

    goto/16 :goto_5

    :cond_0
    :goto_0
    const-wide/high16 v5, -0x8000000000000000L

    move-wide v10, v5

    :goto_1
    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v16, 0x0

    goto :goto_2

    :cond_1
    move-object/from16 v16, v4

    :goto_2
    :try_start_2
    const-string v5, "files"

    const-string v4, "_id"

    filled-new-array {v4, v0}, [Ljava/lang/String;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " _id > "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p0

    move-wide/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move v15, v12

    move-object v12, v13

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v4, :cond_5

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_4

    :cond_2
    move-wide/from16 v10, v19

    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v14}, Landroid/content/ContentValues;->clear()V

    invoke-interface {v4, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v14}, computeDataValues(Landroid/content/ContentValues;)V

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v14}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object/from16 v7, p0

    invoke-virtual {v7, v5, v14, v6, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :cond_3
    const/4 v8, 0x0

    move-object/from16 v7, p0

    goto :goto_3

    :cond_4
    move-object/from16 v7, p0

    move v12, v15

    goto/16 :goto_1

    :cond_5
    :goto_4
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object/from16 v4, v16

    goto :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v15, v16

    goto :goto_5

    :catchall_2
    move-exception v0

    const/4 v8, 0x0

    move-object v4, v8

    goto :goto_7

    :catch_2
    move-exception v0

    const/4 v8, 0x0

    move-object v15, v8

    :goto_5
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " exception in recomputeDataValuesByPage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v15, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " recomputeDataValuesByPage cost time "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_3
    move-exception v0

    move-object v4, v15

    :goto_7
    if-eqz v4, :cond_7

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0
.end method

.method static recoverAbusiveGroupBy(Landroid/util/Pair;)Landroid/util/Pair;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, " GROUP BY "

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eq v3, v2, :cond_2

    const/4 p0, 0x0

    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v3, v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, maybeBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v2}, maybeBalance(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "\'"

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovered abusive \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' from \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Abusive \'"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' conflicts with requested \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object p0
.end method

.method private static resolveVolumeName(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "external"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "external_primary"

    :cond_0
    return-object p0
.end method

.method private safeUncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    invoke-virtual {p0, p1}, uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    return-object p1
.end method

.method private static sanitizeDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {p0}, Landroid/os/FileUtils;->buildValidFatFilename(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static sanitizePath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, sanitizeDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private static sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "audio_meta"

    const-string v1, "count(*)"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "audio_meta"

    const-string v2, "count(distinct _data)"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eq v3, v2, :cond_0

    const-string v4, "MediaProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio_meta._data column is not unique while upgrading from schema "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " : "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "DELETE FROM audio_meta;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private setObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    sget-object v3, sMediaTableColumns:[Ljava/lang/String;

    const/4 v11, 0x1

    new-array v5, v11, [Ljava/lang/String;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x0

    aput-object v1, v5, v12

    const-string v2, "files"

    const-string v4, "_id=?"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p2

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const-wide/16 v13, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return v12

    :cond_0
    :try_start_1
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-wide v7, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_1
    move-wide v7, v13

    :goto_0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    cmp-long v1, v7, v13

    if-nez v1, :cond_2

    return v12

    :cond_2
    new-array v1, v11, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    const-string v2, "audio_playlists_map"

    const-string v3, "playlist_id=?"

    invoke-virtual {v9, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    array-length v15, v10

    new-array v6, v15, [Landroid/content/ContentValues;

    move v4, v12

    move v5, v4

    :goto_1
    if-ge v5, v15, :cond_6

    aget-object v1, v10, v5

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sget-object v3, sMediaTableColumns:[Ljava/lang/String;

    new-array v13, v11, [Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v12

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v2, "files"

    const-string v18, "_id=?"

    move-object/from16 v1, p2

    move/from16 p1, v4

    move-object/from16 v4, v18

    move/from16 v18, v5

    move-object v5, v13

    move-object v13, v6

    move-object v6, v14

    move-wide/from16 v19, v7

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move/from16 v2, p1

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_3
    :try_start_3
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_4
    const-wide/16 v2, 0x0

    :goto_2
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_5

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "playlist_id"

    invoke-virtual {v1, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "audio_id"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "play_order"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move/from16 v2, p1

    add-int/lit8 v3, v2, 0x1

    aput-object v1, v13, v2

    move v2, v3

    goto :goto_3

    :cond_5
    move/from16 v2, p1

    :goto_3
    add-int/lit8 v1, v18, 0x1

    move-object v6, v13

    move-wide/from16 v7, v19

    move-wide v13, v4

    move v5, v1

    move v4, v2

    goto/16 :goto_1

    :cond_6
    move v2, v4

    move-object v13, v6

    move-wide/from16 v19, v7

    if-ge v2, v15, :cond_7

    new-array v6, v2, [Landroid/content/ContentValues;

    invoke-static {v13, v12, v6, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v13, v6

    :cond_7
    const-string v1, "external"

    move-wide/from16 v2, v19

    invoke-static {v1, v2, v3}, Landroid/provider/MediaStore$Audio$Playlists$Members;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v9, v1, v13}, playlistBulkInsert(Landroid/database/sqlite/SQLiteDatabase;Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v1

    if-lez v1, :cond_8

    invoke-direct {v0, v9, v2, v3}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_8
    return v1
.end method

.method private static updateAddAudiobook(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN is_audiobook INTEGER DEFAULT 0;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddColorSpaces(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "ALTER TABLE files ADD COLUMN color_standard INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE files ADD COLUMN color_transfer INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "ALTER TABLE files ADD COLUMN color_range INTEGER;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddDirectories(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN primary_directory TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN secondary_directory TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddDownloadInfo(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN is_download INTEGER DEFAULT 0;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN download_uri TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN referer_uri TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddExpiresAndTrashed(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN date_expires INTEGER DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN is_trashed INTEGER DEFAULT 0;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddGroupId(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN group_id INTEGER DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddHashAndPending(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN _hash BLOB DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN is_pending INTEGER DEFAULT 0;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddOwnerPackageName(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 10

    const-string p1, "ALTER TABLE files ADD COLUMN owner_package_name TEXT DEFAULT NULL"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "_id"

    const-string v0, "_data"

    filled-new-array {p1, v0}, [Ljava/lang/String;

    move-result-object v3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "_data REGEXP \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, PATTERN_OWNED_PATH:Ljava/util/regex/Pattern;

    invoke-virtual {v0}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v2, "files"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    :try_start_0
    const-string v0, "MediaProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " entries with well-known owners"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, PATTERN_OWNED_PATH:Ljava/util/regex/Pattern;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    const-string v6, "owner_package_name"

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "files"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v1, v4, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-static {v3, p1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    invoke-static {p0, p1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    throw v0
.end method

.method private static updateAddPath(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN relative_path TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddTitleResource(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "files"

    const-string v1, "title_resource_uri"

    invoke-static {p0, v0, v1}, Lcom/android/providers/media/MediaProviderUtils;->isColumnExistedInDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ALTER TABLE files ADD COLUMN title_resource_uri TEXT"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE files SET date_modified=0 WHERE (is_alarm IS 1) OR (is_ringtone IS 1) OR (is_notification IS 1)"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddVolumeName(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN volume_name TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateAddXmp(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "ALTER TABLE files ADD COLUMN document_id TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN instance_id TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string p1, "ALTER TABLE files ADD COLUMN original_document_id TEXT DEFAULT NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateClearLocation(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "UPDATE files SET latitude=NULL, longitude=NULL;"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateCollationKeys(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DELETE from albums"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DELETE from artists"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "UPDATE files SET date_modified=0;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1}, Lcom/android/providers/media/MediaProviderUtils;->updateOnePlusDebugTable(Landroid/database/sqlite/SQLiteDatabase;)V

    const/16 p0, 0x2bc

    if-ge p3, p0, :cond_0

    invoke-static {p1, p2}, createLatestSchema(Landroid/database/sqlite/SQLiteDatabase;Z)V

    goto/16 :goto_0

    :cond_0
    const/4 p0, 0x0

    const/16 v2, 0x320

    if-ge p3, v2, :cond_1

    invoke-static {p1}, updateCollationKeys(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    const/16 v2, 0x384

    if-gt p3, v2, :cond_2

    invoke-static {p1}, updateAddTitleResource(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    const/16 v2, 0x3e8

    if-ge p3, v2, :cond_3

    invoke-static {p1, p2}, updateAddOwnerPackageName(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_3
    const/16 v2, 0x3eb

    if-ge p3, v2, :cond_4

    invoke-static {p1}, updateAddColorSpaces(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_4
    const/16 v2, 0x3ec

    if-ge p3, v2, :cond_5

    invoke-static {p1, p2}, updateAddHashAndPending(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_5
    const/16 v2, 0x3ed

    if-ge p3, v2, :cond_6

    invoke-static {p1, p2}, updateAddDownloadInfo(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_6
    const/16 v2, 0x3ee

    if-ge p3, v2, :cond_7

    invoke-static {p1, p2}, updateAddAudiobook(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_7
    const/16 v2, 0x3ef

    if-ge p3, v2, :cond_8

    invoke-static {p1, p2}, updateClearLocation(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_8
    const/16 v2, 0x3f0

    if-ge p3, v2, :cond_9

    invoke-static {p1, p2}, updateSetIsDownload(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_9
    const/16 v2, 0x3f2

    if-ge p3, v2, :cond_a

    invoke-static {p1, p2}, updateAddExpiresAndTrashed(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_a
    const/16 v2, 0x3f4

    const/4 v3, 0x1

    if-ge p3, v2, :cond_b

    move p0, v3

    :cond_b
    const/16 v2, 0x3f5

    if-ge p3, v2, :cond_c

    invoke-static {p1, p2}, updateAddGroupId(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-static {p1, p2}, updateAddDirectories(Landroid/database/sqlite/SQLiteDatabase;Z)V

    move p0, v3

    :cond_c
    const/16 v2, 0x3f6

    if-ge p3, v2, :cond_d

    invoke-static {p1, p2}, updateAddXmp(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_d
    const/16 v2, 0x3f9

    if-ge p3, v2, :cond_e

    invoke-static {p1, p2}, updateSetIsDownload(Landroid/database/sqlite/SQLiteDatabase;Z)V

    move p0, v3

    :cond_e
    const/16 v2, 0x3fa

    if-ge p3, v2, :cond_f

    invoke-static {p1, p2}, updateAddPath(Landroid/database/sqlite/SQLiteDatabase;Z)V

    move p0, v3

    :cond_f
    const/16 v2, 0x3fb

    if-ge p3, v2, :cond_10

    if-nez p2, :cond_10

    invoke-static {}, deleteLegacyThumbnailData()V

    :cond_10
    const/16 v2, 0x3fc

    if-ge p3, v2, :cond_11

    invoke-static {p1, p2}, updateAddVolumeName(Landroid/database/sqlite/SQLiteDatabase;Z)V

    move p0, v3

    :cond_11
    const/16 v2, 0x3fe

    if-ge p3, v2, :cond_12

    invoke-static {p1, p2}, updateDirsMimeType(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_12
    const/16 v2, 0x3ff

    if-ge p3, v2, :cond_13

    invoke-static {p1, p2}, updateRelativePath(Landroid/database/sqlite/SQLiteDatabase;Z)V

    :cond_13
    if-eqz p0, :cond_14

    new-instance p0, Ljava/lang/Thread;

    new-instance v2, Lcom/android/providers/media/MediaProvider$4;

    invoke-direct {v2, p1, p2}, Lcom/android/providers/media/MediaProvider$4;-><init>(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-direct {p0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    :cond_14
    :goto_0
    invoke-static {p1, p2}, createLatestViews(Landroid/database/sqlite/SQLiteDatabase;Z)V

    invoke-static {p1, p3}, sanityCheck(Landroid/database/sqlite/SQLiteDatabase;I)V

    invoke-static {p1}, getOrCreateUuid(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr v2, v0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Database upgraded from version "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " seconds"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, logToDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method

.method private static updateDirsMimeType(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "UPDATE files SET mime_type=NULL WHERE format=12289"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private updateGenre(JLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    invoke-static {p4}, Landroid/provider/MediaStore$Audio$Genres;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const/4 v6, 0x0

    :try_start_0
    sget-object v2, GENRE_LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "name=?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p3, v4, v7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p3

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4, v0}, insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p3

    :goto_1
    if-eqz p3, :cond_2

    const-string p4, "members"

    invoke-static {p3, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz p3, :cond_3

    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "audio_id"

    invoke-virtual {p4, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, p3, p4}, insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method private updateImageMetadata(Landroid/content/ContentValues;Ljava/io/File;)V
    .locals 1

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p2, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "width"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "height"

    invoke-virtual {p1, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method private updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 41

    move-object/from16 v14, p0

    move-object/from16 v0, p1

    move-object/from16 v7, p2

    move-object/from16 v13, p3

    move-object/from16 v12, p4

    invoke-direct/range {p0 .. p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.GoogleCamera"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v8, 0xc9

    const/4 v9, 0x2

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    invoke-static {v0, v11}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    if-ne v1, v9, :cond_0

    const-string v1, "MediaProvider"

    const-string v2, "Working around app bug in b/111966296"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "external"

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {v0, v11}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    if-ne v1, v8, :cond_1

    const-string v1, "MediaProvider"

    const-string v2, "Working around app bug in b/112246630"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    const-string v2, "external"

    invoke-static {v2, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-direct {v14, v0}, safeUncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v10

    invoke-static {v10}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v15

    invoke-direct/range {p0 .. p0}, getCallingPackageTargetSdkVersion()I

    move-result v6

    invoke-direct/range {p0 .. p0}, isCallingPackageAllowedHidden()Z

    move-result v0

    invoke-static {v10, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v0

    :try_start_0
    invoke-direct {v14, v10}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v5

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_0 .. :try_end_0} :catch_9

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {v14, v2, v10, v0, v3}, getQueryBuilder(ILandroid/net/Uri;ILandroid/os/Bundle;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    move/from16 p1, v6

    const/16 v6, 0x65

    if-eq v0, v9, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {v14, v10, v2}, enforceCallingPermission(Landroid/net/Uri;Z)V

    :goto_1
    const/16 v8, 0x69

    const-wide/32 v11, 0x100000

    if-eqz v7, :cond_10

    const-string v2, "_id"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    sget-object v2, sDataColumns:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v3, v17

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    invoke-direct/range {p0 .. p0}, isCallingPackageSystem()Z

    move-result v17

    if-nez v17, :cond_5

    invoke-direct/range {p0 .. p0}, isCallingPackageLegacy()Z

    move-result v17

    if-eqz v17, :cond_4

    goto :goto_3

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Ignoring mutation of  "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "MediaProvider"

    invoke-static {v9, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_5
    :goto_3
    const/4 v3, 0x0

    const/16 v6, 0x65

    const/4 v9, 0x2

    goto :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, isCallingPackageSystem()Z

    move-result v2

    if-nez v2, :cond_c

    const-string v2, "filter"

    invoke-static {v11, v12, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const-string v2, "owner_package_name"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    new-instance v2, Lcom/android/providers/media/util/CachedSupplier;

    new-instance v3, Lcom/android/providers/media/-$$Lambda$MediaProvider$KH6NQR7ITTFd4DhabiUV0y5c2P4;

    invoke-direct {v3, v14, v10}, Lcom/android/providers/media/-$$Lambda$MediaProvider$KH6NQR7ITTFd4DhabiUV0y5c2P4;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    invoke-direct {v2, v3}, Lcom/android/providers/media/util/CachedSupplier;-><init>(Ljava/util/function/Supplier;)V

    new-instance v3, Landroid/util/ArraySet;

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v6, 0x0

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v11, sMutableColumns:Landroid/util/ArraySet;

    invoke-virtual {v11, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_5

    :cond_8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring mutation of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, getCallingPackageOrSelf()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "MediaProvider"

    invoke-static {v12, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v9}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eq v0, v8, :cond_9

    const/16 v11, 0x6f

    if-eq v0, v11, :cond_9

    const/4 v6, 0x1

    :cond_9
    :goto_5
    const-string v11, "is_pending"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    const/4 v6, 0x1

    :cond_a
    const-wide/32 v11, 0x100000

    goto :goto_4

    :cond_b
    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    move v11, v6

    goto :goto_6

    :cond_c
    const/4 v11, 0x0

    :goto_6
    const-string v2, "genre"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "genre"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;

    move-result-object v2

    const-string v6, "files"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {v14, v7}, maybeMarkAsDownload(Landroid/content/ContentValues;)Z

    :cond_d
    const-string v2, "latitude"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    const-string v2, "latitude"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_e
    const-string v2, "longitude"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "longitude"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    :cond_f
    move-object v12, v3

    move/from16 v28, v11

    goto :goto_7

    :cond_10
    const/4 v12, 0x0

    const/16 v28, 0x0

    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x0

    return v2

    :cond_11
    const/4 v9, 0x5

    const/4 v11, 0x4

    if-eq v0, v11, :cond_12

    if-eq v0, v9, :cond_12

    const/16 v2, 0x77

    if-eq v0, v2, :cond_12

    const/16 v2, 0x78

    if-eq v0, v2, :cond_12

    const/16 v2, 0xcb

    if-eq v0, v2, :cond_12

    const/16 v2, 0xcc

    if-eq v0, v2, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    const/4 v2, 0x1

    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v3

    sget-object v6, sPlacementColumns:Landroid/util/ArraySet;

    invoke-static {v3, v6}, containsAny(Ljava/util/Set;Ljava/util/Set;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "_data"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-direct/range {p0 .. p0}, isCallingPackageSystem()Z

    move-result v3

    if-nez v3, :cond_1c

    if-nez v2, :cond_1c

    const-string v2, "movement"

    const-wide/32 v8, 0x100000

    invoke-static {v8, v9, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v2, 0x2

    const/16 v6, 0x65

    if-eq v0, v2, :cond_14

    if-eq v0, v6, :cond_14

    const/16 v2, 0xc9

    if-eq v0, v2, :cond_14

    const/16 v2, 0x321

    if-ne v0, v2, :cond_13

    goto :goto_9

    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Movement of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " which isn\'t part of well-defined collection not allowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    :goto_9
    invoke-virtual/range {p0 .. p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v8

    :try_start_1
    sget-object v2, sPlacementColumns:Landroid/util/ArraySet;

    sget-object v3, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [Ljava/lang/String;

    const/4 v9, 0x0

    move-object v2, v1

    move-object/from16 v1, p0

    move-object/from16 v29, v2

    const/4 v11, 0x1

    move-object v2, v10

    const/4 v11, 0x0

    move-object/from16 v30, v4

    move-object/from16 v4, p3

    move-object/from16 v31, v5

    move-object/from16 v5, p4

    move/from16 v32, p1

    move-object v6, v9

    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v2, 0x0

    :goto_a
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-ge v2, v3, :cond_16

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    if-eqz v1, :cond_17

    :try_start_3
    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_17
    invoke-virtual {v14, v8}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    const-string v1, "_data"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, extractVolumeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, extractPathOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :try_start_4
    invoke-static {v0, v10, v7, v1}, ensureNonUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, extractVolumeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, extractPathOwnerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Identical paths "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; not moving"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_b
    const-wide/32 v1, 0x100000

    goto :goto_c

    :cond_18
    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-static {v3, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    const-string v2, "_data"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :try_start_5
    invoke-static {v0, v10, v7}, ensureUniqueFileColumns(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_5
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v2, "_data"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moving "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MediaProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_6
    invoke-static {v1, v2}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/system/ErrnoException; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "_data"

    invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :goto_c
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    move/from16 v2, v32

    goto/16 :goto_e

    :catch_0
    move-exception v0

    move-object v1, v0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v0

    move/from16 v2, v32

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result v0

    return v0

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing ownership from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not allowed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changing volume from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not allowed"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move/from16 v2, v32

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_1b

    :try_start_8
    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1b
    throw v3
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    goto :goto_d

    :catch_3
    move-exception v0

    :try_start_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :goto_d
    invoke-virtual {v14, v8}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw v0

    :cond_1c
    move/from16 v2, p1

    move-object/from16 v29, v1

    move-object/from16 v30, v4

    move-object/from16 v31, v5

    const/4 v11, 0x0

    :goto_e
    :try_start_a
    invoke-static {v0, v10, v7}, assertFileColumnsSane(ILandroid/net/Uri;Landroid/content/ContentValues;)V
    :try_end_a
    .catch Lcom/android/providers/media/MediaProvider$VolumeArgumentException; {:try_start_a .. :try_end_a} :catch_8

    const-string v1, "media_type"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    const-string v1, "media_type"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/16 v3, -0x1

    invoke-static {v2, v15, v1, v3, v4}, Lcom/android/providers/media/MediaDocumentsProvider;->onMediaStoreInsert(Landroid/content/Context;Ljava/lang/String;IJ)V

    const/4 v2, 0x1

    goto :goto_f

    :cond_1d
    const/4 v2, 0x0

    :goto_f
    const-string v1, "_data"

    invoke-virtual {v7, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const/16 v32, 0x1

    goto :goto_10

    :cond_1e
    move/from16 v32, v2

    :goto_10
    new-instance v9, Landroid/util/LongArray;

    invoke-direct {v9}, Landroid/util/LongArray;-><init>()V

    if-nez v32, :cond_20

    if-eqz v28, :cond_1f

    goto :goto_11

    :cond_1f
    move-object v8, v15

    const-wide/32 v1, 0x100000

    goto :goto_13

    :cond_20
    :goto_11
    const-string v1, "snapshot"

    const-wide/32 v2, 0x100000

    invoke-static {v2, v3, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v1

    :try_start_b
    const-string v2, "_id"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v17

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v8, v15

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_12

    :goto_12
    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v9, v4, v5}, Landroid/util/LongArray;->add(J)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_10

    goto :goto_12

    :cond_21
    if-eqz v2, :cond_22

    :try_start_d
    invoke-static {v11, v2}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_12

    :cond_22
    invoke-virtual {v14, v1}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :goto_13
    const/16 v3, 0x2bc

    const/16 v4, 0x2be

    if-eq v0, v3, :cond_23

    if-ne v0, v4, :cond_25

    :cond_23
    const-string v3, "_data"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_25

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_25

    sget-object v17, PATH_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-virtual/range {v15 .. v22}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_24

    :try_start_e
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_24

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_14

    :catchall_3
    move-exception v0

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_24
    move-object v15, v11

    :goto_14
    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v15, :cond_25

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_25

    const-string v5, "_display_name"

    invoke-virtual {v7, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_25

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We need to update the display name of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MediaProvider"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "_display_name"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const/16 v3, 0x2bd

    const/4 v6, 0x3

    if-ne v0, v3, :cond_2a

    const-string v3, "_data"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaScanner;->isNoMediaPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static {v3}, Landroid/media/MediaFile;->getMimeTypeForFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/media/MediaFile;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    const/4 v3, 0x2

    goto :goto_15

    :cond_26
    invoke-static {v3}, Landroid/media/MediaFile;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    move v3, v6

    goto :goto_15

    :cond_27
    invoke-static {v3}, Landroid/media/MediaFile;->isImageMimeType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v3, 0x1

    goto :goto_15

    :cond_28
    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListMimeType(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    const/4 v3, 0x4

    goto :goto_15

    :cond_29
    const/4 v3, 0x0

    :goto_15
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v5, "media_type"

    invoke-virtual {v7, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2a
    if-eq v0, v4, :cond_2b

    const/16 v3, 0x2bf

    if-eq v0, v3, :cond_2b

    const/16 v3, 0x2c2

    if-ne v0, v3, :cond_38

    :cond_2b
    if-eqz v7, :cond_38

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2c

    const-string v3, "_data"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2d

    :cond_2c
    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_38

    const-string v3, "_data"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "parent"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_38

    :cond_2d
    const-string v3, "_data"

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Landroid/content/ContentValues;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2f

    const-string v4, "_data"

    invoke-virtual {v7, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2f

    sget-boolean v4, DBG:Z

    if-eqz v4, :cond_2e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rescan: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MediaProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    const/4 v4, 0x1

    goto :goto_16

    :cond_2f
    const/4 v4, 0x0

    :goto_16
    iget-object v5, v14, mDirectoryCache:Landroid/util/ArrayMap;

    monitor-enter v5

    :try_start_f
    iget-object v15, v14, mDirectoryCache:Landroid/util/ArrayMap;

    invoke-virtual {v15, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_36

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_36

    sget-object v17, PATH_PROJECTION:[Ljava/lang/String;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    invoke-virtual/range {v15 .. v23}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    if-eqz v15, :cond_30

    :try_start_10
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-eqz v16, :cond_30

    const/4 v1, 0x1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_17

    :catchall_4
    move-exception v0

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_30
    move-object v2, v11

    :goto_17
    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v3}, Landroid/provider/MediaStore$Downloads;->isDownload(Ljava/lang/String;)Z

    move-result v1

    if-eqz v2, :cond_35

    iget-object v15, v14, mDirectoryCache:Landroid/util/ArrayMap;

    monitor-enter v15

    :try_start_11
    iget-object v0, v14, mDirectoryCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v15
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    invoke-static {v2}, Landroid/provider/MediaStore$Downloads;->isDownload(Ljava/lang/String;)Z

    move-object/from16 v0, p4

    move-object/from16 v8, v29

    move-object/from16 v9, v30

    invoke-virtual {v8, v9, v7, v13, v0}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_31

    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v3, v7, v16

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v11, 0x1

    add-int/2addr v8, v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "0"

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v6

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v7, v6

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x5

    aput-object v2, v7, v6

    const/4 v2, 0x6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v2

    const-string v1, "UPDATE files SET _data=?1||SUBSTR(_data, ?2),bucket_display_name=?5,bucket_id=?6,is_download=?7 WHERE _data >= ?3 AND _data < ?4;"

    invoke-virtual {v9, v1, v7}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_31
    if-lez v0, :cond_32

    invoke-static/range {v31 .. v31}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;

    move-object/from16 v2, v31

    invoke-direct {v1, v2}, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;-><init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V

    invoke-static {v1, v10}, acceptWithExpansion(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    :cond_32
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_33

    if-eqz v4, :cond_34

    :cond_33
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/android/providers/media/scan/MediaScanner;->scanFile(Ljava/io/File;)Landroid/net/Uri;

    :cond_34
    return v0

    :catchall_5
    move-exception v0

    :try_start_12
    monitor-exit v15
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    throw v0

    :cond_35
    move-object/from16 v4, p4

    move-object/from16 v1, v29

    move-object/from16 v2, v31

    const/16 v16, 0x0

    move-object/from16 v15, v30

    goto :goto_18

    :cond_36
    move-object/from16 v4, p4

    move-object/from16 v1, v29

    move-object/from16 v5, v30

    move-object/from16 v2, v31

    const/16 v16, 0x0

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string v11, "/.nomedia"

    invoke-virtual {v15, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_37

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object v11

    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-interface {v11, v3}, Lcom/android/providers/media/scan/MediaScanner;->scanFile(Ljava/io/File;)Landroid/net/Uri;

    :cond_37
    move-object v15, v5

    goto :goto_18

    :catchall_6
    move-exception v0

    :try_start_13
    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    throw v0

    :cond_38
    move-object/from16 v4, p4

    move-object/from16 v1, v29

    move-object/from16 v15, v30

    move-object/from16 v2, v31

    const/16 v16, 0x0

    :goto_18
    const/4 v11, 0x1

    if-eq v0, v11, :cond_3e

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3e

    const/16 v5, 0x64

    if-eq v0, v5, :cond_3f

    const/16 v3, 0x65

    if-eq v0, v3, :cond_3f

    const/16 v3, 0x69

    if-eq v0, v3, :cond_3d

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_3e

    const/16 v3, 0xc9

    if-eq v0, v3, :cond_3e

    packed-switch v0, :pswitch_data_0

    :cond_39
    move-object v3, v2

    goto :goto_19

    :pswitch_0
    const-string v0, "move"

    invoke-virtual {v10, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_39

    const-string v0, "play_order"

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v7, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v1, p0

    move-object v3, v2

    move-object v2, v8

    move-object v4, v15

    move-wide v5, v9

    move v8, v0

    invoke-direct/range {v1 .. v8}, movePlaylistEntry(Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;JII)I

    move-result v0

    if-lez v0, :cond_3a

    invoke-direct {v14, v15, v9, v10}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    :cond_3a
    return v0

    :cond_3b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Need to specify "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " when using \'move\' parameter"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_19
    invoke-virtual {v1, v15, v7, v13, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :cond_3c
    :goto_1a
    move-object v7, v3

    move-object/from16 p1, v9

    move-object/from16 v22, v10

    :goto_1b
    move v9, v0

    goto/16 :goto_2b

    :pswitch_1
    move-object v3, v2

    invoke-virtual {v10}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v15, v7, v13, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3c

    invoke-direct {v14, v15, v5, v6}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1a

    :cond_3d
    :pswitch_2
    move-object v3, v2

    goto :goto_1c

    :cond_3e
    move-object v3, v1

    move-object/from16 v40, v2

    move-object v2, v4

    move-object/from16 p1, v9

    move-object/from16 v22, v10

    move-object v1, v13

    goto/16 :goto_2a

    :goto_1c
    invoke-static {v10}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v15, v7, v13, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3c

    invoke-direct {v14, v15, v5, v6}, updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V

    goto :goto_1a

    :cond_3f
    move-object v3, v2

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v7}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v7, "album_artist"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v7, "compilation"

    invoke-virtual {v2, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v5, "compilation"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v5, "_data"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v5, "artist"

    invoke-virtual {v2, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "artist"

    invoke-virtual {v2, v6}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v5, :cond_41

    iget-object v6, v3, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mArtistCache:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_14
    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Long;

    if-nez v21, :cond_40

    const-string v21, "artists"

    const-string v22, "artist_key"

    const-string v23, "artist"
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v33, v1

    move-object/from16 v1, p0

    move-object/from16 v34, v2

    move-object v2, v3

    move-object/from16 v35, v3

    move-object v3, v15

    move-object/from16 v4, v21

    move-object/from16 v27, v5

    move-object/from16 v5, v22

    move-object/from16 v20, v6

    move-object/from16 v6, v23

    move-object/from16 v36, v7

    move-object/from16 v7, v27

    move-object/from16 v37, v8

    move-object/from16 v8, v27

    move-object/from16 p1, v9

    move-object/from16 v9, v24

    move-object/from16 v22, v10

    move/from16 v10, v25

    move-object/from16 v11, v26

    move-object/from16 v39, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v22

    :try_start_15
    invoke-direct/range {v1 .. v13}, getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_1d

    :cond_40
    move-object/from16 v33, v1

    move-object/from16 v34, v2

    move-object/from16 v35, v3

    move-object/from16 v27, v5

    move-object/from16 v20, v6

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 p1, v9

    move-object/from16 v22, v10

    move-object/from16 v39, v12

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_1d
    monitor-exit v20
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_8

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "artist_id"

    move-object/from16 v13, v34

    invoke-virtual {v13, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1f

    :catchall_7
    move-exception v0

    move-object/from16 v20, v6

    :goto_1e
    :try_start_16
    monitor-exit v20
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    throw v0

    :catchall_8
    move-exception v0

    goto :goto_1e

    :cond_41
    move-object/from16 v33, v1

    move-object v13, v2

    move-object/from16 v35, v3

    move-object/from16 v27, v5

    move-object/from16 v36, v7

    move-object/from16 v37, v8

    move-object/from16 p1, v9

    move-object/from16 v22, v10

    move-object/from16 v39, v12

    :goto_1f
    const-string v1, "album"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "album"

    invoke-virtual {v13, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    if-eqz v7, :cond_49

    if-eqz v17, :cond_42

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->hashCode()I

    move-result v1

    move v9, v1

    move-object/from16 v10, v22

    :goto_20
    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_24

    :cond_42
    move-object/from16 v1, v36

    if-eqz v1, :cond_43

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    move-object/from16 v10, v22

    const/4 v9, 0x0

    goto :goto_20

    :cond_43
    if-nez v19, :cond_46

    const/16 v1, 0x64

    if-ne v0, v1, :cond_44

    const-string v1, "MediaProvider"

    const-string v2, "Possible multi row album name update without path could give wrong album key"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    :cond_44
    const-string v1, "_data"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-virtual/range {v1 .. v6}, query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_46

    :try_start_17
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v12, 0x1

    if-ne v2, v12, :cond_45

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v11, 0x0

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    move-object/from16 v10, v22

    goto :goto_21

    :cond_45
    const/4 v11, 0x0

    const-string v3, "MediaProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " rows for "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, v22

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_9

    :goto_21
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_23

    :catchall_9
    move-exception v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_46
    :goto_22
    move-object/from16 v10, v22

    const/4 v11, 0x0

    const/4 v12, 0x1

    :goto_23
    move-object/from16 v1, v19

    if-eqz v1, :cond_47

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    invoke-virtual {v1, v11, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    move-object/from16 v19, v1

    move v9, v2

    goto :goto_24

    :cond_47
    move-object/from16 v19, v1

    move v9, v11

    :goto_24
    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, v35

    iget-object v6, v8, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mAlbumCache:Landroid/util/ArrayMap;

    monitor-enter v6

    :try_start_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-nez v1, :cond_48

    const-string v4, "albums"

    const-string v16, "album_key"

    const-string v17, "album"
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    move-object/from16 v1, p0

    move-object v2, v8

    move-object v3, v15

    move-object/from16 v18, v5

    move-object/from16 v5, v16

    move-object/from16 v16, v6

    move-object/from16 v6, v17

    move-object/from16 v40, v8

    move-object/from16 v8, v18

    move/from16 v38, v9

    move-object/from16 v9, v19

    move-object/from16 v22, v10

    move/from16 v10, v38

    move-object/from16 v11, v27

    move/from16 v17, v0

    move v0, v12

    move-object/from16 v12, v16

    move-object v0, v13

    move-object/from16 v13, v22

    :try_start_19
    invoke-direct/range {v1 .. v13}, getKeyIdForName(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Landroid/util/ArrayMap;Landroid/net/Uri;)J

    move-result-wide v1

    goto :goto_25

    :cond_48
    move/from16 v17, v0

    move-object/from16 v16, v6

    move-object/from16 v40, v8

    move-object/from16 v22, v10

    move-object v0, v13

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    :goto_25
    monitor-exit v16
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_b

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "album_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :catchall_a
    move-exception v0

    move-object/from16 v16, v6

    :goto_26
    :try_start_1a
    monitor-exit v16
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_b

    throw v0

    :catchall_b
    move-exception v0

    goto :goto_26

    :cond_49
    move/from16 v17, v0

    move-object v0, v13

    move-object/from16 v40, v35

    :goto_27
    const-string v1, "title_key"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4b

    :try_start_1b
    invoke-direct {v14, v1}, getLocalizedTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4a

    const-string v3, "title_resource_uri"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_28

    :cond_4a
    const-string v2, "title_resource_uri"

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_4

    goto :goto_28

    :catch_4
    const-string v2, "title_resource_uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_28
    invoke-static {v1}, Landroid/provider/MediaStore$Audio;->keyFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title_key"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "_display_name"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static/range {v19 .. v19}, extractDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_display_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, v33

    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    move-object/from16 v3, v39

    if-eqz v3, :cond_4e

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4c

    move/from16 v1, v17

    const/16 v2, 0x65

    if-ne v1, v2, :cond_4d

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    move-object/from16 v8, v37

    invoke-direct {v14, v1, v2, v3, v8}, updateGenre(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_29

    :cond_4c
    move/from16 v1, v17

    :cond_4d
    move-object/from16 v8, v37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ignoring genre in update: count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " match = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29

    :cond_4e
    move-object/from16 v8, v37

    :goto_29
    move v9, v0

    move-object/from16 v7, v40

    goto :goto_2b

    :goto_2a
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    const-string v4, "bucket_id"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v4, "bucket_display_name"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-static {v0}, computeDataValues(Landroid/content/ContentValues;)V

    move-object/from16 v7, v40

    iget-boolean v4, v7, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mInternal:Z

    if-nez v4, :cond_4f

    invoke-static {v0}, Lcom/android/providers/media/MediaProviderUtils;->reComputeExifTakenTime(Landroid/content/ContentValues;)V

    :cond_4f
    invoke-virtual {v3, v15, v0, v1, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->update(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_1b

    :goto_2b
    if-nez v32, :cond_50

    if-eqz v28, :cond_55

    :cond_50
    const-string v0, "invalidate"

    const-wide/32 v10, 0x100000

    invoke-static {v10, v11, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v12

    const/4 v13, 0x0

    :goto_2c
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Landroid/util/LongArray;->size()I

    move-result v0

    if-ge v13, v0, :cond_54

    move-object/from16 v15, p1

    invoke-virtual {v15, v13}, Landroid/util/LongArray;->get(I)J

    move-result-wide v0

    invoke-static {v8, v0, v1}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/providers/media/-$$Lambda$MediaProvider$2k4dW-fTymlKMX5oVkeVJvvs-GU;

    invoke-direct {v1, v14, v6}, Lcom/android/providers/media/-$$Lambda$MediaProvider$2k4dW-fTymlKMX5oVkeVJvvs-GU;-><init>(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_f

    if-eqz v28, :cond_53

    :try_start_1d
    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_7
    .catchall {:try_start_1d .. :try_end_1d} :catchall_f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v0, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move-object v10, v6

    move-object v6, v0

    :try_start_1e
    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_6
    .catchall {:try_start_1e .. :try_end_1e} :catchall_f

    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object v0

    new-instance v2, Ljava/io/File;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_d

    const/4 v3, 0x0

    :try_start_20
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/android/providers/media/scan/MediaScanner;->scanFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_c

    if-eqz v1, :cond_51

    const/4 v2, 0x0

    :try_start_21
    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_5
    .catchall {:try_start_21 .. :try_end_21} :catchall_f

    goto :goto_30

    :cond_51
    const/4 v2, 0x0

    goto :goto_30

    :catchall_c
    move-exception v0

    const/4 v2, 0x0

    goto :goto_2d

    :catchall_d
    move-exception v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2d
    move-object v4, v0

    :try_start_22
    throw v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :catchall_e
    move-exception v0

    move-object v5, v0

    if-eqz v1, :cond_52

    :try_start_23
    invoke-static {v4, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_52
    throw v5
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_5
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    :catch_5
    move-exception v0

    goto :goto_2f

    :catch_6
    move-exception v0

    goto :goto_2e

    :catch_7
    move-exception v0

    move-object v10, v6

    :goto_2e
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2f
    :try_start_24
    const-string v1, "MediaProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update metadata for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_f

    goto :goto_30

    :cond_53
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_30
    add-int/lit8 v13, v13, 0x1

    move-object/from16 p1, v15

    const-wide/32 v10, 0x100000

    goto/16 :goto_2c

    :cond_54
    invoke-virtual {v14, v12}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    :cond_55
    if-lez v9, :cond_56

    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;

    invoke-direct {v0, v7}, Lcom/android/providers/media/-$$Lambda$wayYa6jbz63zQuZEMxJHT6Y1tjU;-><init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;)V

    move-object/from16 v1, v22

    invoke-static {v0, v1}, acceptWithExpansion(Ljava/util/function/Consumer;Landroid/net/Uri;)V

    :cond_56
    return v9

    :catchall_f
    move-exception v0

    invoke-virtual {v14, v12}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_10
    move-exception v0

    move-object v3, v0

    :try_start_25
    throw v3
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_11

    :catchall_11
    move-exception v0

    move-object v4, v0

    if-eqz v2, :cond_57

    :try_start_26
    invoke-static {v3, v2}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_57
    throw v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_12

    :catchall_12
    move-exception v0

    invoke-virtual {v14, v1}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    const-wide/32 v1, 0x100000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catch_8
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1, v2}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result v0

    return v0

    :catch_9
    move-exception v0

    move v2, v6

    invoke-virtual {v0, v2}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x6f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePlaylistDateModifiedToNow(Landroid/database/sqlite/SQLiteDatabase;J)V
    .locals 3

    new-instance p0, Landroid/content/ContentValues;

    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "date_modified"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v0, p3

    const-string p2, "files"

    const-string p3, "_id=?"

    invoke-virtual {p1, p2, p0, p3, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private static updateRelativePath(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 0

    const-string p1, "UPDATE files SET relative_path=relative_path||\'/\' WHERE relative_path IS NOT NULL AND relative_path NOT LIKE \'%/\';"

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private static updateSetIsDownload(Landroid/database/sqlite/SQLiteDatabase;Z)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UPDATE files SET is_download=1 WHERE _data REGEXP \'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/provider/MediaStore$Downloads;->PATTERN_DOWNLOADS_FILE:Ljava/util/regex/Pattern;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\'"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private updateVolumes()V
    .locals 8

    sget-object v0, sCacheLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, sCachedVolumes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    sget-object v1, sCachedVolumes:Ljava/util/List;

    iget-object v2, p0, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, sCachedExternalVolumeNames:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    sget-object v1, sCachedExternalVolumeNames:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/provider/MediaStore;->getExternalVolumeNames(Landroid/content/Context;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    sget-object p0, sCachedVolumeScanPaths:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object p0, sCachedVolumeScanPaths:Ljava/util/Map;

    const-string v1, "internal"

    const-string v2, "internal"

    invoke-static {v2}, Landroid/provider/MediaStore;->getVolumeScanPaths(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, sCachedExternalVolumeNames:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "external_primary"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "MediaProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVolumes MediaStore.getVolumeScanPaths(volumeName): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v1}, Landroid/provider/MediaStore;->getVolumeScanPaths(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v2

    sget-boolean v3, DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "MediaProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVolumes MediaStore.getVolumeScanPaths(volumeName): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " end"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-instance v3, Ljava/io/File;

    const-string v4, "/storage/emulated/"

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v4

    :try_start_3
    const-string v5, "MediaProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to resolve "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_1
    sget-object v3, sCachedVolumeScanPaths:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_3
    :try_start_4
    monitor-exit v0

    return-void

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentProviderOperation;

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v2}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->beginTransaction()V

    invoke-virtual {v0, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "MediaProvider"

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->endTransaction()V

    goto :goto_2

    :cond_3
    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->endTransaction()V

    goto :goto_3

    :cond_4
    throw p0
.end method

.method public attachVolume(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    iget-object v0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/LocalCallingIdentity;

    iget v0, v0, Lcom/android/providers/media/LocalCallingIdentity;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Landroid/provider/MediaStore;->checkArgumentVolumeName(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {p1}, getVolumePath(Ljava/lang/String;)Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Volume "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " currently unavailable"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-boolean v1, LOCAL_LOGV:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attached volume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "internal"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, mInternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, ensureDefaultFolders(Ljava/lang/String;Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Opening and closing databases not allowed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 4

    invoke-direct {p0}, getCallingPackageTargetSdkVersion()I

    move-result v0

    invoke-direct {p0}, isCallingPackageAllowedHidden()Z

    move-result v1

    invoke-static {p1, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    const/16 v2, 0x12c

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2c0

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, v2, v0, p1, p2}, setObjectReferences(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/database/sqlite/SQLiteDatabase;I[Landroid/content/ContentValues;)I

    move-result p0

    return p0

    :cond_1
    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->beginTransaction()V

    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/content/ContentProvider;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->endTransaction()V

    return p0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->endTransaction()V

    throw p0

    :catch_0
    move-exception p0

    invoke-virtual {p0, v0}, Lcom/android/providers/media/MediaProvider$FallbackException;->translateForUpdateDelete(I)I

    move-result p0

    return p0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 12

    const-string p2, "android.intent.extra.STREAM"

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "scan_volume"

    const-string v2, "scan_file"

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "get_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "get_contributed_media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_2
    const-string v0, "delete_contributed_media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v0, "unhide"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_4
    const-string v0, "get_document_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v0, "update_titles"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_6
    const-string v0, "get_media_uri"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :sswitch_8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v3

    :goto_1
    const-string v6, "com.android.externalstorage.documents"

    const-string v7, "android.intent.extra.PACKAGE_NAME"

    const-string v8, "android.permission.CLEAR_APP_USER_DATA"

    const-string v9, "MediaProvider"

    const-string v10, "uri"

    const/4 v11, 0x0

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported call: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/android/providers/media/-$$Lambda$MediaProvider$gC_2gOyllZm7v0ijAUeEKChD2Uk;

    invoke-direct {p2, p0}, Lcom/android/providers/media/-$$Lambda$MediaProvider$gC_2gOyllZm7v0ijAUeEKChD2Uk;-><init>(Lcom/android/providers/media/MediaProvider;)V

    invoke-direct {p0, p1, p2}, forEachContributedMedia(Ljava/lang/String;Ljava/util/function/Consumer;)J

    return-object v11

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v11}, forEachContributedMedia(Ljava/lang/String;Ljava/util/function/Consumer;)J

    move-result-wide p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string p3, "android.intent.extra.INDEX"

    invoke-virtual {p2, p3, p0, p1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-object p2

    :pswitch_2
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2, v5, v9}, Landroid/content/Context;->enforceCallingUriPermission(Landroid/net/Uri;ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p2, p1, v11, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_1

    :try_start_2
    invoke-static {v11, p2}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    invoke-virtual {p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object p2

    :try_start_3
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v11}, queryForMediaUri(Ljava/io/File;Landroid/os/CancellationSignal;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, v10, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-virtual {p0, p2}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-virtual {p0, p2}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw p1

    :catchall_1
    move-exception p0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception p1

    if-eqz p2, :cond_2

    :try_start_6
    invoke-static {p0, p2}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p1
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_3
    invoke-virtual {p3, v10}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    invoke-direct {p0, p2, v4}, enforceCallingPermission(Landroid/net/Uri;Z)V

    invoke-virtual {p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v0

    :try_start_7
    invoke-virtual {p0, p2, v11}, queryForDataFile(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    invoke-virtual {p0, v0}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    :try_start_8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    invoke-virtual {p3, v10, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {p0, p1, v11, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz p0, :cond_3

    :try_start_a
    invoke-static {v11, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_2

    :cond_3
    return-object p1

    :catchall_3
    move-exception p1

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p0, :cond_4

    :try_start_c
    invoke-static {p1, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    throw p2
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_2

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catchall_5
    move-exception p1

    goto :goto_3

    :catch_3
    move-exception p1

    :try_start_d
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :goto_3
    invoke-virtual {p0, v0}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw p1

    :pswitch_4
    const-string p1, "android.intent.extra.TEXT"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_e
    invoke-static {p2}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-direct {p0, p2}, getDatabaseForUri(Landroid/net/Uri;)Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    move-result-object p0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0
    :try_end_e
    .catch Lcom/android/providers/media/MediaProvider$VolumeNotFoundException; {:try_start_e .. :try_end_e} :catch_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, getOrCreateUuid(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p2, p1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider$FallbackException;->rethrowAsIllegalArgumentException()Ljava/lang/IllegalArgumentException;

    move-result-object p0

    throw p0

    :pswitch_5
    invoke-direct {p0}, localizeTitles()V

    return-object v11

    :pswitch_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_7
    invoke-virtual {p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->clearCallingIdentity()Landroid/content/ContentProvider$CallingIdentity;

    move-result-object v6

    :try_start_f
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/net/Uri;

    new-instance v7, Ljava/io/File;

    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v7, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v8

    const v9, -0x6cd19202

    if-eq v8, v9, :cond_6

    const v2, -0x6312b8e4

    if-eq v8, v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v3, v5

    goto :goto_4

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    move v3, v4

    :cond_7
    :goto_4
    if-eqz v3, :cond_9

    if-eq v3, v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/providers/media/MediaService;->onScanVolume(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_5

    :cond_9
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object p1

    invoke-interface {p1, v7}, Lcom/android/providers/media/scan/MediaScanner;->scanFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_5
    invoke-virtual {p0, v6}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    invoke-virtual {p0, v0}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    return-object p3

    :catchall_6
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    :try_start_10
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :goto_6
    invoke-virtual {p0, v6}, Landroid/content/ContentProvider;->restoreCallingIdentity(Landroid/content/ContentProvider$CallingIdentity;)V

    invoke-virtual {p0, v0}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw p1

    :sswitch_data_0
    .sparse-switch
        -0x6cd19202 -> :sswitch_8
        -0x6312b8e4 -> :sswitch_7
        -0x61b65718 -> :sswitch_6
        -0x4f02d6af -> :sswitch_5
        -0x476a496f -> :sswitch_4
        -0x321a08a5 -> :sswitch_3
        -0x1040a058 -> :sswitch_2
        0xcd97493 -> :sswitch_1
        0x19849cef -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 11

    const-string v0, "document_id"

    invoke-direct {p0}, isCallingPackageAllowedHidden()Z

    move-result v1

    invoke-static {p1, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    const-string v2, "canonical"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v3, 0x0

    move-object v5, p0

    move-object v6, p1

    :try_start_0
    invoke-virtual/range {v5 .. v10}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x2

    if-eq v1, v6, :cond_3

    const/16 v6, 0x65

    if-eq v1, v6, :cond_1

    const/16 p0, 0xc9

    if-eq v1, p0, :cond_3

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-direct {p0, v5}, getDefaultTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "title"

    invoke-virtual {p1, v0, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_2

    :try_start_2
    invoke-static {v3, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v5, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_4

    :try_start_4
    invoke-static {v3, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_4
    return-object p0

    :cond_5
    :goto_0
    if-eqz v5, :cond_7

    invoke-static {v3, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :goto_1
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v5, :cond_6

    :try_start_6
    invoke-static {p0, v5}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw p1
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-object v3
.end method

.method public clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;
    .locals 2

    iget-object v0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/LocalCallingIdentity;

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-static {}, Lcom/android/providers/media/LocalCallingIdentity;->fromSelf()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object v0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public detachVolume(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/LocalCallingIdentity;

    iget v0, v0, Lcom/android/providers/media/LocalCallingIdentity;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_3

    invoke-static {p1}, Landroid/provider/MediaStore;->checkArgumentVolumeName(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "internal"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/providers/media/scan/MediaScanner;->onDetachVolume(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/providers/media/MediaProviderUtils;->isDeviceShuttingDown()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "MediaProvider"

    const-string p1, "not deleting entries on eject due to shutdown"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/provider/MediaStore;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    sget-boolean p0, LOCAL_LOGV:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detached volume: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Deleting the internal volume is not allowed"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Opening and closing databases not allowed."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object p2, p0, mThumbSize:Landroid/util/Size;

    const-string p3, "mThumbSize"

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, mAttachedVolumeNames:Landroid/util/ArraySet;

    const-string p3, "mAttachedVolumeNames"

    invoke-virtual {p1, p3, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    iget-object p2, p0, mInternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3}, dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-direct {p0, p2, p3}, dump(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, enforceShellRestrictions()V

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    invoke-direct {p0}, enforceShellRestrictions()V

    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const/4 v0, 0x1

    invoke-static {p1, v0}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    if-eq v1, v0, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_6

    const/4 v0, 0x5

    if-eq v1, v0, :cond_2

    const/16 v0, 0x78

    if-eq v1, v0, :cond_2

    const/16 v0, 0x79

    if-eq v1, v0, :cond_2

    const/16 v0, 0xc8

    if-eq v1, v0, :cond_1

    const/16 v0, 0xc9

    if-eq v1, v0, :cond_3

    const/16 v0, 0xcc

    if-eq v1, v0, :cond_2

    const/16 v0, 0x2bd

    if-eq v1, v0, :cond_3

    const/16 v0, 0x320

    if-eq v1, v0, :cond_0

    const/16 v0, 0x321

    if-eq v1, v0, :cond_3

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown URL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "vnd.android.cursor.item/playlist"

    return-object p0

    :pswitch_1
    const-string p0, "vnd.android.cursor.dir/playlist"

    return-object p0

    :pswitch_2
    const-string p0, "vnd.android.cursor.item/genre"

    return-object p0

    :pswitch_3
    const-string p0, "vnd.android.cursor.dir/genre"

    return-object p0

    :pswitch_4
    const-string p0, "vnd.android.cursor.dir/audio"

    return-object p0

    :cond_0
    const-string p0, "vnd.android.cursor.dir/download"

    return-object p0

    :cond_1
    const-string p0, "vnd.android.cursor.dir/video"

    return-object p0

    :cond_2
    const-string p0, "image/jpeg"

    return-object p0

    :cond_3
    :pswitch_5
    invoke-virtual {p0}, clearLocalCallingIdentity()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v0

    :try_start_0
    const-string v1, "mime_type"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_4

    :try_start_2
    invoke-static {v1, p1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_4
    invoke-virtual {p0, v0}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    return-object v2

    :catchall_0
    move-exception v1

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz p1, :cond_5

    :try_start_4
    invoke-static {v1, p1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_5
    throw v2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_0
    invoke-virtual {p0, v0}, restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V

    throw p1

    :cond_6
    const-string p0, "vnd.android.cursor.dir/image"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6e
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "insert"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2}, insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public synthetic lambda$call$5$MediaProvider(Landroid/net/Uri;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public synthetic lambda$deleteInternal$4$MediaProvider(Landroid/net/Uri;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->revokeUriPermission(Landroid/net/Uri;I)V

    return-void
.end method

.method public synthetic lambda$new$0$MediaProvider(IILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    monitor-enter p1

    if-eqz p4, :cond_0

    :try_start_0
    iget-object p4, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    invoke-static {p2, p3}, Lcom/android/providers/media/LocalCallingIdentity;->fromExternal(ILjava/lang/String;)Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object p3

    invoke-virtual {p4, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p3, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->remove(I)V

    :goto_0
    iget-object p0, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    if-lez p0, :cond_1

    const-wide/16 p2, 0x2710

    sput-wide p2, sBackgroundDelay:J

    goto :goto_1

    :cond_1
    const-wide/16 p2, 0x0

    sput-wide p2, sBackgroundDelay:J

    :goto_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$new$1$MediaProvider()Lcom/android/providers/media/LocalCallingIdentity;
    .locals 3

    iget-object v0, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mCachedCallingIdentity:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/LocalCallingIdentity;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/android/providers/media/LocalCallingIdentity;->fromBinder(Landroid/content/ContentProvider;)Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public synthetic lambda$openFileAndEnforcePathPermissionsHelper$8$MediaProvider(Landroid/net/Uri;ILjava/io/File;Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, invalidateThumbnails(Landroid/net/Uri;)V

    const/4 p4, 0x5

    if-eq p2, p4, :cond_0

    const/16 p4, 0xcc

    if-eq p2, p4, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/providers/media/scan/MediaScanner;->instance(Landroid/content/Context;)Lcom/android/providers/media/scan/MediaScanner;

    move-result-object p0

    invoke-interface {p0, p3}, Lcom/android/providers/media/scan/MediaScanner;->scanFile(Ljava/io/File;)Landroid/net/Uri;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    invoke-direct {p0, p2, p3}, updateImageMetadata(Landroid/content/ContentValues;Ljava/io/File;)V

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3, p3}, update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to update metadata for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MediaProvider"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public synthetic lambda$updateInternal$6$MediaProvider(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 0

    invoke-direct {p0, p1}, isPending(Landroid/net/Uri;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$updateInternal$7$MediaProvider(Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, invalidateThumbnails(Landroid/net/Uri;)V

    return-void
.end method

.method makeBestName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    const-string p0, ", the"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ",the"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ", an"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ",an"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ", a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, ",a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    :cond_2
    const/16 p0, 0x2c

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x0

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_3
    return-object p1
.end method

.method public onCallingPackageChanged()V
    .locals 0

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method public onCreate()Z
    .locals 9

    sget-boolean v0, DBG:Z

    const-string v1, "MediaProvider"

    if-eqz v0, :cond_0

    const-string v0, "onCreate start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "setTransportLoggingEnabled start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-boolean v2, LOCAL_LOGV:Z

    invoke-virtual {p0, v2}, Landroid/content/ContentProvider;->setTransportLoggingEnabled(Z)V

    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "setTransportLoggingEnabled end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "Binder.setProxyTransactListener start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v2, Landroid/os/Binder$PropagateWorkSourceTransactListener;

    invoke-direct {v2}, Landroid/os/Binder$PropagateWorkSourceTransactListener;-><init>()V

    invoke-static {v2}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "Binder.setProxyTransactListener end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-class v2, Landroid/os/storage/StorageManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/StorageManager;

    iput-object v2, p0, mStorageManager:Landroid/os/storage/StorageManager;

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    iput-object v2, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-instance v3, Landroid/util/Size;

    invoke-direct {v3, v2, v2}, Landroid/util/Size;-><init>(II)V

    iput-object v3, p0, mThumbSize:Landroid/util/Size;

    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "new database helper start"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    new-instance v8, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    const-string v4, "internal.db"

    move-object v2, v8

    move-object v3, v0

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    iput-object v8, p0, mInternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    new-instance v8, Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    const/4 v5, 0x0

    iget-object v7, p0, mObjectRemovedCallback:Landroid/database/sqlite/SQLiteDatabase$CustomFunction;

    const-string v4, "external.db"

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;-><init>(Landroid/content/Context;Ljava/lang/String;ZZLandroid/database/sqlite/SQLiteDatabase$CustomFunction;)V

    iput-object v8, p0, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    sget-boolean v2, DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "new database helper end"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, mMediaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "mStorageManager.registerListener start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, mStorageManager:Landroid/os/storage/StorageManager;

    new-instance v2, Lcom/android/providers/media/MediaProvider$3;

    invoke-direct {v2, p0}, Lcom/android/providers/media/MediaProvider$3;-><init>(Lcom/android/providers/media/MediaProvider;)V

    invoke-virtual {v0, v2}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "mStorageManager.registerListener end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "updateVolumes start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, updateVolumes()V

    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "updateVolumes end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "attachVolume(MediaStore.VOLUME_INTERNAL); start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    const-string v0, "internal"

    invoke-virtual {p0, v0}, attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "attachVolume(MediaStore.VOLUME_INTERNAL); end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "attachVolume(volumeName); start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {}, getExternalVolumeNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, attachVolume(Ljava/lang/String;)Landroid/net/Uri;

    goto :goto_0

    :cond_e
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "attachVolume(volumeName); end"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    sget-boolean v0, DBG:Z

    if-eqz v0, :cond_10

    const-string v0, "mAppOpsManager.startWatchingActive start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    const/4 v2, 0x1

    new-array v3, v2, [I

    const/4 v4, 0x0

    const/16 v5, 0x1a

    aput v5, v3, v4

    iget-object p0, p0, mActiveListener:Landroid/app/AppOpsManager$OnOpActiveChangedListener;

    invoke-virtual {v0, v3, p0}, Landroid/app/AppOpsManager;->startWatchingActive([ILandroid/app/AppOpsManager$OnOpActiveChangedListener;)V

    sget-boolean p0, DBG:Z

    if-eqz p0, :cond_11

    const-string p0, "mAppOpsManager.startWatchingActive end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    sget-boolean p0, DBG:Z

    if-eqz p0, :cond_12

    const-string p0, "onCreate() end"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v2
.end method

.method public onIdleMaintenance(Landroid/os/CancellationSignal;)V
    .locals 19

    move-object/from16 v1, p0

    iget-object v2, v1, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    invoke-static {}, getExternalVolumeNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v15, "MediaProvider"

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/os/CancellationSignal;->throwIfCanceled()V

    :try_start_0
    invoke-static {v0}, getVolumePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/android/providers/media/MediaService;->onScanVolume(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v15, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    invoke-direct/range {p0 .. p1}, pruneThumbnails(Landroid/os/CancellationSignal;)V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v4, 0x1

    const-string v3, "owner_package_name"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v5, "files"

    move-object v3, v14

    move-object/from16 v13, p1

    invoke-virtual/range {v3 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :goto_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v13, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v3, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x2000

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catch_1
    :try_start_3
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    if-eqz v3, :cond_3

    invoke-static {v12, v3}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " unknown packages"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, onPackageOrphaned(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v16, 0x240c8400

    sub-long v3, v3, v16

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    div-long/2addr v7, v5

    const/4 v0, 0x1

    const-string v5, "volume_name"

    const-string v6, "_id"

    filled-new-array {v5, v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "date_expires BETWEEN "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v18, 0x0

    const-string v5, "files"

    move-object v3, v14

    move v4, v0

    move-object v0, v12

    move-object/from16 v12, v18

    move v0, v13

    move-object/from16 v13, p1

    invoke-virtual/range {v3 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3

    :goto_3
    :try_start_4
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v5}, delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleted "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " expired items on "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    invoke-static {v2, v3}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v2, v2, v16

    iget-object v4, v1, mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v4}, Landroid/os/storage/StorageManager;->getVolumeRecords()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/VolumeRecord;

    iget-object v7, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    iget-object v7, v1, mStorageManager:Landroid/os/storage/StorageManager;

    iget-object v8, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    iget-wide v7, v6, Landroid/os/storage/VolumeRecord;->lastSeenMillis:J

    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_7

    cmp-long v7, v7, v2

    if-gez v7, :cond_7

    new-array v7, v5, [Ljava/lang/String;

    invoke-virtual {v6}, Landroid/os/storage/VolumeRecord;->getNormalizedFsUuid()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v0

    const-string v8, "files"

    const-string v9, "volume_name=?"

    invoke-virtual {v14, v8, v9, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Forgot "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " stale items from "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Landroid/os/storage/VolumeRecord;->fsUuid:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v15, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    return-void

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

    if-eqz v3, :cond_b

    invoke-static {v1, v3}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_b
    throw v2

    :catchall_2
    move-exception v0

    move-object v1, v0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    if-eqz v3, :cond_c

    invoke-static {v1, v3}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_c
    throw v2
.end method

.method public onLocaleChanged()V
    .locals 0

    invoke-direct {p0}, localizeTitles()V

    return-void
.end method

.method public onPackageOrphaned(Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, mExternalDatabase:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "owner_package_name"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "files"

    const-string v4, "owner_package_name=?"

    invoke-virtual {v0, v3, v1, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orphaned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " items belonging to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MediaProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, openFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, openFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, openTypedAssetFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, openTypedAssetFileCommon(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "query"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, queryInternal(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    invoke-static {p3, p4, p5}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method queryForDataFile(Landroid/net/Uri;Landroid/os/CancellationSignal;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, queryForDataFile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method queryForDataFile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-static {p2, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p1

    :cond_1
    :try_start_1
    new-instance p2, Ljava/io/FileNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Missing path for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_2

    invoke-static {p1, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_2
    throw p2
.end method

.method queryForMediaUri(Ljava/io/File;Landroid/os/CancellationSignal;)Landroid/net/Uri;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-static {p1}, Landroid/provider/MediaStore;->getVolumeName(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MediaStore$Files;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    const/4 v7, 0x0

    aput-object p1, v5, v7

    const-string v4, "_data=?"

    move-object v1, p0

    move-object v2, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    :try_start_0
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p1

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p2, 0x0

    invoke-static {p2, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz p0, :cond_1

    invoke-static {p1, p0}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_1
    throw p2
.end method

.method queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p3, p4, v0}, Landroid/content/ContentResolver;->createSqlQueryBundle(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3, p5}, query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    const/4 p3, 0x1

    if-lt p2, p3, :cond_2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p2

    if-gt p2, p3, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p0

    :cond_0
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to read row from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Multiple items at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No item at "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Missing cursor for "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public restoreLocalCallingIdentity(Lcom/android/providers/media/LocalCallingIdentity;)V
    .locals 0

    iget-object p0, p0, mCallingIdentity:Ljava/lang/ThreadLocal;

    invoke-virtual {p0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 20

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, isCallingPackageAllowedHidden()Z

    move-result v1

    invoke-static {v0, v1}, matchUri(Landroid/net/Uri;Z)I

    move-result v1

    const-string v2, "canonical"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "document_id"

    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    const/4 v0, 0x2

    const-string v12, ": "

    const-string v13, "Failed to resolve "

    const-string v14, "_id"

    const-string v15, "; falling back to search: "

    const-string v6, "Trouble resolving "

    const/4 v5, 0x0

    const-string v4, "MediaProvider"

    const/4 v3, 0x0

    if-eq v1, v0, :cond_1

    const/16 v0, 0x65

    if-eq v1, v0, :cond_2

    const/16 v0, 0xc9

    if-eq v1, v0, :cond_1

    return-object v10

    :cond_1
    move-object v11, v3

    move-object/from16 v16, v9

    move-object v9, v6

    move v6, v5

    move-object v5, v4

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object v11, v3

    move-object v3, v0

    move-object/from16 v18, v4

    move-object v4, v9

    move v9, v5

    move-object/from16 v5, v16

    move-object v9, v6

    move-object/from16 v6, v17

    :try_start_0
    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {v7, v1}, getDefaultTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_3
    return-object v10

    :cond_4
    if-eqz v1, :cond_5

    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_5
    move-object/from16 v9, v18

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_6

    :try_start_4
    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_6
    throw v3
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v18

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {v10}, Landroid/content/ContentUris;->removeId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :try_start_5
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "title=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v5, v1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    const/4 v2, 0x0

    :try_start_6
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v1, :cond_7

    :try_start_7
    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_7
    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_8

    :try_start_9
    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_8
    throw v3
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v19, v5

    move-object v5, v0

    move-object/from16 v6, v17

    :try_start_a
    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2

    :try_start_b
    invoke-direct {v7, v1}, getDefaultTitleFromCursor(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    if-eqz v0, :cond_a

    if-eqz v1, :cond_9

    :try_start_c
    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_9
    return-object v10

    :cond_a
    if-eqz v1, :cond_b

    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_c
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2

    :cond_b
    move-object/from16 v8, v19

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v2, v0

    :try_start_d
    throw v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_c

    :try_start_e
    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_c
    throw v3
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v8, v19

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    invoke-static {v10}, Landroid/content/ContentUris;->removeId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    :try_start_f
    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "document_id=?"

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v16, v5, v9

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, queryForSingleItem(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_f
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_3

    :try_start_10
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    if-eqz v1, :cond_d

    :try_start_11
    invoke-static {v11, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_3

    :cond_d
    return-object v0

    :catchall_6
    move-exception v0

    move-object v2, v0

    :try_start_12
    throw v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :catchall_7
    move-exception v0

    move-object v3, v0

    if-eqz v1, :cond_e

    :try_start_13
    invoke-static {v2, v1}, $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    :cond_e
    throw v3
    :try_end_13
    .catch Ljava/io/FileNotFoundException; {:try_start_13 .. :try_end_13} :catch_3

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v11
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    const-wide/32 v0, 0x100000

    const-string v2, "update"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    throw p0
.end method
