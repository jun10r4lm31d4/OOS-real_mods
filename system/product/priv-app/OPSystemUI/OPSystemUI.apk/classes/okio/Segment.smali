.class final Lokio/Segment;
.super Ljava/lang/Object;
.source "Segment.java"


# instance fields
.field final data:[B

.field limit:I

.field next:Lokio/Segment;

.field owner:Z

.field pos:I

.field prev:Lokio/Segment;

.field shared:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, data:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, owner:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, shared:Z

    return-void
.end method

.method constructor <init>([BIIZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, data:[B

    iput p2, p0, pos:I

    iput p3, p0, limit:I

    iput-boolean p4, p0, shared:Z

    iput-boolean p5, p0, owner:Z

    return-void
.end method


# virtual methods
.method public final compact()V
    .locals 4

    iget-object v0, p0, prev:Lokio/Segment;

    if-eq v0, p0, :cond_3

    iget-boolean v1, v0, owner:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, limit:I

    iget v2, p0, pos:I

    sub-int/2addr v1, v2

    iget v2, v0, limit:I

    rsub-int v2, v2, 0x2000

    iget-boolean v3, v0, shared:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v0, v0, pos:I

    :goto_0
    add-int/2addr v2, v0

    if-le v1, v2, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, prev:Lokio/Segment;

    invoke-virtual {p0, v0, v1}, writeTo(Lokio/Segment;I)V

    invoke-virtual {p0}, pop()Lokio/Segment;

    invoke-static {p0}, Lokio/SegmentPool;->recycle(Lokio/Segment;)V

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final pop()Lokio/Segment;
    .locals 4

    iget-object v0, p0, next:Lokio/Segment;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, prev:Lokio/Segment;

    iget-object v3, p0, next:Lokio/Segment;

    iput-object v3, v2, next:Lokio/Segment;

    iget-object v3, p0, next:Lokio/Segment;

    iput-object v2, v3, prev:Lokio/Segment;

    iput-object v1, p0, next:Lokio/Segment;

    iput-object v1, p0, prev:Lokio/Segment;

    return-object v0
.end method

.method public final push(Lokio/Segment;)Lokio/Segment;
    .locals 1

    iput-object p0, p1, prev:Lokio/Segment;

    iget-object v0, p0, next:Lokio/Segment;

    iput-object v0, p1, next:Lokio/Segment;

    iget-object v0, p0, next:Lokio/Segment;

    iput-object p1, v0, prev:Lokio/Segment;

    iput-object p1, p0, next:Lokio/Segment;

    return-object p1
.end method

.method final sharedCopy()Lokio/Segment;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, shared:Z

    new-instance v0, Lokio/Segment;

    iget-object v2, p0, data:[B

    iget v3, p0, pos:I

    iget v4, p0, limit:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, <init>([BIIZZ)V

    return-object v0
.end method

.method public final split(I)Lokio/Segment;
    .locals 5

    if-lez p1, :cond_1

    iget v0, p0, limit:I

    iget v1, p0, pos:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    const/16 v0, 0x400

    if-lt p1, v0, :cond_0

    invoke-virtual {p0}, sharedCopy()Lokio/Segment;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lokio/SegmentPool;->take()Lokio/Segment;

    move-result-object v0

    iget-object v1, p0, data:[B

    iget v2, p0, pos:I

    iget-object v3, v0, data:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v1, v0, pos:I

    add-int/2addr v1, p1

    iput v1, v0, limit:I

    iget v1, p0, pos:I

    add-int/2addr v1, p1

    iput v1, p0, pos:I

    iget-object p0, p0, prev:Lokio/Segment;

    invoke-virtual {p0, v0}, push(Lokio/Segment;)Lokio/Segment;

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public final writeTo(Lokio/Segment;I)V
    .locals 4

    iget-boolean v0, p1, owner:Z

    if-eqz v0, :cond_3

    iget v0, p1, limit:I

    add-int v1, v0, p2

    const/16 v2, 0x2000

    if-le v1, v2, :cond_2

    iget-boolean v1, p1, shared:Z

    if-nez v1, :cond_1

    add-int v1, v0, p2

    iget v3, p1, pos:I

    sub-int/2addr v1, v3

    if-gt v1, v2, :cond_0

    iget-object v1, p1, data:[B

    sub-int/2addr v0, v3

    const/4 v2, 0x0

    invoke-static {v1, v3, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, limit:I

    iget v1, p1, pos:I

    sub-int/2addr v0, v1

    iput v0, p1, limit:I

    iput v2, p1, pos:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget-object v0, p0, data:[B

    iget v1, p0, pos:I

    iget-object v2, p1, data:[B

    iget v3, p1, limit:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, limit:I

    add-int/2addr v0, p2

    iput v0, p1, limit:I

    iget p1, p0, pos:I

    add-int/2addr p1, p2

    iput p1, p0, pos:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method
