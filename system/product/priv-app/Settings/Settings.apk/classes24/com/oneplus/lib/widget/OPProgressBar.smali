.class public Lcom/oneplus/lib/widget/OPProgressBar;
.super Landroid/view/View;
.source "OPProgressBar.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;,
        Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;,
        Lcom/oneplus/lib/widget/OPProgressBar$SavedState;,
        Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;,
        Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710

.field private static final PROGRESS_ANIM_DURATION:I = 0x50

.field private static final PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

.field private static final TIMEOUT_SEND_ACCESSIBILITY_EVENT:I = 0xc8


# instance fields
.field private final VISUAL_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/oneplus/lib/widget/OPProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field private mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

.field private mAggregatedIsVisible:Z

.field private mAnimation:Landroid/view/animation/AlphaAnimation;

.field private mAttached:Z

.field private mBehavior:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mDuration:I

.field private mHasAnimation:Z

.field private mInDrawing:Z

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMax:I

.field mMaxHeight:I

.field mMaxWidth:I

.field mMinHeight:I

.field mMinWidth:I

.field mMirrorForRtl:Z

.field private mNoInvalidate:Z

.field private mOnlyIndeterminate:Z

.field protected mPaddingBottom:I

.field protected mPaddingLeft:I

.field protected mPaddingRight:I

.field protected mPaddingTop:I

.field private mProgress:I

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

.field private final mRefreshData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;",
            ">;"
        }
    .end annotation
.end field

.field private mRefreshIsPosted:Z

.field private mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

.field mSampleTile:Landroid/graphics/Bitmap;

.field private mSecondaryProgress:I

.field private mShouldStartAnimationDrawable:Z

.field private mTransformation:Landroid/view/animation/Transformation;

.field private mUiThreadId:J

.field private mVisualProgress:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

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

    const v0, 0x1010077

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mMirrorForRtl:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, mRefreshData:Ljava/util/ArrayList;

    new-instance v1, Lcom/oneplus/lib/widget/OPProgressBar$1;

    const-string v2, "visual_progress"

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/OPProgressBar$1;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Ljava/lang/String;)V

    iput-object v1, p0, VISUAL_PROGRESS:Landroid/util/FloatProperty;

    invoke-virtual {p0}, getPaddingRight()I

    move-result v1

    iput v1, p0, mPaddingRight:I

    invoke-virtual {p0}, getPaddingTop()I

    move-result v1

    iput v1, p0, mPaddingTop:I

    invoke-virtual {p0}, getPaddingLeft()I

    move-result v1

    iput v1, p0, mPaddingLeft:I

    invoke-virtual {p0}, getPaddingBottom()I

    move-result v1

    iput v1, p0, mPaddingBottom:I

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    iput-wide v1, p0, mUiThreadId:J

    invoke-direct {p0}, initProgressBar()V

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, mNoInvalidate:Z

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressDrawable:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {v3}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v3}, setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3}, setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateDuration:I

    iget v5, p0, mDuration:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, mDuration:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_minWidth:I

    iget v5, p0, mMinWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mMinWidth:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_maxWidth:I

    iget v5, p0, mMaxWidth:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mMaxWidth:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_minHeight:I

    iget v5, p0, mMinHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mMinHeight:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_maxHeight:I

    iget v5, p0, mMaxHeight:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, mMaxHeight:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateBehavior:I

    iget v5, p0, mBehavior:I

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, mBehavior:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_interpolator:I

    const v5, 0x10a000b

    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p0, p1, v4}, setInterpolator(Landroid/content/Context;I)V

    :cond_2
    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_max:I

    iget v6, p0, mMax:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, setMax(I)V

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progress:I

    iget v6, p0, mProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, setProgress(I)V

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgress:I

    iget v6, p0, mSecondaryProgress:I

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    invoke-virtual {p0, v5}, setSecondaryProgress(I)V

    sget v5, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateDrawable:I

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-static {v5}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p0, v5}, setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v5}, setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    :goto_1
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateOnly:I

    iget-boolean v7, p0, mOnlyIndeterminate:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, p0, mOnlyIndeterminate:Z

    iput-boolean v0, p0, mNoInvalidate:Z

    iget-boolean v6, p0, mOnlyIndeterminate:Z

    if-nez v6, :cond_5

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminate:I

    iget-boolean v7, p0, mIndeterminate:Z

    invoke-virtual {v1, v6, v7}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    move v0, v2

    :cond_6
    invoke-virtual {p0, v0}, setIndeterminate(Z)V

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_mirrorForRtl:I

    iget-boolean v6, p0, mMirrorForRtl:Z

    invoke-virtual {v1, v0, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, mMirrorForRtl:Z

    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_7

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_7
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    :cond_8
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_9

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_9
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    :cond_a
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_b

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_b
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    :cond_c
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_d

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_d
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_progressBackgroundTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    :cond_e
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_f

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_f
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    invoke-static {v8, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    :cond_10
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_11

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_11
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_secondaryProgressTint:I

    invoke-virtual {v1, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    :cond_12
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_13

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_13
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v8, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTintMode:I

    invoke-virtual {v1, v8, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-static {v6, v7}, Lcom/oneplus/lib/util/DrawableUtils;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    :cond_14
    sget v0, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTint:I

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_15

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_15
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPProgressBar_android_indeterminateTint:I

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-boolean v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    :cond_16
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, applyProgressTints()V

    invoke-direct {p0}, applyIndeterminateTint()V

    invoke-virtual {p0}, getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_17

    invoke-virtual {p0, v2}, setImportantForAccessibility(I)V

    :cond_17
    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, mRefreshData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/OPProgressBar;IIZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, doRefreshProgress(IIZZZ)V

    return-void
.end method

.method static synthetic access$302(Lcom/oneplus/lib/widget/OPProgressBar;Z)Z
    .locals 0

    iput-boolean p1, p0, mRefreshIsPosted:Z

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/lib/widget/OPProgressBar;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, setVisualProgress(IF)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/lib/widget/OPProgressBar;)F
    .locals 1

    iget v0, p0, mVisualProgress:F

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/lib/widget/OPProgressBar;F)F
    .locals 0

    iput p1, p0, mVisualProgress:F

    return p1
.end method

.method private applyIndeterminateTint()V
    .locals 3

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_3

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_3

    :cond_0
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyPrimaryProgressTint()V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x102000d

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressBackgroundTint()V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    const/high16 v0, 0x1020000

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private applyProgressTints()V
    .locals 1

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    invoke-direct {p0}, applyPrimaryProgressTint()V

    invoke-direct {p0}, applyProgressBackgroundTint()V

    invoke-direct {p0}, applySecondaryProgressTint()V

    :cond_0
    return-void
.end method

.method private applySecondaryProgressTint()V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-nez v0, :cond_0

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v0, :cond_3

    :cond_0
    const v0, 0x102000f

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, getTintTarget(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-boolean v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iget-object v1, v1, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private declared-synchronized doRefreshProgress(IIZZZ)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget v0, p0, mMax:I

    if-lez v0, :cond_0

    int-to-float v0, p2

    iget v1, p0, mMax:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const v1, 0x102000d

    if-ne p1, v1, :cond_1

    if-eqz p5, :cond_1

    iget-object v2, p0, VISUAL_PROGRESS:Landroid/util/FloatProperty;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {p0, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    const-wide/16 v3, 0x50

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v3, PROGRESS_ANIM_INTERPOLATOR:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1, v0}, setVisualProgress(IF)V

    :goto_1
    if-eqz p4, :cond_2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v0, p3, p2}, onProgressRefresh(FZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getTintTarget(IZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    if-eqz p2, :cond_1

    if-nez v0, :cond_1

    move-object v0, v1

    :cond_1
    return-object v0
.end method

.method private initProgressBar()V
    .locals 2

    const/16 v0, 0x64

    iput v0, p0, mMax:I

    const/4 v0, 0x0

    iput v0, p0, mProgress:I

    iput v0, p0, mSecondaryProgress:I

    iput-boolean v0, p0, mIndeterminate:Z

    iput-boolean v0, p0, mOnlyIndeterminate:Z

    const/16 v0, 0xfa0

    iput v0, p0, mDuration:I

    const/4 v0, 0x1

    iput v0, p0, mBehavior:I

    const/16 v0, 0x18

    iput v0, p0, mMinWidth:I

    const/16 v1, 0x30

    iput v1, p0, mMaxWidth:I

    iput v0, p0, mMinHeight:I

    iput v1, p0, mMaxHeight:I

    return-void
.end method

.method private static needsTileify(Landroid/graphics/drawable/Drawable;)Z
    .locals 6

    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-static {v5}, needsTileify(Landroid/graphics/drawable/Drawable;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    instance-of v0, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private declared-synchronized refreshProgress(IIZZ)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, mUiThreadId:J

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, doRefreshProgress(IIZZZ)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->obtain(IIZZ)Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    move-result-object v0

    iget-object v1, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, mAttached:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, mRefreshIsPosted:Z

    if-nez v1, :cond_2

    iget-object v1, p0, mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    invoke-virtual {p0, v1}, post(Ljava/lang/Runnable;)Z

    const/4 v1, 0x1

    iput-boolean v1, p0, mRefreshIsPosted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private scheduleAccessibilityEventSender()V
    .locals 3

    iget-object v0, p0, mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    :goto_0
    iget-object v0, p0, mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    const-wide/16 v1, 0xc8

    invoke-virtual {p0, v0, v1, v2}, postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setVisualProgress(IF)V
    .locals 4

    iput p2, p0, mVisualProgress:F

    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, canResolveLayoutDirection()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    const v2, 0x461c4000    # 10000.0f

    mul-float/2addr v2, p2

    float-to-int v2, v2

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, invalidate()V

    :goto_1
    invoke-virtual {p0, p1, p2}, onVisualProgressChanged(IF)V

    return-void
.end method

.method private swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, v1, :cond_2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    iget-object v2, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, getWindowVisibility()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, isShown()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-virtual {v2, v3, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method private tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;
    .locals 8

    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    new-array v3, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const v7, 0x102000d

    if-eq v5, v7, :cond_1

    const v7, 0x102000f

    if-ne v5, v7, :cond_0

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    move v7, v1

    :goto_2
    invoke-direct {p0, v6, v7}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    aput-object v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setId(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerGravity(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerWidth(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerWidth(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerHeight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerHeight(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetLeft(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetLeft(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetRight(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetRight(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetTop(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetTop(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetBottom(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetBottom(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetStart(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetStart(II)V

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/LayerDrawable;->getLayerInsetEnd(I)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/drawable/LayerDrawable;->setLayerInsetEnd(II)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    return-object v1

    :cond_4
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_7

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, mSampleTile:Landroid/graphics/Bitmap;

    if-nez v3, :cond_5

    iput-object v2, p0, mSampleTile:Landroid/graphics/Bitmap;

    :cond_5
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v4, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v5, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeXY(Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    if-eqz p2, :cond_6

    new-instance v4, Landroid/graphics/drawable/ClipDrawable;

    const/4 v5, 0x3

    invoke-direct {v4, v3, v5, v1}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    return-object v4

    :cond_6
    return-object v3

    :cond_7
    return-object p1
.end method

.method private tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    instance-of v0, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v1

    new-instance v2, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isOneShot()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x2710

    if-ge v3, v1, :cond_0

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getFrame(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v4

    invoke-virtual {v2, v5, v4}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/graphics/drawable/AnimationDrawable;->setLevel(I)Z

    move-object p1, v2

    :cond_1
    return-object p1
.end method

.method private updateDrawableBounds(II)V
    .locals 10

    iget v0, p0, mPaddingRight:I

    iget v1, p0, mPaddingLeft:I

    add-int/2addr v0, v1

    sub-int/2addr p1, v0

    iget v0, p0, mPaddingTop:I

    iget v1, p0, mPaddingBottom:I

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    move v0, p1

    move v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-boolean v5, p0, mOnlyIndeterminate:Z

    if-eqz v5, :cond_1

    instance-of v5, v4, Landroid/graphics/drawable/AnimationDrawable;

    if-nez v5, :cond_1

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v6, v4

    int-to-float v7, v5

    div-float/2addr v6, v7

    int-to-float v7, p1

    int-to-float v8, p2

    div-float/2addr v7, v8

    cmpl-float v8, v6, v7

    if-eqz v8, :cond_1

    cmpl-float v8, v7, v6

    if-lez v8, :cond_0

    int-to-float v8, p2

    mul-float/2addr v8, v6

    float-to-int v8, v8

    sub-int v9, p1, v8

    div-int/lit8 v3, v9, 0x2

    add-int v0, v3, v8

    goto :goto_0

    :cond_0
    int-to-float v8, p1

    const/high16 v9, 0x3f800000    # 1.0f

    div-float/2addr v9, v6

    mul-float/2addr v8, v9

    float-to-int v8, v8

    sub-int v9, p2, v8

    div-int/lit8 v9, v9, 0x2

    add-int v1, v9, v8

    move v2, v9

    :cond_1
    :goto_0
    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, mMirrorForRtl:Z

    if-eqz v4, :cond_2

    move v4, v3

    sub-int v3, p1, v0

    sub-int v0, p1, v4

    :cond_2
    iget-object v4, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v4, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_4

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    return-void
.end method

.method private updateDrawableState()V
    .locals 5

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    :cond_0
    iget-object v3, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v4

    or-int/2addr v1, v4

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, invalidate()V

    :cond_2
    return-void
.end method


# virtual methods
.method drawTrack(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    invoke-virtual {p0}, isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, mMirrorForRtl:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, getWidth()I

    move-result v2

    iget v3, p0, mPaddingRight:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_0

    :cond_0
    iget v2, p0, mPaddingLeft:I

    int-to-float v2, v2

    iget v3, p0, mPaddingTop:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_0
    invoke-virtual {p0}, getDrawingTime()J

    move-result-wide v2

    iget-boolean v4, p0, mHasAnimation:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v6, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4, v2, v3, v6}, Landroid/view/animation/AlphaAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    iget-object v4, p0, mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/4 v6, 0x1

    :try_start_0
    iput-boolean v6, p0, mInDrawing:Z

    const v6, 0x461c4000    # 10000.0f

    mul-float/2addr v6, v4

    float-to-int v6, v6

    invoke-virtual {v0, v6}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v5, p0, mInDrawing:Z

    nop

    invoke-virtual {p0}, postInvalidateOnAnimation()V

    goto :goto_1

    :catchall_0
    move-exception v6

    iput-boolean v5, p0, mInDrawing:Z

    throw v6

    :cond_1
    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget-boolean v4, p0, mShouldStartAnimationDrawable:Z

    if-eqz v4, :cond_2

    instance-of v4, v0, Landroid/graphics/drawable/Animatable;

    if-eqz v4, :cond_2

    move-object v4, v0

    check-cast v4, Landroid/graphics/drawable/Animatable;

    invoke-interface {v4}, Landroid/graphics/drawable/Animatable;->start()V

    iput-boolean v5, p0, mShouldStartAnimationDrawable:Z

    :cond_2
    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_0
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    invoke-direct {p0}, updateDrawableState()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCurrentDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getDrawableShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    return-object v1

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data
.end method

.method public getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIndeterminateTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndeterminateTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public declared-synchronized getMax()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, mMax:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, mProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getProgressBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getSecondaryProgress()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, mSecondaryProgress:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSecondaryProgressTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getSecondaryProgressTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final declared-synchronized incrementProgressBy(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, mProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized incrementSecondaryProgressBy(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, mSecondaryProgress:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, setSecondaryProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    iget-boolean v0, p0, mInDrawing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, getScrollX()I

    move-result v1

    iget v2, p0, mPaddingLeft:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, getScrollY()I

    move-result v2

    iget v3, p0, mPaddingTop:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v2

    iget v5, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v1

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v2

    invoke-virtual {p0, v3, v4, v5, v6}, invalidate(IIII)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public declared-synchronized isIndeterminate()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "progress"
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 9

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, startAnimation()V

    :cond_0
    iget-object v0, p0, mRefreshData:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    iget v4, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iget v5, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iget-boolean v6, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    const/4 v7, 0x1

    iget-boolean v8, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->animate:Z

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, doRefreshProgress(IIZZZ)V

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->recycle()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, mRefreshData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, mAttached:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, stopAnimation()V

    :cond_0
    iget-object v0, p0, mRefreshProgressRunnable:Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    iput-boolean v1, p0, mRefreshIsPosted:Z

    :cond_1
    iget-object v0, p0, mAccessibilityEventSender:Lcom/oneplus/lib/widget/OPProgressBar$AccessibilityEventSender;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    iput-boolean v1, p0, mAttached:Z

    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, drawTrack(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    iget v3, p0, mMinWidth:I

    iget v4, p0, mMaxWidth:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    iget v3, p0, mMinHeight:I

    iget v4, p0, mMaxHeight:I

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v1, v3

    :cond_0
    invoke-direct {p0}, updateDrawableState()V

    iget v3, p0, mPaddingLeft:I

    iget v4, p0, mPaddingRight:I

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    iget v3, p0, mPaddingTop:I

    iget v4, p0, mPaddingBottom:I

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v0, p1, v3}, resolveSizeAndState(III)I

    move-result v4

    invoke-static {v1, p2, v3}, resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v4, v3}, setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method onProgressRefresh(FZI)V
    .locals 0

    return-void
.end method

.method public onResolveDrawables(I)V
    .locals 2

    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_0
    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_1
    iget-object v1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->progress:I

    invoke-virtual {p0, v1}, setProgress(I)V

    iget v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->secondaryProgress:I

    invoke-virtual {p0, v1}, setSecondaryProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    new-instance v1, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v2, p0, mProgress:I

    iput v2, v1, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->progress:I

    iget v2, p0, mSecondaryProgress:I

    iput v2, v1, Lcom/oneplus/lib/widget/OPProgressBar$SavedState;->secondaryProgress:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, updateDrawableBounds(II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .locals 2

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-boolean v0, p0, mAggregatedIsVisible:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, mAggregatedIsVisible:Z

    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, startAnimation()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, stopAnimation()V

    :cond_1
    :goto_0
    iget-object v0, p0, mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method onVisualProgressChanged(IF)V
    .locals 0

    return-void
.end method

.method public postInvalidate()V
    .locals 1

    iget-boolean v0, p0, mNoInvalidate:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public declared-synchronized setIndeterminate(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mOnlyIndeterminate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, mIndeterminate:Z

    if-nez v0, :cond_2

    :cond_0
    iget-boolean v0, p0, mIndeterminate:Z

    if-eq p1, v0, :cond_2

    iput-boolean p1, p0, mIndeterminate:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, startAnimation()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, stopAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, applyIndeterminateTint()V

    :cond_2
    iget-boolean v0, p0, mIndeterminate:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, postInvalidate()V

    :cond_3
    return-void
.end method

.method public setIndeterminateDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, tileifyIndeterminate(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setIndeterminateTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTint:Z

    invoke-direct {p0}, applyIndeterminateTint()V

    return-void
.end method

.method public setIndeterminateTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mIndeterminateTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasIndeterminateTintMode:Z

    invoke-direct {p0}, applyIndeterminateTint()V

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {p0, v0}, setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    iput-object p1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    :try_start_0
    iget v0, p0, mMax:I

    if-eq p1, v0, :cond_2

    iput p1, p0, mMax:I

    invoke-virtual {p0}, postInvalidate()V

    iget v0, p0, mProgress:I

    if-le v0, p1, :cond_1

    iput p1, p0, mProgress:I

    :cond_1
    const v0, 0x102000d

    iget v1, p0, mProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, refreshProgress(IIZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v0}, setProgressInternal(IZZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(IZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, setProgressInternal(IZZ)Z

    return-void
.end method

.method public setProgressBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTint:Z

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressBackgroundTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressBackgroundTintMode:Z

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, applyProgressBackgroundTint()V

    :cond_1
    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 14

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_5

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iput-object p1, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, getLayoutDirection()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v0

    iget v1, p0, mMaxHeight:I

    if-ge v1, v0, :cond_2

    iput v0, p0, mMaxHeight:I

    invoke-virtual {p0}, requestLayout()V

    :cond_2
    invoke-direct {p0}, applyProgressTints()V

    :cond_3
    iget-boolean v0, p0, mIndeterminate:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, swapCurrentDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, postInvalidate()V

    :cond_4
    invoke-virtual {p0}, getWidth()I

    move-result v0

    invoke-virtual {p0}, getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, updateDrawableBounds(II)V

    invoke-direct {p0}, updateDrawableState()V

    const v3, 0x102000d

    iget v4, p0, mProgress:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, doRefreshProgress(IIZZZ)V

    const v9, 0x102000f

    iget v10, p0, mSecondaryProgress:I

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, p0

    invoke-direct/range {v8 .. v13}, doRefreshProgress(IIZZZ)V

    :cond_5
    return-void
.end method

.method public setProgressDrawableTiled(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, tileify(Landroid/graphics/drawable/Drawable;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method declared-synchronized setProgressInternal(IZZ)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget v0, p0, mMax:I

    invoke-static {p1, v1, v0}, Lcom/oneplus/lib/util/MathUtils;->constrain(III)I

    move-result v0

    move p1, v0

    iget v0, p0, mProgress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    iput p1, p0, mProgress:I

    const v0, 0x102000d

    iget v1, p0, mProgress:I

    invoke-direct {p0, v0, v1, p2, p3}, refreshProgress(IIZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTint:Z

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasProgressTintMode:Z

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, applyPrimaryProgressTint()V

    :cond_1
    return-void
.end method

.method public declared-synchronized setSecondaryProgress(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, mIndeterminate:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    :cond_1
    :try_start_1
    iget v0, p0, mMax:I

    if-le p1, v0, :cond_2

    iget v0, p0, mMax:I

    move p1, v0

    :cond_2
    iget v0, p0, mSecondaryProgress:I

    if-eq p1, v0, :cond_3

    iput p1, p0, mSecondaryProgress:I

    const v0, 0x102000f

    iget v1, p0, mSecondaryProgress:I

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2, v2}, refreshProgress(IIZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSecondaryProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintList:Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTint:Z

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method public setSecondaryProgressTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 2

    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;-><init>(Lcom/oneplus/lib/widget/OPProgressBar$1;)V

    iput-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    :cond_0
    iget-object v0, p0, mProgressTintInfo:Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;

    iput-object p1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mSecondaryProgressTintMode:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/widget/OPProgressBar$ProgressTintInfo;->mHasSecondaryProgressTintMode:Z

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, applySecondaryProgressTint()V

    :cond_1
    return-void
.end method

.method startAnimation()V
    .locals 3

    invoke-virtual {p0}, getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Landroid/graphics/drawable/Animatable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iput-boolean v1, p0, mShouldStartAnimationDrawable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, mHasAnimation:Z

    goto :goto_2

    :cond_1
    iput-boolean v1, p0, mHasAnimation:Z

    iget-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, mInterpolator:Landroid/view/animation/Interpolator;

    :cond_2
    iget-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    if-nez v0, :cond_3

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, mTransformation:Landroid/view/animation/Transformation;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/view/animation/Transformation;->clear()V

    :goto_0
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    if-nez v0, :cond_4

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->reset()V

    :goto_1
    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, mBehavior:I

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatMode(I)V

    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setRepeatCount(I)V

    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget v1, p0, mDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    iget-object v1, p0, mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, mAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartTime(J)V

    :goto_2
    invoke-virtual {p0}, postInvalidate()V

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method stopAnimation()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, mHasAnimation:Z

    iget-object v1, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v2, v1, Landroid/graphics/drawable/Animatable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/Animatable;

    invoke-interface {v1}, Landroid/graphics/drawable/Animatable;->stop()V

    iput-boolean v0, p0, mShouldStartAnimationDrawable:Z

    :cond_0
    invoke-virtual {p0}, postInvalidate()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

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