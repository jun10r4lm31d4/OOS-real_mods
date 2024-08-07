.class Lcom/android/server/IpSecService$ResourceTracker;
.super Ljava/lang/Object;
.source "IpSecService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResourceTracker"
.end annotation


# instance fields
.field mCurrent:I

.field private final mMax:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, mMax:I

    const/4 v0, 0x0

    iput v0, p0, mCurrent:I

    return-void
.end method


# virtual methods
.method give()V
    .locals 2

    iget v0, p0, mCurrent:I

    if-gtz v0, :cond_0

    const-string v0, "IpSecService"

    const-string v1, "We\'ve released this resource too many times"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, mCurrent:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mCurrent:I

    return-void
.end method

.method isAvailable()Z
    .locals 2

    iget v0, p0, mCurrent:I

    iget v1, p0, mMax:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method take()V
    .locals 2

    invoke-virtual {p0}, isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "IpSecService"

    const-string v1, "Too many resources allocated!"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, mCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mCurrent:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{mCurrent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mCurrent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
