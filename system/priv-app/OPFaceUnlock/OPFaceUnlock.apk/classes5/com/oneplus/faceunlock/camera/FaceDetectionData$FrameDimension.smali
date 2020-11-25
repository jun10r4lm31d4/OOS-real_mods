.class public Lcom/oneplus/faceunlock/camera/FaceDetectionData$FrameDimension;
.super Ljava/lang/Object;
.source "FaceDetectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/FaceDetectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FrameDimension"
.end annotation


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, width:I

    iput p2, p0, height:I

    return-void
.end method
