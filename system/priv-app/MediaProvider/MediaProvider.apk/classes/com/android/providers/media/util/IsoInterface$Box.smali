.class Lcom/android/providers/media/util/IsoInterface$Box;
.super Ljava/lang/Object;
.source "IsoInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/util/IsoInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Box"
.end annotation


# instance fields
.field public children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/providers/media/util/IsoInterface$Box;",
            ">;"
        }
    .end annotation
.end field

.field public data:[B

.field public final range:[J

.field public final type:I

.field public uuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(I[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, type:I

    iput-object p2, p0, range:[J

    return-void
.end method
