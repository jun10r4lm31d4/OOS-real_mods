.class Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet$1;
.super Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;
.source "ViewPropertyAnimatorCompatSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mProxyEndCount:I

.field private mProxyStarted:Z

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {p0}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mProxyStarted:Z

    iput v0, p0, mProxyEndCount:I

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget v0, p0, mProxyEndCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mProxyEndCount:I

    iget-object v1, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v1, v1, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, onEnd()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, mProxyStarted:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mProxyStarted:Z

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->mListener:Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oneplus/support/core/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method onEnd()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, mProxyEndCount:I

    iput-boolean v0, p0, mProxyStarted:Z

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->onAnimationsEnded()V

    return-void
.end method
