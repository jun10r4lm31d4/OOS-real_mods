.class public Lcom/android/providers/media/PhotosProtectorUtils;
.super Ljava/lang/Object;
.source "PhotosProtectorUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/PhotosProtectorUtils$RecycleUtils;,
        Lcom/android/providers/media/PhotosProtectorUtils$ServiceUtils;,
        Lcom/android/providers/media/PhotosProtectorUtils$ConfigUtils;,
        Lcom/android/providers/media/PhotosProtectorUtils$MetaUtils;
    }
.end annotation


# static fields
.field private static final CMD_FETCH_CONFIG:I = 0x175a

.field private static final DBG:Z

.field private static final DBG_LOGV:Z

.field static final MEDIA_PROVIDER_PKG_NAME:Ljava/lang/String; = "com.android.providers.media"

.field static final OP_CAMERA_PKG_NAME:Ljava/lang/String; = "com.oneplus.camera"

.field static final OP_FACTORYMODE_PKG_NAME:Ljava/lang/String; = "com.oneplus.factorymode"

.field static final OP_GALLERY_PKG_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final PROTECTED_PATH:Ljava/lang/String; = "/dcim/camera/"

.field private static final RECYCLE_BIN_CONFIG_NAME:Ljava/lang/String; = "FileSkipRecycle"

.field private static final RECYCLE_BIN_PATH:Ljava/lang/String;

.field private static final RECYCLE_PATH_GALLERY:Ljava/lang/String; = "/android/data/com.oneplus.gallery/recyclebin/"

.field private static final TAG:Ljava/lang/String; = "PhotosProtectorUtils"

.field private static sConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private static sContext:Landroid/content/Context;

.field private static sFileEncryptLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sIsFetched:Z

.field private static sWhiteCallerLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sWhitePackageLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->LOCAL_LOGV:Z

    sput-boolean v0, DBG_LOGV:Z

    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->DBG:Z

    sput-boolean v0, DBG:Z

    invoke-static {}, Lcom/android/providers/media/PhotosProtectorUtils$RecycleUtils;->getRecycleBinPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, RECYCLE_BIN_PATH:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, sContext:Landroid/content/Context;

    sput-object v0, sHandler:Landroid/os/Handler;

    sput-object v0, sHandlerThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    sput-boolean v1, sIsFetched:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, sFileEncryptLists:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, sWhiteCallerLists:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, sWhitePackageLists:Ljava/util/ArrayList;

    sput-object v0, sConfigObserver:Lcom/oneplus/config/ConfigObserver;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ConfigThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/providers/media/PhotosProtectorUtils$1;

    sget-object v1, sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/providers/media/PhotosProtectorUtils$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, DBG:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, DBG_LOGV:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, sWhitePackageLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, sFileEncryptLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, sWhiteCallerLists:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$600()Landroid/content/Context;
    .locals 1

    sget-object v0, sContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$602(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    sput-object p0, sContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, sIsFetched:Z

    return v0
.end method

.method static synthetic access$702(Z)Z
    .locals 0

    sput-boolean p0, sIsFetched:Z

    return p0
.end method

.method static synthetic access$800()Landroid/os/Handler;
    .locals 1

    sget-object v0, sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900()Lcom/oneplus/config/ConfigObserver;
    .locals 1

    sget-object v0, sConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object v0
.end method

.method static synthetic access$902(Lcom/oneplus/config/ConfigObserver;)Lcom/oneplus/config/ConfigObserver;
    .locals 0

    sput-object p0, sConfigObserver:Lcom/oneplus/config/ConfigObserver;

    return-object p0
.end method

.method static initPhotoRecycleBin(Landroid/content/Context;)V
    .locals 2

    sput-object p0, sContext:Landroid/content/Context;

    sget-object v0, RECYCLE_BIN_PATH:Ljava/lang/String;

    if-eqz v0, :cond_4

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/providers/media/PhotosProtectorUtils$RecycleUtils;->isGalleryRecycleBinServiceExisted(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    goto :goto_0

    :cond_0
    invoke-static {v1}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    :cond_1
    :goto_0
    sget-boolean v0, DBG_LOGV:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initPhotoRecycleBin: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/providers/media/PhotosProtectorUtils$RecycleUtils;->isPhotosProtectorReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_1

    :cond_2
    const-string v1, "not "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ready"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotosProtectorUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {p0}, Lcom/android/providers/media/PhotosProtectorUtils$ConfigUtils;->initConfig(Landroid/content/Context;)V

    :cond_4
    return-void
.end method
