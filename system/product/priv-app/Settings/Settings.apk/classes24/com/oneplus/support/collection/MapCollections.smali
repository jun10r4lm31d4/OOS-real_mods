.class abstract Lcom/oneplus/support/collection/MapCollections;
.super Ljava/lang/Object;
.source "MapCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/collection/MapCollections$ValuesCollection;,
        Lcom/oneplus/support/collection/MapCollections$KeySet;,
        Lcom/oneplus/support/collection/MapCollections$EntrySet;,
        Lcom/oneplus/support/collection/MapCollections$MapIterator;,
        Lcom/oneplus/support/collection/MapCollections$ArrayIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mEntrySet:Lcom/oneplus/support/collection/MapCollections$EntrySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/MapCollections<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field mKeySet:Lcom/oneplus/support/collection/MapCollections$KeySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/MapCollections<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field mValues:Lcom/oneplus/support/collection/MapCollections$ValuesCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/support/collection/MapCollections<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
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

    invoke-interface {p0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static equalsSetHelper(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :catch_0
    move-exception v0

    return v2

    :catch_1
    move-exception v0

    return v2

    :cond_2
    return v2
.end method

.method public static removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method


# virtual methods
.method protected abstract colClear()V
.end method

.method protected abstract colGetEntry(II)Ljava/lang/Object;
.end method

.method protected abstract colGetMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method protected abstract colGetSize()I
.end method

.method protected abstract colIndexOfKey(Ljava/lang/Object;)I
.end method

.method protected abstract colIndexOfValue(Ljava/lang/Object;)I
.end method

.method protected abstract colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method protected abstract colRemoveAt(I)V
.end method

.method protected abstract colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public getEntrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, mEntrySet:Lcom/oneplus/support/collection/MapCollections$EntrySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/collection/MapCollections$EntrySet;

    invoke-direct {v0, p0}, Lcom/oneplus/support/collection/MapCollections$EntrySet;-><init>(Lcom/oneplus/support/collection/MapCollections;)V

    iput-object v0, p0, mEntrySet:Lcom/oneplus/support/collection/MapCollections$EntrySet;

    :cond_0
    iget-object v0, p0, mEntrySet:Lcom/oneplus/support/collection/MapCollections$EntrySet;

    return-object v0
.end method

.method public getKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    iget-object v0, p0, mKeySet:Lcom/oneplus/support/collection/MapCollections$KeySet;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/collection/MapCollections$KeySet;

    invoke-direct {v0, p0}, Lcom/oneplus/support/collection/MapCollections$KeySet;-><init>(Lcom/oneplus/support/collection/MapCollections;)V

    iput-object v0, p0, mKeySet:Lcom/oneplus/support/collection/MapCollections$KeySet;

    :cond_0
    iget-object v0, p0, mKeySet:Lcom/oneplus/support/collection/MapCollections$KeySet;

    return-object v0
.end method

.method public getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, mValues:Lcom/oneplus/support/collection/MapCollections$ValuesCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/support/collection/MapCollections$ValuesCollection;

    invoke-direct {v0, p0}, Lcom/oneplus/support/collection/MapCollections$ValuesCollection;-><init>(Lcom/oneplus/support/collection/MapCollections;)V

    iput-object v0, p0, mValues:Lcom/oneplus/support/collection/MapCollections$ValuesCollection;

    :cond_0
    iget-object v0, p0, mValues:Lcom/oneplus/support/collection/MapCollections$ValuesCollection;

    return-object v0
.end method

.method public toArrayHelper(I)[Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, colGetSize()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2, p1}, colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toArrayHelper([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    invoke-virtual {p0}, colGetSize()I

    move-result v0

    array-length v1, p1

    if-ge v1, v0, :cond_0

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    move-object p1, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1, p2}, colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, p1

    if-le v1, v0, :cond_2

    const/4 v1, 0x0

    aput-object v1, p1, v0

    :cond_2
    return-object p1
.end method
