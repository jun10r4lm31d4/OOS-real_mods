.class Lcom/android/server/am/OpForceDarkController$zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OpForceDarkController$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/OpForceDarkController$zta;

.field vB:Lcom/android/server/am/OpForceDarkController$you;

.field wB:I

.field xB:Z


# direct methods
.method private constructor <init>(Lcom/android/server/am/OpForceDarkController$zta;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/am/OpForceDarkController$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, wB:I

    const/4 p1, 0x0

    iput-boolean p1, p0, xB:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OpForceDarkController$zta;Lcom/android/server/am/w;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/OpForceDarkController$zta;)V

    return-void
.end method
