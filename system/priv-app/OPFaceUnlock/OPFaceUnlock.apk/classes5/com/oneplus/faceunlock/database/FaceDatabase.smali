.class public Lcom/oneplus/faceunlock/database/FaceDatabase;
.super Ljava/lang/Object;
.source "FaceDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/faceunlock/database/FaceDatabase$UserFaceRelationInfo;,
        Lcom/oneplus/faceunlock/database/FaceDatabase$FaceInfo;,
        Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;
    }
.end annotation


# static fields
.field private static final COLUMN_FACE_ID:Ljava/lang/String; = "face_id"

.field private static final COLUMN_FEATURE_DATA:Ljava/lang/String; = "feature_data"

.field private static final COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final COLUMN_USER_ID:Ljava/lang/String; = "user_id"

.field private static final DB_NAME:Ljava/lang/String; = "face.db"

.field private static final DB_VERSION:I = 0x1

.field private static final SQL_CREATE_TABLE_FACE:Ljava/lang/String; = "CREATE TABLE face (_id INTEGER PRIMARY KEY,feature_data BLUB);"

.field private static final SQL_CREATE_TABLE_USER:Ljava/lang/String; = "CREATE TABLE user (_id INTEGER PRIMARY KEY);"

.field private static final SQL_CREATE_TABLE_USER_FACE:Ljava/lang/String; = "CREATE TABLE user_face (user_id INTEGER,face_id INTEGER);"

.field private static final TABLE_FACE:Ljava/lang/String; = "face"

.field private static final TABLE_FACE_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_USER:Ljava/lang/String; = "user"

.field private static final TABLE_USER_COLUMNS:[Ljava/lang/String;

.field private static final TABLE_USER_FACE:Ljava/lang/String; = "user_face"

.field private static final TABLE_USER_FACE_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

.field private static volatile m_Database:Landroid/database/sqlite/SQLiteDatabase;

.field private static final m_DatabaseLock:Ljava/lang/Object;

.field private static m_FaceInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/faceunlock/database/FaceDatabase$FaceInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static m_UserInfoTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-class v0, Lcom/oneplus/faceunlock/database/FaceDatabase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    sput-object v0, TABLE_USER_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "user_id"

    aput-object v1, v0, v3

    const-string v1, "face_id"

    aput-object v1, v0, v2

    sput-object v0, TABLE_USER_FACE_COLUMNS:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "feature_data"

    aput-object v1, v0, v2

    sput-object v0, TABLE_FACE_COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, m_DatabaseLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-static {p0}, onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p0, p1, p2}, onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    invoke-static {p0, p1, p2}, onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public static deleteFaceFeature(ILcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oneplus/faceunlock/database/FaceDatabase$1;

    invoke-direct {v1, p1}, Lcom/oneplus/faceunlock/database/FaceDatabase$1;-><init>(Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static deleteFaceFrame(ILcom/oneplus/faceunlock/utils/ResultCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    sget-object v0, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/oneplus/faceunlock/database/FaceDatabase$2;

    invoke-direct {v1, p1}, Lcom/oneplus/faceunlock/database/FaceDatabase$2;-><init>(Lcom/oneplus/faceunlock/utils/ResultCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static hasFaceFeature(I)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadFaceFeature(ILcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<[B>;)Z"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/faceunlock/database/FaceDatabase$3;

    invoke-direct {v2, p1, v0}, Lcom/oneplus/faceunlock/database/FaceDatabase$3;-><init>(Lcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static loadFaceFrame(ILcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<[B>;)Z"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/faceunlock/database/FaceDatabase$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/oneplus/faceunlock/database/FaceDatabase$4;-><init>(ILcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static loadFaceFrameSync(I)[B
    .locals 11

    const/4 v6, 0x0

    new-instance v2, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->getCacheDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/tmp_yuv"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    return-object v6

    :cond_0
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v8, 0x0

    :try_start_1
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v9, 0x0

    const/16 v7, 0x1000

    :try_start_2
    new-array v0, v7, [B

    :goto_1
    const/4 v7, 0x0

    const/16 v10, 0x1000

    invoke-virtual {v5, v0, v7, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v7, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_1

    :catch_0
    move-exception v7

    :try_start_3
    throw v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v8

    move-object v9, v7

    :goto_2
    if-eqz v4, :cond_1

    if-eqz v9, :cond_8

    :try_start_4
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_1
    :goto_3
    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v7

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v8

    move-object v9, v7

    :goto_4
    if-eqz v5, :cond_2

    if-eqz v9, :cond_9

    :try_start_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_6

    :cond_2
    :goto_5
    :try_start_8
    throw v8
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    sget-object v7, TAG:Ljava/lang/String;

    const-string v8, "loadFaceFrameSync() - Error to load face frame"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    :try_start_9
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-result-object v7

    if-eqz v4, :cond_4

    if-eqz v6, :cond_6

    :try_start_a
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_4
    :goto_6
    if-eqz v5, :cond_5

    if-eqz v6, :cond_7

    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    :cond_5
    :goto_7
    move-object v6, v7

    goto :goto_0

    :catch_3
    move-exception v10

    :try_start_c
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :catchall_2
    move-exception v7

    move-object v8, v7

    move-object v9, v6

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_6

    :catch_4
    move-exception v9

    :try_start_d
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_7
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_7

    :catch_5
    move-exception v7

    :try_start_e
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_8
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_3

    :catch_6
    move-exception v7

    :try_start_f
    invoke-virtual {v9, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_5

    :catchall_3
    move-exception v7

    move-object v8, v7

    move-object v9, v6

    goto :goto_2
.end method

.method private static onDatabaseCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method private static onDatabaseDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDatabaseDowngrade() - DB downgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static onDatabaseUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDatabaseUpgrade() - Upgrade from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-ge p1, v0, :cond_1

    if-lez p1, :cond_0

    const-string v0, "DROP TABLE IF EXISTS user"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS face"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS user_face"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_0
    const-string v0, "CREATE TABLE user (_id INTEGER PRIMARY KEY);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE face (_id INTEGER PRIMARY KEY,feature_data BLUB);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE user_face (user_id INTEGER,face_id INTEGER);"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static openDatabase()Z
    .locals 10

    const/4 v4, 0x1

    sget-object v5, m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_0

    :goto_0
    return v4

    :cond_0
    sget-object v5, m_DatabaseLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v6, m_Database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v6, :cond_1

    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_1
    :try_start_1
    sget-object v6, TAG:Ljava/lang/String;

    const-string v7, "openDatabase() - Start"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    new-instance v0, Lcom/oneplus/faceunlock/database/FaceDatabase$5;

    invoke-static {}, Lcom/oneplus/faceunlock/FaceUnlockApplication;->current()Lcom/oneplus/faceunlock/FaceUnlockApplication;

    move-result-object v6

    const-string v7, "face.db"

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/oneplus/faceunlock/database/FaceDatabase$5;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    sput-object v6, m_Database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    sget-object v6, TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "openDatabase() - Take "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms to open as writable"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v5

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v4, TAG:Ljava/lang/String;

    const-string v6, "openDatabase() - Fail to open database"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v4, 0x0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static saveFaceFeature(I[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/faceunlock/database/FaceDatabase$6;

    invoke-direct {v2, p1, p2, v0}, Lcom/oneplus/faceunlock/database/FaceDatabase$6;-><init>([BLcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public static saveFaceFrame(I[BLcom/oneplus/faceunlock/utils/ResultCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Lcom/oneplus/faceunlock/utils/ResultCallback",
            "<",
            "Lcom/oneplus/faceunlock/utils/OperationResult;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v1, WORKER_THREAD:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/oneplus/faceunlock/database/FaceDatabase$7;

    invoke-direct {v2, p1, p2, v0}, Lcom/oneplus/faceunlock/database/FaceDatabase$7;-><init>([BLcom/oneplus/faceunlock/utils/ResultCallback;Landroid/os/Handler;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method private static setupFaceInfoTable()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    sget-object v0, m_FaceInfoTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, m_FaceInfoTable:Ljava/util/Map;

    invoke-static {}, openDatabase()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "setupFaceInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "face"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v9, Lcom/oneplus/faceunlock/database/FaceDatabase$FaceInfo;

    invoke-direct {v9, v8}, Lcom/oneplus/faceunlock/database/FaceDatabase$FaceInfo;-><init>(Landroid/database/Cursor;)V

    iget-wide v0, v9, Lcom/oneplus/faceunlock/database/FaceDatabase$FaceInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    sget-object v0, m_FaceInfoTable:Ljava/util/Map;

    iget-wide v2, v9, Lcom/oneplus/faceunlock/database/FaceDatabase$FaceInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0
.end method

.method private static setupUserInfoTable()Z
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    sget-object v0, m_UserInfoTable:Ljava/util/Map;

    if-eqz v0, :cond_0

    move v0, v10

    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, m_UserInfoTable:Ljava/util/Map;

    invoke-static {}, openDatabase()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "setupUserInfoTable() - Fail to open database"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v0, m_Database:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "user"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v9, Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;

    invoke-direct {v9, v8}, Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;-><init>(Landroid/database/Cursor;)V

    iget-wide v0, v9, Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    sget-object v0, m_UserInfoTable:Ljava/util/Map;

    iget-wide v2, v9, Lcom/oneplus/faceunlock/database/FaceDatabase$UserInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    goto :goto_0
.end method
