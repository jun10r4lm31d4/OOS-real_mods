.class Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator$RecyclerViewDisabler;
.super Ljava/lang/Object;
.source "OPItemAnimator.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecyclerViewDisabler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/oneplus/lib/widget/recyclerview/OPItemAnimator;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method