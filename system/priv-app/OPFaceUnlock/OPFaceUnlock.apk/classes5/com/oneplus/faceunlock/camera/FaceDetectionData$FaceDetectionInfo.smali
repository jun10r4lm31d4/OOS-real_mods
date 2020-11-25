.class public Lcom/oneplus/faceunlock/camera/FaceDetectionData$FaceDetectionInfo;
.super Ljava/lang/Object;
.source "FaceDetectionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/camera/FaceDetectionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceDetectionInfo"
.end annotation


# instance fields
.field public final cameraRect:Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

.field public final faceId:I

.field public final faceKeyPoints:[F

.field public final gender:I

.field public final race:I

.field public final score:I


# direct methods
.method public constructor <init>(IILcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;[FII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, faceId:I

    iput p2, p0, score:I

    iput-object p3, p0, cameraRect:Lcom/oneplus/faceunlock/camera/FaceDetectionData$CameraRect;

    iput-object p4, p0, faceKeyPoints:[F

    iput p5, p0, gender:I

    iput p6, p0, race:I

    return-void
.end method
