.class Lcom/android/server/pm/dex/DexManager$DexSearchResult;
.super Ljava/lang/Object;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/dex/DexManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DexSearchResult"
.end annotation


# instance fields
.field private mOutcome:I

.field private mOwningPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/pm/dex/DexManager;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/dex/DexManager;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/pm/dex/DexManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mOwningPackageName:Ljava/lang/String;

    iput p3, p0, mOutcome:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)I
    .locals 1

    iget v0, p0, mOutcome:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/pm/dex/DexManager$DexSearchResult;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, mOwningPackageName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, mOwningPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mOutcome:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
