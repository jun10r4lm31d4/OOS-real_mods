.class Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathDataEvaluator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/animation/TypeEvaluator<",
        "[",
        "Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;",
        ">;"
    }
.end annotation


# instance fields
.field private mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/support/vectordrawable/graphics/drawable/AnimatorInflaterCompat$1;)V
    .locals 0

    invoke-direct {p0}, <init>()V

    return-void
.end method

.method constructor <init>([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, [Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    check-cast p3, [Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    invoke-virtual {p0, p1, p2, p3}, evaluate(F[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object p1

    return-object p1
.end method

.method public evaluate(F[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;
    .locals 4

    invoke-static {p2, p3}, Lcom/oneplus/support/core/graphics/PathParser;->canMorph([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    if-eqz v0, :cond_0

    invoke-static {v0, p2}, Lcom/oneplus/support/core/graphics/PathParser;->canMorph([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {p2}, Lcom/oneplus/support/core/graphics/PathParser;->deepCopyNodes([Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;)[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    move-result-object v0

    iput-object v0, p0, mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    :cond_1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    aget-object v1, v1, v0

    aget-object v2, p2, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3, p1}, Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;->interpolatePathDataNode(Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, mNodeArray:[Lcom/oneplus/support/core/graphics/PathParser$PathDataNode;

    return-object v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t interpolate between two incompatible pathData"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
