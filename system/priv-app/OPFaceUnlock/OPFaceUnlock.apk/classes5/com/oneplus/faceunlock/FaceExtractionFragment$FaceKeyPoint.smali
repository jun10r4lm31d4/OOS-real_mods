.class final Lcom/oneplus/faceunlock/FaceExtractionFragment$FaceKeyPoint;
.super Ljava/lang/Object;
.source "FaceExtractionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/FaceExtractionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FaceKeyPoint"
.end annotation


# instance fields
.field public animationStage:I

.field public isVisible:Z

.field public final position:Landroid/graphics/PointF;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, position:Landroid/graphics/PointF;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/faceunlock/FaceExtractionFragment$1;)V
    .locals 0

    invoke-direct {p0}, <init>()V

    return-void
.end method
