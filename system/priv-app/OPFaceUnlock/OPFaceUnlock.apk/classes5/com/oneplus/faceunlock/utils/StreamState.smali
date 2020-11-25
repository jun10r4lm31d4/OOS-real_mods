.class public Lcom/oneplus/faceunlock/utils/StreamState;
.super Ljava/lang/Object;
.source "StreamState.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private m_IsFileInputStream:Z

.field private m_SavedStreamPosition:J

.field private final m_Stream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, <init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, m_Stream:Ljava/io/InputStream;

    instance-of v0, p1, Ljava/io/FileInputStream;

    iput-boolean v0, p0, m_IsFileInputStream:Z

    iget-boolean v0, p0, m_IsFileInputStream:Z

    if-eqz v0, :cond_1

    check-cast p1, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, m_SavedStreamPosition:J

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-boolean v0, p0, m_IsFileInputStream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, m_Stream:Ljava/io/InputStream;

    check-cast v0, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iget-wide v2, p0, m_SavedStreamPosition:J

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_Stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0
.end method

.method public getSavedStreamPosition()J
    .locals 2

    iget-wide v0, p0, m_SavedStreamPosition:J

    return-wide v0
.end method
