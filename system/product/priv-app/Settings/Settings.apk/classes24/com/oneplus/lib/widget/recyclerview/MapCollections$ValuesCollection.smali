.class final Lcom/oneplus/lib/widget/recyclerview/MapCollections$ValuesCollection;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colClear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;

    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections$ArrayIterator;-><init>(Lcom/oneplus/lib/widget/recyclerview/MapCollections;I)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colIndexOfValue(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colRemoveAt(I)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colRemoveAt(I)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v5, v2}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colRemoveAt(I)V

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v2, v4

    goto :goto_0

    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->colGetSize()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->toArrayHelper(I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/MapCollections;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/lib/widget/recyclerview/MapCollections;->toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
