.class public Lcom/android/server/am/ProcessMemInfo;
.super Ljava/lang/Object;
.source "ProcessMemInfo.java"


# instance fields
.field final adjReason:Ljava/lang/String;

.field final adjType:Ljava/lang/String;

.field memtrack:J

.field final name:Ljava/lang/String;

.field final oomAdj:I

.field final pid:I

.field final procState:I

.field pss:J

.field swapPss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, name:Ljava/lang/String;

    iput p2, p0, pid:I

    iput p3, p0, oomAdj:I

    iput p4, p0, procState:I

    iput-object p5, p0, adjType:Ljava/lang/String;

    iput-object p6, p0, adjReason:Ljava/lang/String;

    return-void
.end method
