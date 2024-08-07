.class Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;
.super Ljava/lang/Object;
.source "MagnificationController.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/MagnificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpecAnimationBridge"
.end annotation


# instance fields
.field private final mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

.field private final mDisplayId:I

.field private mEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mEndMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mLock:Ljava/lang/Object;

.field private final mSentMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mStartMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

.field private final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method private constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;I)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v0

    iput-object v0, p0, mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    const/4 v0, 0x0

    iput-boolean v0, p0, mEnabled:Z

    iput-object p1, p0, mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    iput-object p2, p0, mLock:Ljava/lang/Object;

    iput p3, p0, mDisplayId:I

    iget-object v0, p0, mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getAnimationDuration()J

    move-result-wide v0

    iget-object v2, p0, mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v2}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->newValueAnimator()Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40200000    # 2.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v2, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;ILcom/android/server/accessibility/MagnificationController$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, <init>(Lcom/android/server/accessibility/MagnificationController$ControllerContext;Ljava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/accessibility/MagnificationController$SpecAnimationBridge;)Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method private animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 2

    iget-object v0, p0, mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    iget-object v0, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    iget-object v0, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    iget-boolean v0, p0, mEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, p1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    iget-object v0, p0, mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v0

    iget v1, p0, mDisplayId:I

    iget-object v2, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, mEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    iget-object v2, p0, mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->scale:F

    iget-object v4, p0, mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->scale:F

    iget-object v5, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->scale:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->scale:F

    iget-object v2, p0, mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v4, p0, mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v5, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetX:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v2, p0, mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v3, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v3, v3, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v4, p0, mEndMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v4, v4, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v5, p0, mStartMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v5, v5, Landroid/view/MagnificationSpec;->offsetY:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    iput v3, v2, Landroid/view/MagnificationSpec;->offsetY:F

    iget-object v2, p0, mTmpMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-direct {p0, v2}, setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 4

    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, mEnabled:Z

    if-eq p1, v1, :cond_0

    iput-boolean p1, p0, mEnabled:Z

    iget-boolean v1, p0, mEnabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1}, Landroid/view/MagnificationSpec;->clear()V

    iget-object v1, p0, mControllerCtx:Lcom/android/server/accessibility/MagnificationController$ControllerContext;

    invoke-virtual {v1}, Lcom/android/server/accessibility/MagnificationController$ControllerContext;->getWindowManager()Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v1

    iget v2, p0, mDisplayId:I

    iget-object v3, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerInternal;->setMagnificationSpec(ILandroid/view/MagnificationSpec;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateSentSpecMainThread(Landroid/view/MagnificationSpec;Z)V
    .locals 2

    iget-object v0, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, mSentMagnificationSpec:Landroid/view/MagnificationSpec;

    invoke-virtual {v1, p1}, Landroid/view/MagnificationSpec;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, animateMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, setMagnificationSpecLocked(Landroid/view/MagnificationSpec;)V

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
