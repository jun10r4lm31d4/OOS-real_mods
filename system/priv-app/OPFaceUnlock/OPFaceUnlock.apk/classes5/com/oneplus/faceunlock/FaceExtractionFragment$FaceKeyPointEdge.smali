.class final Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPointEdge;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FaceKeyPointEdge"
.end annotation


# instance fields
.field public animationStage:I

.field public final end:Landroid/graphics/PointF;

.field public final endIndex:I

.field public final endPoints:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Landroid/graphics/PointF;",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public isVisible:Z

.field public final start:Landroid/graphics/PointF;

.field public final startIndex:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, end:Landroid/graphics/PointF;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, start:Landroid/graphics/PointF;

    new-instance v0, Landroid/util/Pair;

    iget-object v1, p0, start:Landroid/graphics/PointF;

    iget-object v2, p0, end:Landroid/graphics/PointF;

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, endPoints:Landroid/util/Pair;

    iput p1, p0, startIndex:I

    iput p2, p0, endIndex:I

    return-void
.end method
