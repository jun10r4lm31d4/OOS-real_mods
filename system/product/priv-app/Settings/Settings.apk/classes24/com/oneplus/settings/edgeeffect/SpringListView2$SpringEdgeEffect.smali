.class Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringListView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringListView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringListView2;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-direct {p0, p2}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput p3, p0, mVelocityMultiplier:F

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAbsorb(I)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    int-to-float v1, p1

    iget v2, p0, mVelocityMultiplier:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$302(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$400(Lcom/oneplus/settings/edgeeffect/SpringListView2;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$508(Lcom/oneplus/settings/edgeeffect/SpringListView2;)I

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0, p0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$600(Lcom/oneplus/settings/edgeeffect/SpringListView2;Lcom/oneplus/settings/edgeeffect/SpringListView2$SpringEdgeEffect;)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    iget v1, p0, mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$316(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$300(Lcom/oneplus/settings/edgeeffect/SpringListView2;)F

    move-result v1

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-virtual {v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->setDampedScrollShift(F)V

    return-void
.end method

.method public onRelease()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$302(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)F

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$502(Lcom/oneplus/settings/edgeeffect/SpringListView2;I)I

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringListView2;

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringListView2;->access$200(Lcom/oneplus/settings/edgeeffect/SpringListView2;F)V

    return-void
.end method
