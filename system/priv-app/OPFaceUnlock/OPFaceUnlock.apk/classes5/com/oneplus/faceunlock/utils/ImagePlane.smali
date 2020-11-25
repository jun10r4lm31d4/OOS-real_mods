.class public Lcom/oneplus/faceunlock/utils/ImagePlane;
.super Ljava/lang/Object;
.source "ImagePlane.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private final m_Data:[B

.field private final m_PixelStride:I

.field private final m_RowStride:I


# direct methods
.method public constructor <init>(Landroid/media/Image$Plane;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, m_Data:[B

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v1

    iput v1, p0, m_PixelStride:I

    invoke-virtual {p1}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v1

    iput v1, p0, m_RowStride:I

    iget-object v1, p0, m_Data:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, m_Data:[B

    iput p2, p0, m_PixelStride:I

    iput p3, p0, m_RowStride:I

    return-void
.end method


# virtual methods
.method public clone()Lcom/oneplus/faceunlock/utils/ImagePlane;
    .locals 4

    new-instance v1, Lcom/oneplus/faceunlock/utils/ImagePlane;

    iget-object v0, p0, m_Data:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget v2, p0, m_PixelStride:I

    iget v3, p0, m_RowStride:I

    invoke-direct {v1, v0, v2, v3}, <init>([BII)V

    return-object v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, clone()Lcom/oneplus/faceunlock/utils/ImagePlane;

    move-result-object v0

    return-object v0
.end method

.method public final getData()[B
    .locals 1

    iget-object v0, p0, m_Data:[B

    return-object v0
.end method

.method public final getPixelStride()I
    .locals 1

    iget v0, p0, m_PixelStride:I

    return v0
.end method

.method public final getRowStride()I
    .locals 1

    iget v0, p0, m_RowStride:I

    return v0
.end method
