.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;
.super Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->animateRemoveFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationOrAnimator;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

.field final synthetic val$container:Landroid/view/ViewGroup;

.field final synthetic val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Landroid/view/animation/Animation$AnimationListener;Landroid/view/ViewGroup;Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iput-object p3, p0, val$container:Landroid/view/ViewGroup;

    iput-object p4, p0, val$fragment:Lcom/oneplus/support/core/fragment/app/Fragment;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;-><init>(Landroid/view/animation/Animation$AnimationListener;Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$1;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$AnimationListenerWrapper;->onAnimationEnd(Landroid/view/animation/Animation;)V

    iget-object v0, p0, val$container:Landroid/view/ViewGroup;

    new-instance v1, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;

    invoke-direct {v1, p0}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2$1;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$2;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
