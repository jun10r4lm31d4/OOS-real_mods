.class public final Lcom/oneplus/faceunlock/engine/FaceEngine$CompareResult;
.super Ljava/lang/Object;
.source "FaceEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/engine/FaceEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CompareResult"
.end annotation


# instance fields
.field public final resultCode:I

.field public final score:I

.field public spentTimeMillis:J

.field public final success:Z

.field final synthetic this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;


# direct methods
.method public constructor <init>(Lcom/oneplus/faceunlock/engine/FaceEngine;IIZ)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/faceunlock/engine/FaceEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, resultCode:I

    iput p3, p0, score:I

    iput-boolean p4, p0, success:Z

    return-void
.end method
