.class Lcom/oneplus/systemui/statusbar/phone/OpLockIcon$2;
.super Ljava/lang/Object;
.source "OpLockIcon.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p0, p0, this$0:Lcom/oneplus/systemui/statusbar/phone/OpLockIcon;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setScaleY(F)V

    return-void
.end method
