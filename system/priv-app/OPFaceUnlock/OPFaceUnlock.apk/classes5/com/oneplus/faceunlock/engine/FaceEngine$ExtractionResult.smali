.class public Lcom/oneplus/faceunlock/engine/FaceEngine$ExtractionResult;
.super Ljava/lang/Object;
.source "FaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExtractionResult"
.end annotation


# instance fields
.field public final engineResultCode:I

.field public final feature:[B

.field public final height:I

.field public final image:[B

.field public final resultCode:I

.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

.field public final width:I


# direct methods
.method public constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;[BII[BII)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, image:[B

    iput p3, p0, width:I

    iput p4, p0, height:I

    iput-object p5, p0, feature:[B

    iput p6, p0, engineResultCode:I

    iput p7, p0, resultCode:I

    return-void
.end method
