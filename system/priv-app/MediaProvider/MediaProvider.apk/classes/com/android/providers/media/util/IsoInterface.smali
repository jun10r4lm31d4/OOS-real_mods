.class public Lcom/android/providers/media/util/IsoInterface;
.super Ljava/lang/Object;
.source "IsoInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/util/IsoInterface$Box;
    }
.end annotation


# static fields
.field public static final BOX_FTYP:I = 0x66747970

.field public static final BOX_GPS:I = 0x67707320

.field public static final BOX_GPS0:I = 0x67707330

.field public static final BOX_LOCI:I = 0x6c6f6369

.field public static final BOX_META:I = 0x6d657461

.field public static final BOX_UUID:I = 0x75756964

.field public static final BOX_XMP:I = 0x584d505f

.field public static final BOX_XYZ:I = -0x56878686

.field private static final LOGV:Z

.field private static final TAG:Ljava/lang/String; = "IsoInterface"


# instance fields
.field private mFlattened:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/providers/media/util/IsoInterface$Box;",
            ">;"
        }
    .end annotation
.end field

.field private mRoots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/providers/media/util/IsoInterface$Box;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "IsoInterface"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, LOGV:Z

    return-void
.end method

.method private constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mRoots:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFlattened:Ljava/util/List;

    const-wide/16 v0, 0x4

    :try_start_0
    sget v2, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, v0, v1, v2}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    invoke-static {p1}, readInt(Ljava/io/FileDescriptor;)I

    move-result v0

    const v1, 0x66747970

    if-eq v0, v1, :cond_1

    sget-boolean p0, LOGV:Z

    if-eqz p0, :cond_0

    const-string p0, "IsoInterface"

    const-string p1, "Missing \'ftyp\' header"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget v0, Landroid/system/OsConstants;->SEEK_END:I

    const-wide/16 v1, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v3

    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    :goto_0
    const-string v0, ""

    invoke-static {p1, v3, v4, v0}, parseNextBox(Ljava/io/FileDescriptor;JLjava/lang/String;)Lcom/android/providers/media/util/IsoInterface$Box;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, mRoots:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/util/LinkedList;

    iget-object v0, p0, mRoots:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/util/IsoInterface$Box;

    iget-object v1, p0, mFlattened:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/android/providers/media/util/IsoInterface$Box;->children:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_4
    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public static fromFile(Ljava/io/File;)Lcom/android/providers/media/util/IsoInterface;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-static {p0}, fromFileDescriptor(Ljava/io/FileDescriptor;)Lcom/android/providers/media/util/IsoInterface;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
.end method

.method public static fromFileDescriptor(Ljava/io/FileDescriptor;)Lcom/android/providers/media/util/IsoInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/providers/media/util/IsoInterface;

    invoke-direct {v0, p0}, <init>(Ljava/io/FileDescriptor;)V

    return-object v0
.end method

.method private static isBoxParent(I)Z
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64696e66 -> :sswitch_0
        0x65647473 -> :sswitch_0
        0x68696e66 -> :sswitch_0
        0x686e7469 -> :sswitch_0
        0x696c7374 -> :sswitch_0
        0x6970726f -> :sswitch_0
        0x6a703268 -> :sswitch_0
        0x6d646961 -> :sswitch_0
        0x6d657461 -> :sswitch_0
        0x6d667261 -> :sswitch_0
        0x6d696e66 -> :sswitch_0
        0x6d6f6f66 -> :sswitch_0
        0x6d6f6f76 -> :sswitch_0
        0x73696e66 -> :sswitch_0
        0x7374626c -> :sswitch_0
        0x74726166 -> :sswitch_0
        0x7472616b -> :sswitch_0
        0x74726566 -> :sswitch_0
        0x75647461 -> :sswitch_0
    .end sparse-switch
.end method

.method private static parseNextBox(Ljava/io/FileDescriptor;JLjava/lang/String;)Lcom/android/providers/media/util/IsoInterface$Box;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->SEEK_CUR:I

    const-wide/16 v1, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v3

    cmp-long v0, v3, p1

    const/4 v5, 0x0

    if-nez v0, :cond_0

    return-object v5

    :cond_0
    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toUnsignedLong(I)J

    move-result-wide v6

    cmp-long v0, v6, v1

    const-string v1, "IsoInterface"

    if-lez v0, :cond_8

    add-long v8, v3, v6

    cmp-long v0, v8, p1

    if-lez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    move-result p1

    const p2, 0x6d657461

    if-ne p1, p2, :cond_2

    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    :cond_2
    new-instance p2, Lcom/android/providers/media/util/IsoInterface$Box;

    const/4 v0, 0x2

    new-array v0, v0, [J

    const/4 v2, 0x0

    aput-wide v3, v0, v2

    const/4 v5, 0x1

    aput-wide v6, v0, v5

    invoke-direct {p2, p1, v0}, Lcom/android/providers/media/util/IsoInterface$Box;-><init>(I[J)V

    sget-boolean v0, LOGV:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Found box "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, typeToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " length "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const v0, 0x75756964

    const-wide/16 v3, 0x8

    if-ne p1, v0, :cond_5

    invoke-static {p0}, readUuid(Ljava/io/FileDescriptor;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p2, Lcom/android/providers/media/util/IsoInterface$Box;->uuid:Ljava/util/UUID;

    sget-boolean v0, LOGV:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  UUID "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p2, Lcom/android/providers/media/util/IsoInterface$Box;->uuid:Ljava/util/UUID;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sub-long v0, v6, v3

    const-wide/16 v10, 0x10

    sub-long/2addr v0, v10

    long-to-int v0, v0

    new-array v0, v0, [B

    iput-object v0, p2, Lcom/android/providers/media/util/IsoInterface$Box;->data:[B

    iget-object v0, p2, Lcom/android/providers/media/util/IsoInterface$Box;->data:[B

    array-length v1, v0

    invoke-static {p0, v0, v2, v1}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    :cond_5
    const v0, 0x584d505f

    if-ne p1, v0, :cond_6

    sub-long/2addr v6, v3

    long-to-int v0, v6

    new-array v0, v0, [B

    iput-object v0, p2, Lcom/android/providers/media/util/IsoInterface$Box;->data:[B

    iget-object v0, p2, Lcom/android/providers/media/util/IsoInterface$Box;->data:[B

    array-length v1, v0

    invoke-static {p0, v0, v2, v1}, Llibcore/io/IoBridge;->read(Ljava/io/FileDescriptor;[BII)I

    :cond_6
    invoke-static {p1}, isBoxParent(I)Z

    move-result p1

    if-eqz p1, :cond_7

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p2, Lcom/android/providers/media/util/IsoInterface$Box;->children:Ljava/util/List;

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v8, v9, p1}, parseNextBox(Ljava/io/FileDescriptor;JLjava/lang/String;)Lcom/android/providers/media/util/IsoInterface$Box;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object v0, p2, Lcom/android/providers/media/util/IsoInterface$Box;->children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    sget p1, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p0, v8, v9, p1}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    return-object p2

    :cond_8
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid box at "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " of length "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " reached beyond end of parent "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private static readInt(Ljava/io/FileDescriptor;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result p0

    if-ne p0, v0, :cond_0

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-static {v1, v2, p0}, Llibcore/io/Memory;->peekInt([BILjava/nio/ByteOrder;)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method private static readUuid(Ljava/io/FileDescriptor;)Ljava/util/UUID;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    move-result v3

    int-to-long v3, v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v0, v3

    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    move-result v3

    int-to-long v3, v3

    shl-long v2, v3, v2

    invoke-static {p0}, readInt(Ljava/io/FileDescriptor;)I

    move-result p0

    int-to-long v7, p0

    and-long v4, v7, v5

    or-long/2addr v2, v4

    new-instance p0, Ljava/util/UUID;

    invoke-direct {p0, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object p0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Llibcore/io/Memory;->pokeInt([BIILjava/nio/ByteOrder;)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method


# virtual methods
.method public getBoxBytes(I)[B
    .locals 2

    iget-object p0, p0, mFlattened:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/util/IsoInterface$Box;

    iget v1, v0, Lcom/android/providers/media/util/IsoInterface$Box;->type:I

    if-ne v1, p1, :cond_0

    iget-object p0, v0, Lcom/android/providers/media/util/IsoInterface$Box;->data:[B

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoxBytes(Ljava/util/UUID;)[B
    .locals 3

    iget-object p0, p0, mFlattened:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/media/util/IsoInterface$Box;

    iget v1, v0, Lcom/android/providers/media/util/IsoInterface$Box;->type:I

    const v2, 0x75756964

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/providers/media/util/IsoInterface$Box;->uuid:Ljava/util/UUID;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, v0, Lcom/android/providers/media/util/IsoInterface$Box;->data:[B

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getBoxRanges(I)[J
    .locals 8

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iget-object p0, p0, mFlattened:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/util/IsoInterface$Box;

    iget v2, v1, Lcom/android/providers/media/util/IsoInterface$Box;->type:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Lcom/android/providers/media/util/IsoInterface$Box;->range:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/util/LongArray;->add(J)V

    iget-object v1, v1, Lcom/android/providers/media/util/IsoInterface$Box;->range:[J

    aget-wide v2, v1, v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    return-object p0
.end method

.method public getBoxRanges(Ljava/util/UUID;)[J
    .locals 8

    new-instance v0, Landroid/util/LongArray;

    invoke-direct {v0}, Landroid/util/LongArray;-><init>()V

    iget-object p0, p0, mFlattened:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/providers/media/util/IsoInterface$Box;

    iget v2, v1, Lcom/android/providers/media/util/IsoInterface$Box;->type:I

    const v3, 0x75756964

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lcom/android/providers/media/util/IsoInterface$Box;->uuid:Ljava/util/UUID;

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/providers/media/util/IsoInterface$Box;->range:[J

    const/4 v3, 0x0

    aget-wide v4, v2, v3

    const-wide/16 v6, 0x8

    add-long/2addr v4, v6

    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Landroid/util/LongArray;->add(J)V

    iget-object v1, v1, Lcom/android/providers/media/util/IsoInterface$Box;->range:[J

    aget-wide v2, v1, v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/util/LongArray;->add(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/LongArray;->toArray()[J

    move-result-object p0

    return-object p0
.end method
