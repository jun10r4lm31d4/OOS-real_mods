.class Lcom/oneplus/support/collection/ArraySet$1;
.super Lcom/oneplus/support/collection/MapCollections;
.source "ArraySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/collection/ArraySet;->getCollection()Lcom/oneplus/support/collection/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/support/collection/MapCollections<",
        "TE;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/collection/ArraySet;


# direct methods
.method constructor <init>(Lcom/oneplus/support/collection/ArraySet;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-direct {p0}, Lcom/oneplus/support/collection/MapCollections;-><init>()V

    return-void
.end method


# virtual methods
.method protected colClear()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-virtual {p0}, Lcom/oneplus/support/collection/ArraySet;->clear()V

    return-void
.end method

.method protected colGetEntry(II)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-static {p0}, Lcom/oneplus/support/collection/ArraySet;->access$100(Lcom/oneplus/support/collection/ArraySet;)[Ljava/lang/Object;

    move-result-object p0

    aget-object p0, p0, p1

    return-object p0
.end method

.method protected colGetMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TE;TE;>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "not a map"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected colGetSize()I
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-static {p0}, Lcom/oneplus/support/collection/ArraySet;->access$000(Lcom/oneplus/support/collection/ArraySet;)I

    move-result p0

    return p0
.end method

.method protected colIndexOfKey(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colIndexOfValue(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected colPut(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)V"
        }
    .end annotation

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected colRemoveAt(I)V
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/support/collection/ArraySet;

    invoke-virtual {p0, p1}, Lcom/oneplus/support/collection/ArraySet;->removeAt(I)Ljava/lang/Object;

    return-void
.end method

.method protected colSetValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "not a map"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
