.class Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21$3;
.super Ljava/lang/Object;
.source "FragmentTransitionCompat21.java"

# interfaces
.implements Landroid/transition/Transition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;->scheduleRemoveTargets(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

.field final synthetic val$enterTransition:Ljava/lang/Object;

.field final synthetic val$enteringViews:Ljava/util/ArrayList;

.field final synthetic val$exitTransition:Ljava/lang/Object;

.field final synthetic val$exitingViews:Ljava/util/ArrayList;

.field final synthetic val$sharedElementTransition:Ljava/lang/Object;

.field final synthetic val$sharedElementsIn:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    iput-object p2, p0, val$enterTransition:Ljava/lang/Object;

    iput-object p3, p0, val$enteringViews:Ljava/util/ArrayList;

    iput-object p4, p0, val$exitTransition:Ljava/lang/Object;

    iput-object p5, p0, val$exitingViews:Ljava/util/ArrayList;

    iput-object p6, p0, val$sharedElementTransition:Ljava/lang/Object;

    iput-object p7, p0, val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionCancel(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionEnd(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionPause(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionResume(Landroid/transition/Transition;)V
    .locals 0

    return-void
.end method

.method public onTransitionStart(Landroid/transition/Transition;)V
    .locals 4

    iget-object v0, p0, val$enterTransition:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    iget-object v3, p0, val$enteringViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v0, p0, val$exitTransition:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v2, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    iget-object v3, p0, val$exitingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_1
    iget-object v0, p0, val$sharedElementTransition:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v2, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;

    iget-object v3, p0, val$sharedElementsIn:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, v3, v1}, Lcom/oneplus/support/core/fragment/app/FragmentTransitionCompat21;->replaceTargets(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method
