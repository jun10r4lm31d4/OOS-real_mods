.class Lcom/oneplus/lib/design/widget/CoordinatorLayout$ViewElevationComparator;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/design/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewElevationComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    invoke-static {p1}, Lcom/oneplus/support/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v0

    invoke-static {p2}, Lcom/oneplus/support/core/view/ViewCompat;->getZ(Landroid/view/View;)F

    move-result v1

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, compare(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
