.class final Landroid/support/v4/util/MapCollections$ArrayIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ArrayIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field mCanRemove:Z

.field mIndex:I

.field final mOffset:I

.field mSize:I

.field final synthetic this$0:Landroid/support/v4/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/support/v4/util/MapCollections;I)V
    .locals 1

    iput-object p1, p0, this$0:Landroid/support/v4/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mCanRemove:Z

    iput p2, p0, mOffset:I

    invoke-virtual {p1}, Landroid/support/v4/util/MapCollections;->colGetSize()I

    move-result p1

    iput p1, p0, mSize:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget v0, p0, mIndex:I

    iget p0, p0, mSize:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-virtual {p0}, hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Landroid/support/v4/util/MapCollections;

    iget v1, p0, mIndex:I

    iget v2, p0, mOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, mIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, mIndex:I

    iput-boolean v2, p0, mCanRemove:Z

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public remove()V
    .locals 1

    iget-boolean v0, p0, mCanRemove:Z

    if-eqz v0, :cond_0

    iget v0, p0, mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mIndex:I

    iget v0, p0, mSize:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mSize:I

    const/4 v0, 0x0

    iput-boolean v0, p0, mCanRemove:Z

    iget-object v0, p0, this$0:Landroid/support/v4/util/MapCollections;

    iget p0, p0, mIndex:I

    invoke-virtual {v0, p0}, Landroid/support/v4/util/MapCollections;->colRemoveAt(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method
