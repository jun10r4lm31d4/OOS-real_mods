.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x200

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, block:[B

    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RandomBlock"

    const-string v2, "IOException thrown while closing Closeable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-static {v0}, fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, close(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, close(Ljava/io/Closeable;)V

    throw v1
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/RandomBlock;

    invoke-direct {v0}, <init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_1

    iget-object v3, v0, block:[B

    sub-int/2addr v2, v1

    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    :cond_1
    return-object v0
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .locals 2

    const-wide/16 v0, 0x200

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method


# virtual methods
.method toFile(Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    if-eqz p2, :cond_0

    const-string/jumbo v2, "rws"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "rw"

    :goto_0
    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    invoke-direct {p0, v0}, toDataOut(Ljava/io/DataOutput;)V

    invoke-static {v0}, truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, close(Ljava/io/Closeable;)V

    nop

    return-void

    :catchall_0
    move-exception v1

    invoke-static {v0}, close(Ljava/io/Closeable;)V

    throw v1
.end method
