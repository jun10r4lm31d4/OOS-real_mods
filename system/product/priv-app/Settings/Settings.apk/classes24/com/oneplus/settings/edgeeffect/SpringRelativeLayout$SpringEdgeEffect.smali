.class Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;
.super Landroid/widget/EdgeEffect;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpringEdgeEffect"
.end annotation


# instance fields
.field private final mVelocityMultiplier:F

.field final synthetic this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;


# direct methods
.method public constructor <init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Landroid/content/Context;F)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

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

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    int-to-float v1, p1

    iget v2, p0, mVelocityMultiplier:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$200(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$302(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F

    return-void
.end method

.method public onPull(FF)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$400(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$400(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$508(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)I

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0, p0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$600(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    iget v1, p0, mVelocityMultiplier:F

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$316(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$700(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$300(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result v1

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$300(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result v1

    iget-object v2, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-virtual {v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->setDampedScrollShift(F)V

    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 7

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$302(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$502(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;I)I

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$000(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F

    move-result v0

    float-to-double v3, v0

    const-wide/16 v5, 0x0

    cmpl-double v0, v3, v5

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0, v2}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$802(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Z)Z

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;

    invoke-static {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;->access$200(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V

    return-void
.end method
