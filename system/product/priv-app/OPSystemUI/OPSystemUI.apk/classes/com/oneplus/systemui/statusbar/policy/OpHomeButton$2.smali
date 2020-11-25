.class Lcom/oneplus/systemui/statusbar/policy/OpHomeButton$2;
.super Ljava/lang/Object;
.source "OpHomeButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;->doEndAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;

.field final synthetic val$endAnim:Landroid/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;Landroid/animation/AnimatorSet;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/systemui/statusbar/policy/OpHomeButton;

    iput-object p2, p0, val$endAnim:Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, val$endAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
