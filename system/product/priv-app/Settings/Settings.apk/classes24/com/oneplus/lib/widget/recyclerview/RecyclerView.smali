.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Lcom/oneplus/lib/widget/recyclerview/ScrollingView;
.implements Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObservable;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SimpleOnItemTouchListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;,
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field public static final HORIZONTAL:I = 0x0

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final MAX_SCROLL_DURATION:I = 0x7d0

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field private static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field private static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field private static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final VERTICAL:I = 0x1

.field private static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

.field private mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

.field mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

.field private mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

.field private mClipToPadding:Z

.field private mDataSetHasChangedAfterLayout:Z

.field private mEatRequestLayout:Z

.field private mEatenAccessibilityChangeFlags:I

.field private mFirstLayoutComplete:Z

.field private mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mIsAttached:Z

.field mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field private final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field private mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

.field private mLayoutFrozen:Z

.field private mLayoutOrScrollCounter:I

.field private mLayoutRequestEaten:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

.field private final mPostUpdatesOnAnimation:Z

.field private mPostedAnimatorRunner:Z

.field final mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

.field private mRecyclerListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private final mScrollConsumed:[I

.field private mScrollFactor:F

.field private mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private final mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

.field final mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field private final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x12

    if-eq v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-eq v0, v3, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x14

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    sput-boolean v0, FORCE_INVALIDATE_DISPLAY_LIST:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    aput-object v3, v0, v1

    const-class v1, Landroid/util/AttributeSet;

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v0, v1

    sput-object v0, LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$3;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$3;-><init>()V

    sput-object v0, sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V

    iput-object v0, p0, mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v0, p0, mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, mTempRect:Landroid/graphics/Rect;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    iput v0, p0, mLayoutOrScrollCounter:I

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/DefaultItemAnimator;-><init>()V

    iput-object v2, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iput v0, p0, mScrollState:I

    const/4 v2, -0x1

    iput v2, p0, mScrollPointerId:I

    const/4 v2, 0x1

    iput v2, p0, mScrollFactor:F

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v2, p0, mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;-><init>()V

    iput-object v2, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iput-boolean v0, p0, mItemsAddedOrRemoved:Z

    iput-boolean v0, p0, mItemsChanged:Z

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimatorRestoreListener;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$1;)V

    iput-object v2, p0, mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    iput-boolean v0, p0, mPostedAnimatorRunner:Z

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, mMinMaxLayoutPositions:[I

    new-array v2, v1, [I

    iput-object v2, p0, mScrollOffset:[I

    new-array v2, v1, [I

    iput-object v2, p0, mScrollConsumed:[I

    new-array v2, v1, [I

    iput-object v2, p0, mNestedOffsets:[I

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$2;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iput-object v2, p0, mItemAnimatorRunner:Ljava/lang/Runnable;

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, setScrollContainer(Z)V

    invoke-virtual {p0, v2}, setFocusableInTouchMode(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iput-boolean v4, p0, mPostUpdatesOnAnimation:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, mTouchSlop:I

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, mMinFlingVelocity:I

    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, mMaxFlingVelocity:I

    invoke-virtual {p0}, getOverScrollMode()I

    move-result v5

    if-ne v5, v1, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v1, p0, mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    invoke-virtual {p0}, initAdapterManager()V

    invoke-direct {p0}, initChildrenHelper()V

    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, v2}, setImportantForAccessibility(I)V

    :cond_2
    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-virtual {p0, v0}, setAccessibilityDelegateCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->RecyclerView_op_layoutManager:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    move-object v5, p0

    move-object v6, p1

    move-object v7, v11

    move-object v8, p2

    move v9, p3

    move v10, v0

    invoke-direct/range {v5 .. v10}, createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    :cond_3
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {p0, v2}, setNestedScrollingEnabled(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mFirstLayoutComplete:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    return v0
.end method

.method static synthetic access$2200()Landroid/view/animation/Interpolator;
    .locals 1

    sget-object v0, sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, consumePendingUpdateOperations()V

    return-void
.end method

.method static synthetic access$2400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, onEnterLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    invoke-direct {p0}, supportsChangeAnimations()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, onExitLayoutOrScroll()V

    return-void
.end method

.method static synthetic access$2900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mLayoutRequestEaten:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, considerReleasingGlowsOnScroll(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    invoke-virtual {p0}, awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, setScrollState(I)V

    return-void
.end method

.method static synthetic access$3300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0}, setDataSetChangedAfterLayout()V

    return-void
.end method

.method static synthetic access$3400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mPostUpdatesOnAnimation:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mHasFixedSize:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mIsAttached:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, mAdapterUpdateDuringMeasure:Z

    return p1
.end method

.method static synthetic access$3900()Z
    .locals 1

    sget-boolean v0, FORCE_INVALIDATE_DISPLAY_LIST:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;
    .locals 1

    iget-object v0, p0, mRecyclerListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Z
    .locals 1

    iget-boolean v0, p0, mClipToPadding:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, defaultOnMeasure(II)V

    return-void
.end method

.method static synthetic access$4600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, setMeasuredDimension(II)V

    return-void
.end method

.method static synthetic access$4700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 1

    invoke-direct {p0, p1}, getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;
    .locals 1

    iget-object v0, p0, mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Z)Z
    .locals 0

    iput-boolean p1, p0, mPostedAnimatorRunner:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0

    invoke-direct {p0, p1}, jumpToPositionForSmoothScroller(I)V

    return-void
.end method

.method static synthetic access$5300(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)Z
    .locals 1

    invoke-direct {p0, p1}, removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, dispatchChildAttached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, dispatchChildDetached(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V
    .locals 0

    invoke-virtual {p0, p1}, detachViewFromParent(I)V

    return-void
.end method

.method private addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 6

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    iget-object v3, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->hide(Landroid/view/View;)V

    :goto_1
    return-void
.end method

.method private animateAppearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V
    .locals 9

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v2, p3, :cond_0

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-eq v2, p4, :cond_1

    :cond_0
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v3, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget v5, p2, Landroid/graphics/Rect;->left:I

    iget v6, p2, Landroid/graphics/Rect;->top:I

    move-object v4, p1

    move v7, p3

    move v8, p4

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, postAnimationRunner()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v1, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateAdd(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, postAnimationRunner()V

    :cond_2
    :goto_0
    return-void
.end method

.method private animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 11

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    invoke-direct {p0, p1}, addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iput-object p2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowedHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v9

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {p2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iput-object p1, p2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move v0, v2

    move v10, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    move v2, v9

    move v10, v2

    :goto_1
    iget-object v2, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    move-object v3, p1

    move-object v4, p2

    move v5, v1

    move v6, v9

    move v7, v0

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, postAnimationRunner()V

    :cond_2
    return-void
.end method

.method private animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V
    .locals 11

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {p0, v1}, addAnimatingView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v8, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v10

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-ne v1, v9, :cond_0

    if-eq v8, v10, :cond_1

    :cond_0
    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    nop

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, v9

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, v10

    invoke-virtual {v0, v9, v10, v2, v3}, Landroid/view/View;->layout(IIII)V

    iget-object v2, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move v4, v1

    move v5, v8

    move v6, v9

    move v7, v10

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, postAnimationRunner()V

    goto :goto_0

    :cond_1
    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v2, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v3, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateRemove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, postAnimationRunner()V

    :cond_2
    :goto_0
    return-void
.end method

.method private cancelTouch()V
    .locals 1

    invoke-direct {p0}, resetTouch()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, setScrollState(I)V

    return-void
.end method

.method private considerReleasingGlowsOnScroll(II)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    if-lez p1, :cond_0

    iget-object v1, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_0
    iget-object v1, p0, mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    if-gez p1, :cond_1

    iget-object v1, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    if-lez p2, :cond_2

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_3

    if-gez p2, :cond_3

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method private consumePendingUpdateOperations()V
    .locals 1

    iget-object v0, p0, mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .locals 10

    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0}, isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    :goto_0
    nop

    invoke-virtual {v1, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_1
    sget-object v6, LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    invoke-virtual {v2, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v5

    aput-object p3, v7, v4

    const/4 v8, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v3, v7

    move-object v5, v6

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_2
    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v2, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    :goto_1
    :try_start_3
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {p0, v4}, setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    goto/16 :goto_2

    :catch_1
    move-exception v4

    invoke-virtual {v4, v6}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": Error creating LayoutManager "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InstantiationException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_5
    move-exception v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    :goto_2
    return-void
.end method

.method private defaultOnMeasure(II)V
    .locals 8

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    const/high16 v7, -0x80000000

    if-eq v0, v7, :cond_0

    if-eq v0, v6, :cond_0

    invoke-virtual {p0}, getMinimumWidth()I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v2

    nop

    :goto_0
    if-eq v1, v7, :cond_1

    if-eq v1, v6, :cond_1

    invoke-virtual {p0}, getMinimumHeight()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    nop

    :goto_1
    invoke-virtual {p0, v4, v5}, setMeasuredDimension(II)V

    return-void
.end method

.method private didChildRangeChange(II)Z
    .locals 6

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_6

    iget-object v4, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v5

    if-lt v5, p1, :cond_5

    if-le v5, p2, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v2

    :cond_6
    return v1
.end method

.method private dispatchChildAttached(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, onChildAttachedToWindow(Landroid/view/View;)V

    iget-object v1, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v1, p0, mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchChildDetached(Landroid/view/View;)V
    .locals 4

    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    invoke-virtual {p0, p1}, onChildDetachedFromWindow(Landroid/view/View;)V

    iget-object v1, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onViewDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    iget-object v1, p0, mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v2, v1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private dispatchContentChangedIfNecessary()V
    .locals 3

    iget v0, p0, mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x0

    iput v1, p0, mEatenAccessibilityChangeFlags:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    invoke-virtual {v1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentChangeTypes(I)V

    invoke-virtual {p0, v1}, sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method private dispatchOnItemTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iput-object v3, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    goto :goto_0

    :cond_0
    invoke-interface {v1, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)V

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_2

    :cond_1
    iput-object v3, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    :cond_2
    return v2

    :cond_3
    :goto_0
    if-eqz v0, :cond_5

    iget-object v1, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_5

    iget-object v4, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v4, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    iput-object v4, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    return v1
.end method

.method private dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    :cond_1
    iget-object v2, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v4, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v4, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eq v0, v1, :cond_2

    iput-object v4, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    const/4 v1, 0x1

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .locals 8

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    aput v2, p1, v2

    aput v2, p1, v1

    return-void

    :cond_0
    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_4

    iget-object v6, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    if-ge v7, v3, :cond_2

    move v3, v7

    :cond_2
    if-le v7, v4, :cond_3

    move v4, v7

    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    aput v3, p1, v2

    aput v4, p1, v1

    return-void
.end method

.method private getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I
    .locals 2

    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    iget v1, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, -0x1

    return v0
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mViewHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    return-object v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrollFactor()F
    .locals 4

    iget v0, p0, mScrollFactor:F

    const/4 v1, 0x1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101004d

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v1

    iput v1, p0, mScrollFactor:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    iget v0, p0, mScrollFactor:F

    return v0
.end method

.method private initChildrenHelper()V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$4;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/ChildHelper$Callback;)V

    iput-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    return-void
.end method

.method private jumpToPositionForSmoothScroller(I)V
    .locals 1

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, awakenScrollBars()Z

    return-void
.end method

.method private onEnterLayoutOrScroll()V
    .locals 1

    iget v0, p0, mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mLayoutOrScrollCounter:I

    return-void
.end method

.method private onExitLayoutOrScroll()V
    .locals 2

    iget v0, p0, mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, mLayoutOrScrollCounter:I

    iget v0, p0, mLayoutOrScrollCounter:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, mLayoutOrScrollCounter:I

    invoke-direct {p0}, dispatchContentChangedIfNecessary()V

    :cond_0
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, mScrollPointerId:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, mScrollPointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mLastTouchX:I

    iput v2, p0, mInitialTouchX:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, mLastTouchY:I

    iput v2, p0, mInitialTouchY:I

    :cond_1
    return-void
.end method

.method private postAnimationRunner()V
    .locals 1

    iget-boolean v0, p0, mPostedAnimatorRunner:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, mIsAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mPostedAnimatorRunner:Z

    :cond_0
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .locals 1

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .locals 5

    iget-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->reset()V

    invoke-virtual {p0}, markKnownViewsInvalid()V

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onItemsChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_0
    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->preProcess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    :goto_0
    iget-boolean v0, p0, mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, mItemsChanged:Z

    if-eqz v0, :cond_4

    :cond_2
    iget-boolean v0, p0, mItemsAddedOrRemoved:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, mItemsChanged:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, supportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v0, v2

    :goto_2
    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-boolean v4, p0, mFirstLayoutComplete:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_7

    iget-boolean v4, p0, mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_5

    if-nez v0, :cond_5

    iget-object v4, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$1900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    iget-boolean v4, p0, mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v1

    :goto_3
    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v0, :cond_8

    iget-boolean v4, p0, mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_8

    invoke-direct {p0}, predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move v1, v2

    goto :goto_4

    :cond_8
    nop

    :goto_4
    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    return-void
.end method

.method private processDisappearingList(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/widget/recyclerview/ArrayMap<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v9

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v3, v9}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->isPreLayout()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v3, v9}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p1, v2}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v4, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3, v2, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleView(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    goto :goto_1

    :cond_1
    if-eqz v10, :cond_2

    invoke-direct {p0, v10}, animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    goto :goto_1

    :cond_2
    new-instance v11, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v8

    move-object v3, v11

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    invoke-direct {p0, v11}, animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private pullGlows(FFFF)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_0

    invoke-virtual {p0}, ensureLeftGlow()V

    iget-object v2, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    cmpl-float v2, p2, v1

    if-lez v2, :cond_1

    invoke-virtual {p0}, ensureRightGlow()V

    iget-object v2, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    cmpg-float v2, p4, v1

    if-gez v2, :cond_2

    invoke-virtual {p0}, ensureTopGlow()V

    iget-object v2, p0, mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    cmpl-float v2, p4, v1

    if-lez v2, :cond_3

    invoke-virtual {p0}, ensureBottomGlow()V

    iget-object v2, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-virtual {v2, v4, v3}, Landroid/widget/EdgeEffect;->onPull(FF)V

    const/4 v0, 0x1

    :cond_3
    :goto_1
    if-nez v0, :cond_4

    cmpl-float v2, p2, v1

    if-nez v2, :cond_4

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method private releaseGlows()V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    :cond_0
    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_1
    iget-object v1, p0, mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v1, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_4
    return-void
.end method

.method private removeAnimatingView(Landroid/view/View;)Z
    .locals 3

    invoke-virtual {p0}, eatRequestLayout()V

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    iget-object v2, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    iget-object v2, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->recycleViewHolderInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, resumeRequestLayout(Z)V

    return v0
.end method

.method private resetTouch()V
    .locals 1

    iget-object v0, p0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    :cond_0
    invoke-virtual {p0}, stopNestedScroll()V

    invoke-direct {p0}, releaseGlows()V

    return-void
.end method

.method private setAdapterInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;ZZ)V
    .locals 3

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    iget-object v1, p0, mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->unregisterAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onDetachedFromRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_4

    :cond_1
    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_2
    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3

    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    :cond_3
    iget-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    :cond_4
    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->reset()V

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iput-object p1, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz p1, :cond_5

    iget-object v1, p0, mObserver:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->registerAdapterDataObserver(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$AdapterDataObserver;)V

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->onAttachedToRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_5
    iget-object v1, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_6

    iget-object v2, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    :cond_6
    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v2, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->onAdapterChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    invoke-virtual {p0}, markKnownViewsInvalid()V

    return-void
.end method

.method private setDataSetChangedAfterLayout()V
    .locals 4

    iget-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setAdapterPositionsAsUnknown()V

    return-void
.end method

.method private setScrollState(I)V
    .locals 1

    iget v0, p0, mScrollState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, mScrollState:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    invoke-direct {p0}, stopScrollersInternal()V

    :cond_1
    invoke-virtual {p0, p1}, dispatchOnScrollStateChanged(I)V

    return-void
.end method

.method private stopScrollersInternal()V
    .locals 1

    iget-object v0, p0, mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->stop()V

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->stopSmoothScroller()V

    :cond_0
    return-void
.end method

.method private supportsChangeAnimations()Z
    .locals 1

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->getSupportsChangeAnimations()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method absorbGlows(II)V
    .locals 2

    if-gez p1, :cond_0

    invoke-virtual {p0}, ensureLeftGlow()V

    iget-object v0, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, ensureRightGlow()V

    iget-object v0, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    invoke-virtual {p0}, ensureTopGlow()V

    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_1

    :cond_2
    if-lez p2, :cond_3

    invoke-virtual {p0}, ensureBottomGlow()V

    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_5
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onAddFocusables(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    return-void
.end method

.method public addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V

    return-void
.end method

.method public addItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;I)V
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    :cond_1
    if-gez p2, :cond_2

    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_0
    invoke-virtual {p0}, markItemDecorInsetsDirty()V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method public addOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mOnChildAttachStateListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mScrollListeners:Ljava/util/List;

    :cond_0
    iget-object v0, p0, mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->checkLayoutParams(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method clearOldPositions()V
    .locals 4

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clearOldPositions()V

    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .locals 1

    iget-object v0, p0, mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public clearOnScrollListeners()V
    .locals 1

    iget-object v0, p0, mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeHorizontalScrollRange()I
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollExtent()I
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollOffset()I
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public computeVerticalScrollRange()I
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->computeVerticalScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dispatchLayout()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    const-string v2, "RecyclerView"

    if-nez v1, :cond_0

    const-string v1, "No adapter attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v1, :cond_1

    const-string v1, "No layout manager attached; skipping layout"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mDisappearingViewsInLayoutPass:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    invoke-virtual/range {p0 .. p0}, eatRequestLayout()V

    invoke-direct/range {p0 .. p0}, onEnterLayoutOrScroll()V

    invoke-direct/range {p0 .. p0}, processAdapterUpdatesAndSetAnimationFlags()V

    iget-object v1, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    nop

    invoke-static {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, v0, mItemsChanged:Z

    if-eqz v2, :cond_2

    invoke-direct/range {p0 .. p0}, supportsChangeAnimations()Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v2}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    goto :goto_0

    :cond_2
    move-object v2, v3

    :goto_0
    iput-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    const/4 v1, 0x0

    iput-boolean v1, v0, mItemsChanged:Z

    iput-boolean v1, v0, mItemsAddedOrRemoved:Z

    const/4 v2, 0x0

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v5, v0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    iget-object v4, v0, mMinMaxLayoutPositions:[I

    invoke-direct {v0, v4}, findMinMaxChildLayoutPositions([I)V

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->clear()V

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->clear()V

    iget-object v4, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_5

    iget-object v6, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_2

    :cond_3
    iget-object v13, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v7, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v14, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    new-instance v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v12

    move-object v7, v15

    move-object v8, v6

    invoke-direct/range {v7 .. v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v14, v6, v15}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual/range {p0 .. p0}, saveOldPositions()V

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_7

    iget-object v4, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v4, :cond_7

    iget-object v6, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0, v6}, getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v7

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1400(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    iget-object v5, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v5, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v5, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v6, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v7, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v5, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    new-instance v5, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v5}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    move-object v2, v5

    const/4 v5, 0x0

    :goto_4
    iget-object v6, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_c

    const/4 v6, 0x0

    iget-object v7, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v7, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v7}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v8

    if-eqz v8, :cond_8

    goto :goto_7

    :cond_8
    const/4 v8, 0x0

    :goto_5
    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v9

    if-ge v8, v9, :cond_a

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v10, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v10, v7, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    :goto_6
    if-nez v6, :cond_b

    new-instance v8, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v7, v8}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_c
    invoke-virtual/range {p0 .. p0}, clearOldPositions()V

    iget-object v5, v0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumePostponedUpdates()V

    goto :goto_9

    :cond_d
    invoke-virtual/range {p0 .. p0}, clearOldPositions()V

    iget-object v4, v0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_f

    iget-object v4, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v4, :cond_f

    iget-object v6, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v6, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v0, v6}, getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v7

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_f
    :goto_9
    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v5, v0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v5

    iput v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1202(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v4, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v5, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v6, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v5, v6}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onLayoutChildren(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iput-object v3, v0, mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v5

    if-eqz v5, :cond_10

    iget-object v5, v0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v5, :cond_10

    const/4 v5, 0x1

    goto :goto_a

    :cond_10
    move v5, v1

    :goto_a
    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v4

    if-eqz v4, :cond_22

    iget-object v4, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v4, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v4, :cond_11

    new-instance v4, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-direct {v4}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;-><init>()V

    goto :goto_b

    :cond_11
    move-object v4, v3

    :goto_b
    iget-object v5, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v5

    const/4 v7, 0x0

    :goto_c
    if-ge v7, v5, :cond_14

    iget-object v8, v0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-static {v8}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v8

    invoke-virtual {v8}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v9

    if-eqz v9, :cond_12

    goto :goto_d

    :cond_12
    iget-object v15, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v8}, getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J

    move-result-wide v16

    if-eqz v4, :cond_13

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v9, v8}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_13
    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v14, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    new-instance v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    invoke-virtual {v15}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v15}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v15}, Landroid/view/View;->getRight()I

    move-result v18

    invoke-virtual {v15}, Landroid/view/View;->getBottom()I

    move-result v19

    move-object v9, v13

    move-object v10, v8

    move-object v6, v13

    move/from16 v13, v18

    move-object v3, v14

    move/from16 v14, v19

    invoke-direct/range {v9 .. v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)V

    invoke-virtual {v3, v8, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_c

    :cond_14
    invoke-direct {v0, v2}, processDisappearingList(Lcom/oneplus/lib/widget/recyclerview/ArrayMap;)V

    iget-object v3, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    :goto_e
    if-ltz v6, :cond_16

    iget-object v7, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v8, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_15

    iget-object v8, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    iget-object v9, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v11, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->holder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v10, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->unscrapView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    invoke-direct {v0, v8}, animateDisappearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;)V

    :cond_15
    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    :cond_16
    iget-object v6, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v6, v6, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v6}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_1a

    add-int/lit8 v7, v6, -0x1

    :goto_f
    if-ltz v7, :cond_1a

    iget-object v8, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v10, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_17

    iget-object v10, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v10, v8}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    :cond_17
    iget-object v10, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v10, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->removeAt(I)Ljava/lang/Object;

    if-eqz v2, :cond_18

    iget-object v10, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v10}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Rect;

    goto :goto_10

    :cond_18
    const/4 v10, 0x0

    :goto_10
    iget v11, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v12, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    invoke-direct {v0, v8, v10, v11, v12}, animateAppearance(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Landroid/graphics/Rect;II)V

    :cond_19
    add-int/lit8 v7, v7, -0x1

    goto :goto_f

    :cond_1a
    iget-object v7, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v5

    const/4 v7, 0x0

    :goto_11
    if-ge v7, v5, :cond_1e

    iget-object v8, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPostLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v15, v9

    check-cast v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    iget-object v9, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v9, v9, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mPreLayoutHolderMap:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v9, v8}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v14, v9

    check-cast v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;

    if-eqz v14, :cond_1c

    if-eqz v15, :cond_1c

    iget v9, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v10, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    if-ne v9, v10, :cond_1b

    iget v9, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    iget v10, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    if-eq v9, v10, :cond_1d

    :cond_1b
    invoke-virtual {v8, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    iget-object v9, v0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget v11, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v12, v14, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    iget v13, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->left:I

    iget v10, v15, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemHolderInfo;->top:I

    move/from16 v16, v10

    move-object v10, v8

    move-object/from16 v17, v14

    move/from16 v14, v16

    invoke-virtual/range {v9 .. v14}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->animateMove(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;IIII)Z

    move-result v9

    if-eqz v9, :cond_1d

    invoke-direct/range {p0 .. p0}, postAnimationRunner()V

    goto :goto_12

    :cond_1c
    move-object/from16 v17, v14

    :cond_1d
    :goto_12
    add-int/lit8 v7, v7, 0x1

    goto :goto_11

    :cond_1e
    iget-object v7, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    if-eqz v7, :cond_1f

    iget-object v7, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v7, v7, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->size()I

    move-result v7

    goto :goto_13

    :cond_1f
    move v7, v1

    :goto_13
    move v5, v7

    add-int/lit8 v7, v5, -0x1

    :goto_14
    if-ltz v7, :cond_22

    iget-object v8, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v8, v8, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-virtual {v8, v7}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v10, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v10, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    iget-object v11, v10, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v12

    if-eqz v12, :cond_20

    goto :goto_15

    :cond_20
    iget-object v12, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_21

    iget-object v12, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v12}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/oneplus/lib/widget/recyclerview/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-direct {v0, v10, v12}, animateChange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    :cond_21
    :goto_15
    add-int/lit8 v7, v7, -0x1

    goto :goto_14

    :cond_22
    invoke-virtual {v0, v1}, resumeRequestLayout(Z)V

    iget-object v3, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v4, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    iget-object v3, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$2102(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    iput-boolean v1, v0, mDataSetHasChangedAfterLayout:Z

    iget-object v3, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    iget-object v3, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1602(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    invoke-direct/range {p0 .. p0}, onExitLayoutOrScroll()V

    iget-object v3, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v3, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$1902(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)Z

    iget-object v3, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, v0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-static {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->access$2000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    :cond_23
    iget-object v3, v0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mOldChangedHolders:Lcom/oneplus/lib/widget/recyclerview/ArrayMap;

    iget-object v3, v0, mMinMaxLayoutPositions:[I

    aget v4, v3, v1

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-direct {v0, v4, v3}, didChildRangeChange(II)Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-virtual {v0, v1, v1}, dispatchOnScrolled(II)V

    :cond_24
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .locals 6

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    :cond_0
    invoke-virtual {p0, p1}, onScrollStateChanged(I)V

    iget-object v0, p0, mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    :cond_1
    iget-object v0, p0, mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrollStateChanged(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method dispatchOnScrolled(II)V
    .locals 4

    invoke-virtual {p0}, getScrollX()I

    move-result v0

    invoke-virtual {p0}, getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, onScrollChanged(IIII)V

    invoke-virtual {p0, p1, p2}, onScrolled(II)V

    iget-object v2, p0, mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    :cond_0
    iget-object v2, p0, mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_1

    iget-object v3, p0, mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;->onScrolled(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;II)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-boolean v5, p0, mClipToPadding:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v4

    :goto_1
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v6, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_2

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v3

    goto :goto_2

    :cond_2
    move v6, v4

    :goto_2
    move v1, v6

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    iget-object v2, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    iget-boolean v5, p0, mClipToPadding:Z

    if-eqz v5, :cond_4

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_4
    iget-object v5, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_5

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v3

    goto :goto_3

    :cond_5
    move v5, v4

    :goto_3
    or-int/2addr v1, v5

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    iget-object v2, p0, mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, getWidth()I

    move-result v5

    iget-boolean v6, p0, mClipToPadding:Z

    if-eqz v6, :cond_7

    invoke-virtual {p0}, getPaddingTop()I

    move-result v6

    goto :goto_4

    :cond_7
    move v6, v4

    :goto_4
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v7, v6

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v7, p0, mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_8

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_8

    move v7, v3

    goto :goto_5

    :cond_8
    move v7, v4

    :goto_5
    or-int/2addr v1, v7

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_9
    iget-object v2, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    iget-boolean v5, p0, mClipToPadding:Z

    if-eqz v5, :cond_a

    invoke-virtual {p0}, getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_6

    :cond_a
    invoke-virtual {p0}, getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_6
    iget-object v5, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_b

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_b

    goto :goto_7

    :cond_b
    move v3, v4

    :goto_7
    or-int/2addr v1, v3

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-nez v1, :cond_d

    iget-object v2, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_d

    iget-object v2, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_d

    iget-object v2, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_e

    invoke-virtual {p0}, postInvalidateOnAnimation()V

    :cond_e
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method eatRequestLayout()V
    .locals 1

    iget-boolean v0, p0, mEatRequestLayout:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, mEatRequestLayout:Z

    iget-boolean v0, p0, mLayoutFrozen:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, mLayoutRequestEaten:Z

    :cond_0
    return-void
.end method

.method ensureBottomGlow()V
    .locals 4

    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureLeftGlow()V
    .locals 4

    iget-object v0, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureRightGlow()V
    .locals 4

    iget-object v0, p0, mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mRightGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method ensureTopGlow()V
    .locals 4

    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    iget-boolean v0, p0, mClipToPadding:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    :goto_0
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .locals 6

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findViewHolderForAdapterPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 5

    iget-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3}, getAdapterPositionFor(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public findViewHolderForItemId(J)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 5

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public findViewHolderForLayoutPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz p2, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v3

    if-ne v3, p1, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public fling(II)Z
    .locals 7

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v2, p0, mLayoutFrozen:Z

    if-eqz v2, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v2, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v0, :cond_2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, mMinFlingVelocity:I

    if-ge v3, v4, :cond_3

    :cond_2
    const/4 p1, 0x0

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, mMinFlingVelocity:I

    if-ge v3, v4, :cond_5

    :cond_4
    const/4 p2, 0x0

    :cond_5
    if-nez p1, :cond_6

    if-nez p2, :cond_6

    return v1

    :cond_6
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_9

    const/4 v3, 0x1

    if-nez v0, :cond_8

    if-eqz v2, :cond_7

    goto :goto_0

    :cond_7
    move v4, v1

    goto :goto_1

    :cond_8
    :goto_0
    move v4, v3

    :goto_1
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v4}, dispatchNestedFling(FFZ)Z

    if-eqz v4, :cond_9

    iget v1, p0, mMaxFlingVelocity:I

    neg-int v5, v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget v1, p0, mMaxFlingVelocity:I

    neg-int v5, v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result p2

    iget-object v1, p0, mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->fling(II)V

    return v3

    :cond_9
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .locals 5

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v2, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v2, :cond_1

    iget-object v2, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, isComputingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, mLayoutFrozen:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, eatRequestLayout()V

    iget-object v2, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v3, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v4, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1, p2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, resumeRequestLayout(Z)V

    :cond_1
    if-eqz v0, :cond_2

    move-object v2, v0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    :goto_0
    return-object v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecyclerView has no LayoutManager"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    return-object v0
.end method

.method public getBaseline()I
    .locals 1

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)J
    .locals 2

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .locals 2

    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .locals 3

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_1
    return-wide v1

    :cond_2
    :goto_0
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .locals 2

    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getCompatAccessibilityDelegate()Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;
    .locals 1

    iget-object v0, p0, mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    return-object v0
.end method

.method public getItemAnimator()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;
    .locals 1

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 8

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    iget-object v5, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v5, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    return-object v1
.end method

.method public getLayoutManager()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .locals 1

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .locals 1

    iget v0, p0, mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .locals 1

    iget v0, p0, mMinFlingVelocity:I

    return v0
.end method

.method public getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
    .locals 1

    iget-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->getRecycledViewPool()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .locals 1

    iget v0, p0, mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .locals 1

    iget-boolean v0, p0, mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .locals 1

    iget-boolean v0, p0, mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_1

    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method initAdapterManager()V
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    new-instance v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$5;-><init>(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;-><init>(Lcom/oneplus/lib/widget/recyclerview/AdapterHelper$Callback;)V

    iput-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    return-void
.end method

.method invalidateGlows()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, mLeftGlow:Landroid/widget/EdgeEffect;

    return-void
.end method

.method public invalidateItemDecorations()V
    .locals 2

    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, markItemDecorInsetsDirty()V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method isAccessibilityEnabled()Z
    .locals 1

    iget-object v0, p0, mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttachedToWindow()Z
    .locals 1

    iget-boolean v0, p0, mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .locals 1

    iget v0, p0, mLayoutOrScrollCounter:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLayoutFrozen()Z
    .locals 1

    iget-boolean v0, p0, mLayoutFrozen:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method markItemDecorInsetsDirty()V
    .locals 5

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    return-void
.end method

.method markKnownViewsInvalid()V
    .locals 4

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, markItemDecorInsetsDirty()V

    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->markKnownViewsInvalid()V

    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .locals 3

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .locals 3

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .locals 5

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .locals 8

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    if-ge p1, p2, :cond_0

    move v1, p1

    move v2, p2

    const/4 v3, -0x1

    goto :goto_0

    :cond_0
    move v1, p2

    move v2, p1

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_4

    iget-object v5, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v5, v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v5

    if-eqz v5, :cond_3

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v1, :cond_3

    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v2, :cond_1

    goto :goto_3

    :cond_1
    iget v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_2

    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_2

    :cond_2
    invoke-virtual {v5, v3, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    :goto_2
    iget-object v6, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-object v4, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .locals 7

    add-int v0, p1, p2

    iget-object v1, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_0

    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    iget-object v4, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_1

    :cond_0
    iget v4, v3, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_1

    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    iget-object v4, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1402(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x0

    iput v0, p0, mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    iput-boolean v1, p0, mIsAttached:Z

    iput-boolean v0, p0, mFirstLayoutComplete:Z

    iget-object v1, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_0
    iput-boolean v0, p0, mPostedAnimatorRunner:Z

    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mFirstLayoutComplete:Z

    invoke-virtual {p0}, stopScroll()V

    iput-boolean v0, p0, mIsAttached:Z

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_1

    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongCall"
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, mLayoutFrozen:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_5

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_4

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_5

    :cond_4
    invoke-direct {p0}, getScrollFactor()F

    move-result v3

    mul-float v4, v2, v3

    float-to-int v4, v4

    mul-float v5, v0, v3

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5, p1}, scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, mLayoutFrozen:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return v3

    :cond_0
    invoke-direct/range {p0 .. p1}, dispatchOnItemTouchIntercept(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, cancelTouch()V

    return v4

    :cond_1
    iget-object v2, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    iget-object v5, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    iget-object v6, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v6, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    const/4 v8, 0x2

    const/high16 v9, 0x3f000000    # 0.5f

    if-eqz v6, :cond_10

    if-eq v6, v4, :cond_f

    if-eq v6, v8, :cond_7

    const/4 v8, 0x3

    if-eq v6, v8, :cond_6

    const/4 v8, 0x5

    if-eq v6, v8, :cond_5

    const/4 v8, 0x6

    if-eq v6, v8, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-direct/range {p0 .. p1}, onPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    iput v8, v0, mScrollPointerId:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, mLastTouchX:I

    iput v8, v0, mInitialTouchX:I

    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, v0, mLastTouchY:I

    iput v8, v0, mInitialTouchY:I

    goto/16 :goto_2

    :cond_6
    invoke-direct/range {p0 .. p0}, cancelTouch()V

    goto/16 :goto_2

    :cond_7
    iget v8, v0, mScrollPointerId:I

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v8

    if-gez v8, :cond_8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, mScrollPointerId:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v9, "RecyclerView"

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_8
    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    add-float/2addr v10, v9

    float-to-int v10, v10

    invoke-virtual {v1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v11

    add-float/2addr v11, v9

    float-to-int v9, v11

    iget v11, v0, mScrollState:I

    if-eq v11, v4, :cond_e

    iget v11, v0, mInitialTouchX:I

    sub-int v11, v10, v11

    iget v12, v0, mInitialTouchY:I

    sub-int v12, v9, v12

    const/4 v13, 0x0

    if-eqz v2, :cond_a

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v15

    iget v14, v0, mTouchSlop:I

    if-le v15, v14, :cond_a

    iget v15, v0, mInitialTouchX:I

    if-gez v11, :cond_9

    const/16 v17, -0x1

    goto :goto_0

    :cond_9
    move/from16 v17, v4

    :goto_0
    mul-int v14, v14, v17

    add-int/2addr v15, v14

    iput v15, v0, mLastTouchX:I

    const/4 v13, 0x1

    :cond_a
    if-eqz v5, :cond_c

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v14

    iget v15, v0, mTouchSlop:I

    if-le v14, v15, :cond_c

    iget v14, v0, mInitialTouchY:I

    if-gez v12, :cond_b

    const/16 v16, -0x1

    goto :goto_1

    :cond_b
    move/from16 v16, v4

    :goto_1
    mul-int v15, v15, v16

    add-int/2addr v14, v15

    iput v14, v0, mLastTouchY:I

    const/4 v13, 0x1

    :cond_c
    if-eqz v13, :cond_e

    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-interface {v14, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_d
    invoke-direct {v0, v4}, setScrollState(I)V

    :cond_e
    goto :goto_2

    :cond_f
    iget-object v8, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->clear()V

    invoke-virtual/range {p0 .. p0}, stopNestedScroll()V

    goto :goto_2

    :cond_10
    iget-boolean v10, v0, mIgnoreMotionEventTillDown:Z

    if-eqz v10, :cond_11

    iput-boolean v3, v0, mIgnoreMotionEventTillDown:Z

    :cond_11
    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, v0, mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    add-float/2addr v10, v9

    float-to-int v10, v10

    iput v10, v0, mLastTouchX:I

    iput v10, v0, mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    add-float/2addr v10, v9

    float-to-int v9, v10

    iput v9, v0, mLastTouchY:I

    iput v9, v0, mInitialTouchY:I

    iget v9, v0, mScrollState:I

    if-ne v9, v8, :cond_12

    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v8

    invoke-interface {v8, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    invoke-direct {v0, v4}, setScrollState(I)V

    :cond_12
    const/4 v8, 0x0

    if-eqz v2, :cond_13

    or-int/lit8 v8, v8, 0x1

    :cond_13
    if-eqz v5, :cond_14

    or-int/lit8 v8, v8, 0x2

    :cond_14
    invoke-virtual {v0, v8}, startNestedScroll(I)Z

    nop

    :goto_2
    iget v8, v0, mScrollState:I

    if-ne v8, v4, :cond_15

    move v3, v4

    :cond_15
    return v3
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, eatRequestLayout()V

    const-string v0, "RV OnLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, dispatchLayout()V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, resumeRequestLayout(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mFirstLayoutComplete:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    iget-boolean v0, p0, mAdapterUpdateDuringMeasure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, eatRequestLayout()V

    invoke-direct {p0}, processAdapterUpdatesAndSetAnimationFlags()V

    iget-object v0, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1600(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, mAdapterHelper:Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/AdapterHelper;->consumeUpdatesInOnePass()V

    iget-object v0, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    :goto_0
    iput-boolean v1, p0, mAdapterUpdateDuringMeasure:Z

    invoke-virtual {p0, v1}, resumeRequestLayout(Z)V

    :cond_1
    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    iget-object v2, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    goto :goto_1

    :cond_2
    iget-object v0, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iput v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->mItemCount:I

    :goto_1
    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_3

    invoke-direct {p0, p1, p2}, defaultOnMeasure(II)V

    goto :goto_2

    :cond_3
    iget-object v2, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v3, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->doMeasure(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;II)V

    :goto_2
    iget-object v0, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$1702(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Z)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iput-object v0, p0, mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v0, p0, mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    iget-object v1, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, mPendingSavedState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;

    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->access$1500(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    :goto_0
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onScrolled(II)V
    .locals 0

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    :cond_0
    invoke-virtual {p0}, invalidateGlows()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, mLayoutFrozen:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1f

    iget-boolean v2, v0, mIgnoreMotionEventTillDown:Z

    if-eqz v2, :cond_0

    goto/16 :goto_9

    :cond_0
    invoke-direct/range {p0 .. p1}, dispatchOnItemTouch(Landroid/view/MotionEvent;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-direct/range {p0 .. p0}, cancelTouch()V

    return v4

    :cond_1
    iget-object v2, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v2, :cond_2

    return v3

    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    iget-object v5, v0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v5

    iget-object v6, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v6, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_3
    const/4 v6, 0x0

    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    if-nez v8, :cond_4

    iget-object v10, v0, mNestedOffsets:[I

    aput v3, v10, v4

    aput v3, v10, v3

    :cond_4
    iget-object v10, v0, mNestedOffsets:[I

    aget v11, v10, v3

    int-to-float v11, v11

    aget v10, v10, v4

    int-to-float v10, v10

    invoke-virtual {v7, v11, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    const/high16 v10, 0x3f000000    # 0.5f

    if-eqz v8, :cond_1b

    if-eq v8, v4, :cond_15

    const/4 v11, 0x2

    if-eq v8, v11, :cond_8

    const/4 v3, 0x3

    if-eq v8, v3, :cond_7

    const/4 v3, 0x5

    if-eq v8, v3, :cond_6

    const/4 v3, 0x6

    if-eq v8, v3, :cond_5

    move/from16 v17, v6

    goto/16 :goto_8

    :cond_5
    invoke-direct/range {p0 .. p1}, onPointerUp(Landroid/view/MotionEvent;)V

    move/from16 v17, v6

    goto/16 :goto_8

    :cond_6
    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, mScrollPointerId:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, mLastTouchX:I

    iput v3, v0, mInitialTouchX:I

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, mLastTouchY:I

    iput v3, v0, mInitialTouchY:I

    move/from16 v17, v6

    goto/16 :goto_8

    :cond_7
    invoke-direct/range {p0 .. p0}, cancelTouch()V

    move/from16 v17, v6

    goto/16 :goto_8

    :cond_8
    iget v11, v0, mScrollPointerId:I

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v11

    if-gez v11, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error processing scroll; pointer index for id "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v0, mScrollPointerId:I

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v10, "RecyclerView"

    invoke-static {v10, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_9
    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v12

    add-float/2addr v12, v10

    float-to-int v12, v12

    invoke-virtual {v1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v13

    add-float/2addr v13, v10

    float-to-int v10, v13

    iget v13, v0, mLastTouchX:I

    sub-int/2addr v13, v12

    iget v14, v0, mLastTouchY:I

    sub-int/2addr v14, v10

    iget-object v15, v0, mScrollConsumed:[I

    iget-object v4, v0, mScrollOffset:[I

    invoke-virtual {v0, v13, v14, v15, v4}, dispatchNestedPreScroll(II[I[I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, v0, mScrollConsumed:[I

    aget v15, v4, v3

    sub-int/2addr v13, v15

    const/4 v15, 0x1

    aget v4, v4, v15

    sub-int/2addr v14, v4

    iget-object v4, v0, mScrollOffset:[I

    move/from16 v17, v6

    aget v6, v4, v3

    int-to-float v6, v6

    aget v4, v4, v15

    int-to-float v4, v4

    invoke-virtual {v7, v6, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    iget-object v4, v0, mNestedOffsets:[I

    aget v6, v4, v3

    iget-object v15, v0, mScrollOffset:[I

    aget v18, v15, v3

    add-int v6, v6, v18

    aput v6, v4, v3

    const/4 v6, 0x1

    aget v16, v4, v6

    aget v15, v15, v6

    add-int v16, v16, v15

    aput v16, v4, v6

    goto :goto_0

    :cond_a
    move/from16 v17, v6

    const/4 v6, 0x1

    :goto_0
    iget v4, v0, mScrollState:I

    if-eq v4, v6, :cond_11

    const/4 v4, 0x0

    if-eqz v2, :cond_c

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v15, v0, mTouchSlop:I

    if-le v6, v15, :cond_c

    if-lez v13, :cond_b

    sub-int/2addr v13, v15

    goto :goto_1

    :cond_b
    add-int/2addr v13, v15

    :goto_1
    const/4 v4, 0x1

    :cond_c
    if-eqz v5, :cond_e

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v15, v0, mTouchSlop:I

    if-le v6, v15, :cond_e

    if-lez v14, :cond_d

    sub-int/2addr v14, v15

    goto :goto_2

    :cond_d
    add-int/2addr v14, v15

    :goto_2
    const/4 v4, 0x1

    :cond_e
    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_f

    const/4 v15, 0x1

    invoke-interface {v6, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_3

    :cond_f
    const/4 v15, 0x1

    :goto_3
    invoke-direct {v0, v15}, setScrollState(I)V

    goto :goto_4

    :cond_10
    const/4 v15, 0x1

    goto :goto_4

    :cond_11
    move v15, v6

    :goto_4
    iget v4, v0, mScrollState:I

    if-ne v4, v15, :cond_14

    iget-object v4, v0, mScrollOffset:[I

    aget v6, v4, v3

    sub-int v6, v12, v6

    iput v6, v0, mLastTouchX:I

    aget v4, v4, v15

    sub-int v4, v10, v4

    iput v4, v0, mLastTouchY:I

    nop

    if-eqz v2, :cond_12

    move v4, v13

    goto :goto_5

    :cond_12
    move v4, v3

    :goto_5
    if-eqz v5, :cond_13

    move v3, v14

    :cond_13
    invoke-virtual {v0, v4, v3, v7}, scrollByInternal(IILandroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual/range {p0 .. p0}, getParent()Landroid/view/ViewParent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_14
    goto/16 :goto_8

    :cond_15
    move/from16 v17, v6

    iget-object v4, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    const/4 v6, 0x1

    iget-object v4, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v10, 0x3e8

    iget v11, v0, mMaxFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v4, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    const/4 v4, 0x0

    if-eqz v2, :cond_16

    iget-object v10, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    iget v11, v0, mScrollPointerId:I

    invoke-virtual {v10, v11}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v10

    neg-float v10, v10

    goto :goto_6

    :cond_16
    move v10, v4

    :goto_6
    if-eqz v5, :cond_17

    iget-object v11, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    iget v12, v0, mScrollPointerId:I

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v11

    neg-float v11, v11

    goto :goto_7

    :cond_17
    move v11, v4

    :goto_7
    cmpl-float v12, v10, v4

    if-nez v12, :cond_18

    cmpl-float v4, v11, v4

    if-eqz v4, :cond_19

    :cond_18
    float-to-int v4, v10

    float-to-int v12, v11

    invoke-virtual {v0, v4, v12}, fling(II)Z

    move-result v4

    if-nez v4, :cond_1a

    :cond_19
    invoke-direct {v0, v3}, setScrollState(I)V

    :cond_1a
    invoke-direct/range {p0 .. p0}, resetTouch()V

    move/from16 v17, v6

    goto :goto_8

    :cond_1b
    move/from16 v17, v6

    invoke-virtual {v1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, v0, mScrollPointerId:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, mLastTouchX:I

    iput v3, v0, mInitialTouchX:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v3, v10

    float-to-int v3, v3

    iput v3, v0, mLastTouchY:I

    iput v3, v0, mInitialTouchY:I

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    or-int/lit8 v3, v3, 0x1

    :cond_1c
    if-eqz v5, :cond_1d

    or-int/lit8 v3, v3, 0x2

    :cond_1d
    invoke-virtual {v0, v3}, startNestedScroll(I)Z

    nop

    :goto_8
    if-nez v17, :cond_1e

    iget-object v3, v0, mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_1e
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    const/4 v3, 0x1

    return v3

    :cond_1f
    :goto_9
    return v3
.end method

.method rebindUpdatedViewHolders()V
    .locals 6

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->needsUpdate()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget v4, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemViewType(I)I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v4

    if-ne v4, v3, :cond_4

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isChanged()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, supportsChangeAnimations()Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, requestLayout()V

    goto :goto_3

    :cond_3
    :goto_1
    iget-object v4, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    iget v5, v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v4, v2, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->bindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, requestLayout()V

    goto :goto_4

    :cond_5
    :goto_2
    invoke-virtual {p0}, requestLayout()V

    :cond_6
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-void
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .locals 4

    invoke-static {p1}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    invoke-direct {p0, p1}, dispatchChildDetached(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    return-void
.end method

.method public removeItemDecoration(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemDecoration;)V
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, setWillNotDraw(Z)V

    :cond_2
    invoke-virtual {p0}, markItemDecorInsetsDirty()V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method public removeOnChildAttachStateChangeListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnChildAttachStateChangeListener;)V
    .locals 1

    iget-object v0, p0, mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeOnItemTouchListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;)V
    .locals 1

    iget-object v0, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, mActiveOnItemTouchListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    :cond_0
    return-void
.end method

.method public removeOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->onRequestChildFocus(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v0, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    iget-boolean v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, mTempRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    :cond_0
    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v1}, offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v1}, offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, mFirstLayoutComplete:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, p1, v1, v2}, requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 1

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 3

    iget-object v0, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;

    invoke-interface {v2, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, mEatRequestLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, mLayoutFrozen:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, mLayoutRequestEaten:Z

    :goto_0
    return-void
.end method

.method resumeRequestLayout(Z)V
    .locals 2

    iget-boolean v0, p0, mEatRequestLayout:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, mLayoutRequestEaten:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, mLayoutFrozen:Z

    if-nez v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, dispatchLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mEatRequestLayout:Z

    iget-boolean v1, p0, mLayoutFrozen:Z

    if-nez v1, :cond_1

    iput-boolean v0, p0, mLayoutRequestEaten:Z

    :cond_1
    return-void
.end method

.method saveOldPositions()V
    .locals 4

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->saveOldPosition()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public scrollBy(II)V
    .locals 5

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, mLayoutFrozen:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    iget-object v1, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    if-nez v0, :cond_2

    if-eqz v1, :cond_5

    :cond_2
    const/4 v2, 0x0

    if-eqz v0, :cond_3

    move v3, p1

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    if-eqz v1, :cond_4

    move v2, p2

    :cond_4
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v2, v4}, scrollByInternal(IILandroid/view/MotionEvent;)Z

    :cond_5
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;)Z
    .locals 19

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct/range {p0 .. p0}, consumePendingUpdateOperations()V

    iget-object v4, v6, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v4, :cond_9

    invoke-virtual/range {p0 .. p0}, eatRequestLayout()V

    invoke-direct/range {p0 .. p0}, onEnterLayoutOrScroll()V

    const-string v4, "RV Scroll"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v7, :cond_0

    iget-object v4, v6, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v5, v6, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v11, v6, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v7, v5, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v2

    sub-int v0, v7, v2

    :cond_0
    if-eqz v8, :cond_1

    iget-object v4, v6, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iget-object v5, v6, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    iget-object v11, v6, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v4, v8, v5, v11}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollVerticallyBy(ILcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)I

    move-result v3

    sub-int v1, v8, v3

    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    invoke-direct/range {p0 .. p0}, supportsChangeAnimations()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v6, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    iget-object v11, v6, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v11, v5}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v6, v11}, getChildViewHolder(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v12

    if-eqz v12, :cond_6

    iget-object v13, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v13, :cond_6

    iget-object v13, v12, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mShadowingHolder:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    if-eqz v13, :cond_2

    iget-object v14, v13, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_1

    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-eqz v14, :cond_5

    invoke-virtual {v11}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v10

    move/from16 v16, v0

    invoke-virtual {v14}, Landroid/view/View;->getLeft()I

    move-result v0

    if-ne v15, v0, :cond_4

    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v0

    if-eq v10, v0, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v18, v1

    goto :goto_3

    :cond_4
    :goto_2
    nop

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v15

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v17

    move/from16 v18, v1

    add-int v1, v10, v17

    invoke-virtual {v14, v15, v10, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    :cond_5
    move/from16 v16, v0

    move/from16 v18, v1

    goto :goto_3

    :cond_6
    move/from16 v16, v0

    move/from16 v18, v1

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v16

    move/from16 v1, v18

    goto :goto_0

    :cond_7
    move/from16 v16, v0

    move/from16 v18, v1

    goto :goto_4

    :cond_8
    move/from16 v16, v0

    move/from16 v18, v1

    :goto_4
    invoke-direct/range {p0 .. p0}, onExitLayoutOrScroll()V

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, resumeRequestLayout(Z)V

    move v12, v2

    move v13, v3

    move/from16 v10, v16

    move/from16 v11, v18

    goto :goto_5

    :cond_9
    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    :goto_5
    iget-object v0, v6, mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual/range {p0 .. p0}, invalidate()V

    :cond_a
    iget-object v5, v6, mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v10

    move v4, v11

    invoke-virtual/range {v0 .. v5}, dispatchNestedScroll(IIII[I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iget v0, v6, mLastTouchX:I

    iget-object v2, v6, mScrollOffset:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    sub-int/2addr v0, v4

    iput v0, v6, mLastTouchX:I

    iget v0, v6, mLastTouchY:I

    aget v4, v2, v1

    sub-int/2addr v0, v4

    iput v0, v6, mLastTouchY:I

    if-eqz v9, :cond_b

    aget v0, v2, v3

    int-to-float v0, v0

    aget v2, v2, v1

    int-to-float v2, v2

    invoke-virtual {v9, v0, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_b
    iget-object v0, v6, mNestedOffsets:[I

    aget v2, v0, v3

    iget-object v4, v6, mScrollOffset:[I

    aget v5, v4, v3

    add-int/2addr v2, v5

    aput v2, v0, v3

    aget v2, v0, v1

    aget v4, v4, v1

    add-int/2addr v2, v4

    aput v2, v0, v1

    goto :goto_6

    :cond_c
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, getOverScrollMode()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    if-eqz v9, :cond_d

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    int-to-float v2, v10

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    int-to-float v5, v11

    invoke-direct {v6, v0, v2, v4, v5}, pullGlows(FFFF)V

    :cond_d
    invoke-direct/range {p0 .. p2}, considerReleasingGlowsOnScroll(II)V

    :cond_e
    :goto_6
    if-nez v12, :cond_f

    if-eqz v13, :cond_10

    :cond_f
    invoke-virtual {v6, v12, v13}, dispatchOnScrolled(II)V

    :cond_10
    invoke-virtual/range {p0 .. p0}, awakenScrollBars()Z

    move-result v0

    if-nez v0, :cond_11

    invoke-virtual/range {p0 .. p0}, invalidate()V

    :cond_11
    if-nez v12, :cond_13

    if-eqz v13, :cond_12

    goto :goto_7

    :cond_12
    move v1, v3

    :cond_13
    :goto_7
    return v1
.end method

.method public scrollTo(II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "RecyclerView does not support scrolling to an absolute position."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public scrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, mLayoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, stopScroll()V

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->scrollToPosition(I)V

    invoke-virtual {p0}, awakenScrollBars()Z

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-virtual {p0, p1}, shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAccessibilityDelegateCompat(Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;)V
    .locals 1

    iput-object p1, p0, mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    iget-object v0, p0, mAccessibilityDelegate:Lcom/oneplus/lib/widget/recyclerview/RecyclerViewAccessibilityDelegate;

    invoke-virtual {p0, v0}, setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setLayoutFrozen(Z)V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, setAdapterInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;ZZ)V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method public setChildDrawingOrderCallback(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;)V
    .locals 1

    iget-object v0, p0, mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    iget-object v0, p0, mChildDrawingOrderCallback:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, setChildrenDrawingOrderEnabled(Z)V

    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1

    iget-boolean v0, p0, mClipToPadding:Z

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, invalidateGlows()V

    :cond_0
    iput-boolean p1, p0, mClipToPadding:Z

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    iget-boolean v0, p0, mFirstLayoutComplete:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, requestLayout()V

    :cond_1
    return-void
.end method

.method public setHasFixedSize(Z)V
    .locals 0

    iput-boolean p1, p0, mHasFixedSize:Z

    return-void
.end method

.method public setItemAnimator(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;)V
    .locals 2

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->endAnimations()V

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_0
    iput-object p1, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    iget-object v0, p0, mItemAnimator:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_1

    iget-object v1, p0, mItemAnimatorListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator;->setListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    :cond_1
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .locals 1

    iget-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setViewCacheSize(I)V

    return-void
.end method

.method public setLayoutFrozen(Z)V
    .locals 11

    iget-boolean v0, p0, mLayoutFrozen:Z

    if-eq p1, v0, :cond_2

    const-string v0, "Do not setLayoutFrozen in layout or scroll"

    invoke-virtual {p0, v0}, assertNotInLayoutOrScroll(Ljava/lang/String;)V

    if-nez p1, :cond_1

    iput-boolean p1, p0, mLayoutFrozen:Z

    iget-boolean v0, p0, mLayoutRequestEaten:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, mAdapter:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, requestLayout()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, mLayoutRequestEaten:Z

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean p1, p0, mLayoutFrozen:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, mIgnoreMotionEventTillDown:Z

    invoke-virtual {p0}, stopScroll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V
    .locals 3

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, p0, mIsAttached:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;)V

    :cond_1
    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    :cond_2
    iget-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->clear()V

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->removeAllViewsUnfiltered()V

    iput-object p1, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-nez v0, :cond_3

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->setRecyclerView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    iget-boolean v0, p0, mIsAttached:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is already attached to a RecyclerView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_0
    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method public setNestedScrollingEnabled(Z)V
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, mScrollListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V
    .locals 1

    iget-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setRecycledViewPool(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;)V

    return-void
.end method

.method public setRecyclerListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;)V
    .locals 0

    iput-object p1, p0, mRecyclerListener:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecyclerListener;

    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .locals 3

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, mTouchSlop:I

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, mTouchSlop:I

    nop

    :goto_1
    return-void
.end method

.method public setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V
    .locals 1

    iget-object v0, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->setViewCacheExtension(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewCacheExtension;)V

    return-void
.end method

.method shouldDeferAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-virtual {p0}, isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    iget v1, p0, mEatenAccessibilityChangeFlags:I

    or-int/2addr v1, v0

    iput v1, p0, mEatenAccessibilityChangeFlags:I

    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public smoothScrollBy(II)V
    .locals 2

    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_0

    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v1, p0, mLayoutFrozen:Z

    if-eqz v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x0

    :cond_2
    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p2, 0x0

    :cond_3
    if-nez p1, :cond_4

    if-eqz p2, :cond_5

    :cond_4
    iget-object v0, p0, mViewFlinger:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    :cond_5
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 2

    iget-boolean v0, p0, mLayoutFrozen:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mLayout:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    if-nez v0, :cond_1

    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->smoothScrollToPosition(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)V

    return-void
.end method

.method public startNestedScroll(I)Z
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public stopNestedScroll()V
    .locals 1

    iget-object v0, p0, mScrollingChildHelper:Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/NestedScrollingChildHelper;->stopNestedScroll()V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, setScrollState(I)V

    invoke-direct {p0}, stopScrollersInternal()V

    return-void
.end method

.method public swapAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, setLayoutFrozen(Z)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, setAdapterInternal(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;ZZ)V

    invoke-direct {p0}, setDataSetChangedAfterLayout()V

    invoke-virtual {p0}, requestLayout()V

    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .locals 7

    iget-object v0, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    add-int v1, p1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    iget-object v3, p0, mChildHelper:Lcom/oneplus/lib/widget/recyclerview/ChildHelper;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/widget/recyclerview/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, getChildViewHolderInt(Landroid/view/View;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_2

    iget v5, v4, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_2

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    invoke-virtual {v4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    invoke-direct {p0}, supportsChangeAnimations()Z

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->addFlags(I)V

    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutParams;->mInsetsDirty:Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, mRecycler:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Recycler;->viewRangeUpdate(II)V

    return-void
.end method
