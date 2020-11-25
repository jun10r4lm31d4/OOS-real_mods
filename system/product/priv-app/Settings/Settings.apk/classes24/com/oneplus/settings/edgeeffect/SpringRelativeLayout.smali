.class public Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "SpringRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;,
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;,
        Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;
    }
.end annotation


# static fields
.field private static final DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/dynamicanimation/animation/FloatPropertyCompat<",
            "Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private static final DAMPING_RATIO:F = 0.5f

.field private static final STIFFNESS:F = 590.0f

.field private static final VELOCITY_MULTIPLIER:F = 0.3f


# instance fields
.field private mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

.field private mDampedScrollShift:F

.field private mDistance:F

.field private mHorizontal:Z

.field private mPullCount:I

.field private mReadyToGo:Z

.field private final mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

.field protected final mSpringViews:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;

    const-string v1, "value"

    invoke-direct {v0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;-><init>(Ljava/lang/String;)V

    sput-object v0, DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

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
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mReadyToGo:Z

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v0, 0x0

    iput v0, p0, mDampedScrollShift:F

    const/4 v1, 0x0

    iput-boolean v1, p0, mHorizontal:Z

    iput v0, p0, mDistance:F

    iput v1, p0, mPullCount:I

    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object v2, DAMPED_SCROLL:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    invoke-direct {v1, p0, v2, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    iput-object v1, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v2, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;-><init>(F)V

    const v0, 0x44138000    # 590.0f

    invoke-virtual {v2, v0}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F
    .locals 1

    iget v0, p0, mDampedScrollShift:F

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)V
    .locals 0

    invoke-direct {p0, p1}, finishScrollWithVelocity(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)F
    .locals 1

    iget v0, p0, mDistance:F

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F
    .locals 0

    iput p1, p0, mDistance:F

    return p1
.end method

.method static synthetic access$316(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;F)F
    .locals 1

    iget v0, p0, mDistance:F

    add-float/2addr v0, p1

    iput v0, p0, mDistance:F

    return v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Landroidx/dynamicanimation/animation/SpringAnimation;
    .locals 1

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;I)I
    .locals 0

    iput p1, p0, mPullCount:I

    return p1
.end method

.method static synthetic access$508(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)I
    .locals 2

    iget v0, p0, mPullCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, mPullCount:I

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 0

    invoke-direct {p0, p1}, setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;)Z
    .locals 1

    iget-boolean v0, p0, mHorizontal:Z

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Z)Z
    .locals 0

    iput-boolean p1, p0, mReadyToGo:Z

    return p1
.end method

.method private finishScrollWithVelocity(F)V
    .locals 2

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartVelocity(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget v1, p0, mDampedScrollShift:F

    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setStartValue(F)Landroidx/dynamicanimation/animation/DynamicAnimation;

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    return-void
.end method

.method private setActiveEdge(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;)V
    .locals 1

    iget-object v0, p0, mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    iput-object p1, p0, mActiveEdge:Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffect;

    return-void
.end method


# virtual methods
.method public addSpringView(I)V
    .locals 2

    iget-object v0, p0, mSpringViews:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    return-void
.end method

.method public createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, createEdgeEffectFactory(Z)Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object v0

    return-object v0
.end method

.method public createEdgeEffectFactory(Z)Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .locals 2

    iput-boolean p1, p0, mHorizontal:Z

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$SpringEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;)V

    return-object v0
.end method

.method public createViewEdgeEffectFactory()Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, createViewEdgeEffectFactory(Z)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    move-result-object v0

    return-object v0
.end method

.method public createViewEdgeEffectFactory(Z)Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;
    .locals 2

    iput-boolean p1, p0, mHorizontal:Z

    new-instance v0, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$ViewEdgeEffectFactory;-><init>(Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout;Lcom/oneplus/settings/edgeeffect/SpringRelativeLayout$1;)V

    return-object v0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 6

    iget v0, p0, mDampedScrollShift:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-boolean v2, p0, mHorizontal:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, getCanvasClipLeftForOverscroll()I

    move-result v2

    invoke-virtual {p0}, getWidth()I

    move-result v4

    invoke-virtual {p0}, getHeight()I

    move-result v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v2, p0, mDampedScrollShift:F

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, getCanvasClipTopForOverscroll()I

    move-result v2

    invoke-virtual {p0}, getWidth()I

    move-result v4

    invoke-virtual {p0}, getHeight()I

    move-result v5

    invoke-virtual {p1, v3, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget v2, p0, mDampedScrollShift:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishWithShiftAndVelocity(FFLandroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1

    invoke-virtual {p0, p1}, setDampedScrollShift(F)V

    iget-object v0, p0, mSpring:Landroidx/dynamicanimation/animation/SpringAnimation;

    invoke-virtual {v0, p3}, Landroidx/dynamicanimation/animation/SpringAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)Landroidx/dynamicanimation/animation/DynamicAnimation;

    invoke-direct {p0, p2}, finishScrollWithVelocity(F)V

    return-void
.end method

.method public getCanvasClipLeftForOverscroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCanvasClipTopForOverscroll()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRecyclerViewScrolled()V
    .locals 2

    iget v0, p0, mPullCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, mDistance:F

    const/4 v1, 0x0

    iput v1, p0, mPullCount:I

    invoke-direct {p0, v0}, finishScrollWithVelocity(F)V

    return-void
.end method

.method public removeSpringView(I)V
    .locals 1

    iget-object v0, p0, mSpringViews:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    invoke-virtual {p0}, invalidate()V

    return-void
.end method

.method protected setDampedScrollShift(F)V
    .locals 1

    iget v0, p0, mDampedScrollShift:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, mDampedScrollShift:F

    invoke-virtual {p0}, invalidate()V

    :cond_0
    return-void
.end method
