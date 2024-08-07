.class public Landroidx/slice/widget/LocationBasedViewTracker;
.super Ljava/lang/Object;
.source "LocationBasedViewTracker.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;
    }
.end annotation


# static fields
.field private static final A11Y_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation
.end field

.field private static final INPUT_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;


# instance fields
.field private final mFocusRect:Landroid/graphics/Rect;

.field private final mParent:Landroid/view/ViewGroup;

.field private final mSelectionLogic:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/slice/widget/LocationBasedViewTracker$1;

    invoke-direct {v0}, Landroidx/slice/widget/LocationBasedViewTracker$1;-><init>()V

    sput-object v0, INPUT_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    new-instance v0, Landroidx/slice/widget/LocationBasedViewTracker$2;

    invoke-direct {v0}, Landroidx/slice/widget/LocationBasedViewTracker$2;-><init>()V

    sput-object v0, A11Y_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mFocusRect:Landroid/graphics/Rect;

    iput-object p1, p0, mParent:Landroid/view/ViewGroup;

    iput-object p3, p0, mSelectionLogic:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    iget-object p3, p0, mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object p3, p0, mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p0, p0, mParent:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public static trackA11yFocus(Landroid/view/ViewGroup;)V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAccessibilityFocused()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_4

    new-instance v0, Landroidx/slice/widget/LocationBasedViewTracker;

    sget-object v2, A11Y_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    invoke-direct {v0, p0, v1, v2}, <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;)V

    :cond_4
    return-void
.end method

.method public static trackInputFocused(Landroid/view/ViewGroup;)V
    .locals 3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/slice/widget/LocationBasedViewTracker;

    sget-object v2, INPUT_FOCUS:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    invoke-direct {v1, p0, v0, v2}, <init>(Landroid/view/ViewGroup;Landroid/view/View;Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object p1, p0, mParent:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, mParent:Landroid/view/ViewGroup;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v5, p0, mParent:Landroid/view/ViewGroup;

    invoke-virtual {v5, v4, v1}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v5, p0, mFocusRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, p0, mFocusRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, mFocusRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, mFocusRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, mFocusRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/2addr v5, v6

    if-le v2, v5, :cond_0

    move-object v3, v4

    move v2, v5

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    iget-object p0, p0, mSelectionLogic:Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;

    invoke-interface {p0, v3}, Landroidx/slice/widget/LocationBasedViewTracker$SelectionLogic;->selectView(Landroid/view/View;)V

    :cond_3
    return-void
.end method
