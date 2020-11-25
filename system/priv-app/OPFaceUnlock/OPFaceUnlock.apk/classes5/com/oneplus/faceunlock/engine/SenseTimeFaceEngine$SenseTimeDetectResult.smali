.class Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine$SenseTimeDetectResult;
.super Ljava/lang/Object;
.source "SenseTimeFaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SenseTimeDetectResult"
.end annotation


# instance fields
.field faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

.field faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

.field height:I

.field image:[B

.field quality:F

.field resultCode:I

.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

.field width:I


# direct methods
.method public constructor <init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, resultCode:I

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;[BIILcom/sensetime/faceapi/model/FaceInfo;FLcom/sensetime/faceapi/model/FaceOrientation;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/SenseTimeFaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, image:[B

    iput p3, p0, height:I

    iput p4, p0, width:I

    iput-object p5, p0, faceInfo:Lcom/sensetime/faceapi/model/FaceInfo;

    iput p6, p0, quality:F

    iput-object p7, p0, faceOrientation:Lcom/sensetime/faceapi/model/FaceOrientation;

    iput p8, p0, resultCode:I

    return-void
.end method
