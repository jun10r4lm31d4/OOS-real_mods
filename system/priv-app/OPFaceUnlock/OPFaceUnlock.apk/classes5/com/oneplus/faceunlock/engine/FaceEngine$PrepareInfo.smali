.class public final Lcom/oneplus/faceunlock/engine/FaceEngine$PrepareInfo;
.super Ljava/lang/Object;
.source "FaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrepareInfo"
.end annotation


# instance fields
.field public final checkOcclusion:Z

.field public final frameAngle:I

.field public final frameHeight:I

.field public final frameValidAreaRatioX:F

.field public final frameValidAreaRatioY:F

.field public final frameWidth:I

.field public final isLiveness:Z

.field public final isStrictMode:Z

.field public final useFaceCompare:Z


# direct methods
.method public constructor <init>(IIIFFZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, frameWidth:I

    iput p2, p0, frameHeight:I

    iput p3, p0, frameAngle:I

    iput p4, p0, frameValidAreaRatioX:F

    iput p5, p0, frameValidAreaRatioY:F

    iput-boolean p6, p0, isLiveness:Z

    iput-boolean p7, p0, isStrictMode:Z

    iput-boolean p8, p0, checkOcclusion:Z

    iput-boolean p9, p0, useFaceCompare:Z

    return-void
.end method
