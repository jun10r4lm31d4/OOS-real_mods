.class Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;
.super Ljava/lang/Object;
.source "VectorDrawableCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/graphics/drawable/VectorDrawableCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VPath"
.end annotation


# instance fields
.field mChangingConfigurations:I

.field protected mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

.field mPathName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-void
.end method

.method public constructor <init>(Landroid/support/graphics/drawable/VectorDrawableCompat$VPath;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    iget-object v0, p1, mPathName:Ljava/lang/String;

    iput-object v0, p0, mPathName:Ljava/lang/String;

    iget v0, p1, mChangingConfigurations:I

    iput v0, p0, mChangingConfigurations:I

    iget-object p1, p1, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-void
.end method


# virtual methods
.method public getPathData()[Landroid/support/v4/graphics/PathParser$PathDataNode;
    .locals 0

    iget-object p0, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    return-object p0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mPathName:Ljava/lang/String;

    return-object p0
.end method

.method public isClipPath()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setPathData([Landroid/support/v4/graphics/PathParser$PathDataNode;)V
    .locals 1

    iget-object v0, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {v0, p1}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/support/v4/graphics/PathParser;->deepCopyNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object p1

    iput-object p1, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    goto :goto_0

    :cond_0
    iget-object p0, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    invoke-static {p0, p1}, Landroid/support/v4/graphics/PathParser;->updateNodes([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)V

    :goto_0
    return-void
.end method

.method public toPath(Landroid/graphics/Path;)V
    .locals 0

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object p0, p0, mNodes:[Landroid/support/v4/graphics/PathParser$PathDataNode;

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Landroid/support/v4/graphics/PathParser$PathDataNode;->nodesToPath([Landroid/support/v4/graphics/PathParser$PathDataNode;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method
