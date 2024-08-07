.class public Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;
.super Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;
.source "OPItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator$RecyclerViewDisabler;
    }
.end annotation


# static fields
.field private static final ONEPLUS_DURATION_MOVE:I = 0xc8

.field private static final ONEPLUS_DURATION_REMOVE:I = 0xc8


# instance fields
.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private recyclerViewDisabler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;-><init>()V

    iput-object p1, p0, mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator$RecyclerViewDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator$RecyclerViewDisabler;-><init>(Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator$1;)V

    iput-object v0, p0, recyclerViewDisabler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    const-wide/16 v0, 0xc8

    invoke-virtual {p0, v0, v1}, setRemoveDuration(J)V

    invoke-virtual {p0, v0, v1}, setMoveDuration(J)V

    return-void
.end method


# virtual methods
.method public onMoveFinished(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, recyclerViewDisabler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public onRemoveStarting(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 2

    iget-object v0, p0, mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v1, p0, recyclerViewDisabler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V

    return-void
.end method
