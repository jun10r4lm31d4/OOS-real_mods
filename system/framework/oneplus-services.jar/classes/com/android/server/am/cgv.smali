.class Lcom/android/server/am/cgv;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/OnePlusBGController$wtn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/OnePlusBGController$wtn;

    check-cast p2, Lcom/android/server/am/OnePlusBGController$wtn;

    invoke-virtual {p0, p1, p2}, zta(Lcom/android/server/am/OnePlusBGController$wtn;Lcom/android/server/am/OnePlusBGController$wtn;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$wtn;Lcom/android/server/am/OnePlusBGController$wtn;)I
    .locals 2

    invoke-virtual {p2}, Lcom/android/server/am/OnePlusBGController$wtn;->Fb()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$wtn;->Fb()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method