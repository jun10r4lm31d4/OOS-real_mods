.class Lcom/oneplus/settings/edgeeffect/SpringListView2$1;
.super Landroidx/dynamicanimation/animation/FloatPropertyCompat;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
        "Lcom/oneplus/settings/edgeeffect/SpringListView2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F
    .locals 1

    invoke-static {p1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$000(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v0

    return v0
.end method

.method public bridge synthetic getValue(Ljava/lang/Object;)F
    .locals 0

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p0, p1}, getValue(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result p1

    return p1
.end method

.method public setValue(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setDampedScrollShift(F)V

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    check-cast p1, Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {p0, p1, p2}, setValue(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V

    return-void
.end method