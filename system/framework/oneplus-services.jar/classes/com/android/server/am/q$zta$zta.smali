.class Lcom/android/server/am/q$zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/q$zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/q$zta;

.field vB:Lcom/android/server/am/q$you;

.field wB:I

.field xB:Z


# direct methods
.method private constructor <init>(Lcom/android/server/am/q$zta;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/am/q$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, wB:I

    const/4 p1, 0x0

    iput-boolean p1, p0, xB:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/q$zta;Lcom/android/server/am/OpAntiBurnController$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/am/q$zta;)V

    return-void
.end method
