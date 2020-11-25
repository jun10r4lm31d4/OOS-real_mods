.class final Lcom/android/server/display/RampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/RampAnimator$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final A:F = 0.17883277f

.field private static final ADJUST_VALUE:I = 0x1068

.field private static final B:F = 0.28466892f

.field private static final C:F = 0.5599107f

.field private static final GAMMA_SPACE_MAX:I = 0x3ff

.field private static final INVALID_RAMP_RATE:I = -0x1

.field private static final R:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "RampAnimator"


# instance fields
.field private mAnimatedValue:F

.field private mAnimating:Z

.field private final mAnimationCallback:Ljava/lang/Runnable;

.field private final mChoreographer:Landroid/view/Choreographer;

.field private mCurrentValue:I

.field private mDelayMs:I

.field private mDelta:I

.field public mEnableDelay:Z

.field private mExitHBMMode:Z

.field private mFirstTime:Z

.field private mLastFrameTimeNanos:J

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mMaxBrightness:I

.field private final mObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mProperty:Landroid/util/IntProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/IntProperty<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mRate:I

.field private mRateBackup:I

.field private mStageEnable:I

.field private mTargetValue:I

.field private mTimeStamp:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/util/IntProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/IntProperty<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, mRateBackup:I

    const/4 v0, 0x0

    iput v0, p0, mDelta:I

    iput v0, p0, mMaxBrightness:I

    iput-boolean v0, p0, mEnableDelay:Z

    const/16 v1, 0xbb8

    iput v1, p0, mDelayMs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, mFirstTime:Z

    iput-boolean v0, p0, mExitHBMMode:Z

    iput v0, p0, mStageEnable:I

    new-instance v0, Lcom/android/server/display/RampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator;)V

    iput-object v0, p0, mAnimationCallback:Ljava/lang/Runnable;

    iput-object p1, p0, mObject:Ljava/lang/Object;

    iput-object p2, p0, mProperty:Landroid/util/IntProperty;

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;
    .locals 1

    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, mLastFrameTimeNanos:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/server/display/RampAnimator;)J
    .locals 2

    iget-wide v0, p0, mTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, mTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/server/display/RampAnimator;J)J
    .locals 0

    iput-wide p1, p0, mLastFrameTimeNanos:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    invoke-direct {p0}, useScreenShotAlgo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mDelayMs:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, mDelayMs:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, mObject:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;
    .locals 1

    iget-object v0, p0, mProperty:Landroid/util/IntProperty;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    invoke-direct {p0}, postAnimationCallback()V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, mAnimating:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/display/RampAnimator;)Z
    .locals 1

    iget-boolean v0, p0, mExitHBMMode:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/display/RampAnimator;Z)Z
    .locals 0

    iput-boolean p1, p0, mExitHBMMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/display/RampAnimator;)F
    .locals 1

    iget v0, p0, mAnimatedValue:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/display/RampAnimator;F)F
    .locals 0

    iput p1, p0, mAnimatedValue:F

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mTargetValue:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mRate:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, mRate:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mCurrentValue:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, mCurrentValue:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mStageEnable:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mMaxBrightness:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mDelta:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/display/RampAnimator;)I
    .locals 1

    iget v0, p0, mRateBackup:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/server/display/RampAnimator;I)I
    .locals 0

    iput p1, p0, mRateBackup:I

    return p1
.end method

.method private calculateRampRate(II)I
    .locals 6

    sub-int v0, p2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v1, v0

    const/4 v2, 0x0

    const v3, 0x447fc000    # 1023.0f

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->norm(FFF)F

    move-result v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v4, v1, v3

    if-gtz v4, :cond_0

    div-float v3, v1, v3

    invoke-static {v3}, Landroid/util/MathUtils;->sq(F)F

    move-result v3

    goto :goto_0

    :cond_0
    const v3, 0x3f0f564f

    sub-float v3, v1, v3

    const v4, 0x3e371ff0

    div-float/2addr v3, v4

    invoke-static {v3}, Landroid/util/MathUtils;->exp(F)F

    move-result v3

    const v4, 0x3e91c020

    add-float/2addr v3, v4

    :goto_0
    const v4, 0x45834000    # 4200.0f

    const/high16 v5, 0x41400000    # 12.0f

    div-float v5, v3, v5

    invoke-static {v2, v4, v5}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    const/16 v4, 0xf0

    const/16 v5, 0x1e

    if-ge v2, v5, :cond_1

    move v4, v5

    goto :goto_1

    :cond_1
    if-le v2, v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    move v2, v4

    const/16 v4, 0x3c

    if-gt p1, v4, :cond_3

    if-gt p2, v4, :cond_3

    const/16 v2, 0x32

    :cond_3
    return v2
.end method

.method private cancelAnimationCallback()V
    .locals 4

    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->removeCallbacks(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private getDcEnable()Z
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v1, "persist.vendor.dc.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method

.method private isOnePlus7Projects()Z
    .locals 2

    const-string/jumbo v0, "ro.boot.project_name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "18821"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18825"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18827"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18831"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "18857"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method private postAnimationCallback()V
    .locals 4

    iget-object v0, p0, mChoreographer:Landroid/view/Choreographer;

    iget-object v1, p0, mAnimationCallback:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method private useScreenShotAlgo()Z
    .locals 1

    invoke-direct {p0}, getDcEnable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, isOnePlus7Projects()Z

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


# virtual methods
.method public animateTo(I)Z
    .locals 2

    iget v0, p0, mCurrentValue:I

    invoke-direct {p0, v0, p1}, calculateRampRate(II)I

    move-result v0

    invoke-virtual {p0, p1, v0}, animateTo(II)Z

    move-result v1

    return v1
.end method

.method public animateTo(II)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "animateTo(): target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", rate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, mTargetValue:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne p1, v0, :cond_1

    if-ne p2, v2, :cond_1

    iget v0, p0, mCurrentValue:I

    if-eq p1, v0, :cond_0

    iget-boolean v0, p0, mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "same target! "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, mAnimating:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    if-ne p2, v2, :cond_2

    iget v0, p0, mDelta:I

    if-nez v0, :cond_2

    iget-boolean v0, p0, mAnimating:Z

    if-eqz v0, :cond_2

    const-string v0, "WAIT ANIMATING ENDING!"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    if-ne p2, v2, :cond_3

    iget v0, p0, mCurrentValue:I

    invoke-direct {p0, v0, p1}, calculateRampRate(II)I

    move-result p2

    iget v0, p0, mCurrentValue:I

    sub-int v0, p1, v0

    iput v0, p0, mDelta:I

    goto :goto_0

    :cond_3
    iput v3, p0, mDelta:I

    :goto_0
    iget v0, p0, mCurrentValue:I

    const/16 v1, 0x3ff

    const/4 v4, 0x1

    if-le v0, v1, :cond_4

    if-lt p1, v1, :cond_5

    :cond_4
    iget-boolean v0, p0, mExitHBMMode:Z

    if-eqz v0, :cond_6

    :cond_5
    move v0, v4

    goto :goto_1

    :cond_6
    move v0, v3

    :goto_1
    iput-boolean v0, p0, mExitHBMMode:Z

    iget v0, p0, mCurrentValue:I

    if-le p1, v0, :cond_7

    iget v0, p0, mRateBackup:I

    iput v0, p0, mRate:I

    iput v2, p0, mRateBackup:I

    :cond_7
    iget-boolean v0, p0, mFirstTime:Z

    if-nez v0, :cond_f

    if-gtz p2, :cond_8

    goto :goto_3

    :cond_8
    iget-boolean v0, p0, mAnimating:Z

    if-eqz v0, :cond_a

    iget v0, p0, mRate:I

    if-gt p2, v0, :cond_a

    iget v0, p0, mCurrentValue:I

    if-gt p1, v0, :cond_9

    iget v1, p0, mTargetValue:I

    if-le v0, v1, :cond_a

    :cond_9
    iget v0, p0, mTargetValue:I

    iget v1, p0, mCurrentValue:I

    if-gt v0, v1, :cond_c

    if-gt v1, p1, :cond_c

    :cond_a
    iget v0, p0, mRateBackup:I

    if-ne v0, v2, :cond_b

    iput p2, p0, mRate:I

    goto :goto_2

    :cond_b
    iput p2, p0, mRateBackup:I

    :cond_c
    :goto_2
    iget v0, p0, mTargetValue:I

    if-eq v0, p1, :cond_d

    move v3, v4

    :cond_d
    move v0, v3

    iput p1, p0, mTargetValue:I

    iget-boolean v1, p0, mAnimating:Z

    if-nez v1, :cond_e

    iget v1, p0, mCurrentValue:I

    if-eq p1, v1, :cond_e

    iput-boolean v4, p0, mAnimating:Z

    int-to-float v1, v1

    iput v1, p0, mAnimatedValue:F

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iput-wide v1, p0, mLastFrameTimeNanos:J

    invoke-direct {p0}, postAnimationCallback()V

    :cond_e
    return v0

    :cond_f
    :goto_3
    iget-boolean v0, p0, mFirstTime:Z

    if-nez v0, :cond_11

    iget v0, p0, mCurrentValue:I

    if-eq p1, v0, :cond_10

    goto :goto_4

    :cond_10
    return v3

    :cond_11
    :goto_4
    iput-boolean v3, p0, mFirstTime:Z

    iput v3, p0, mRate:I

    iput v2, p0, mRateBackup:I

    iput p1, p0, mTargetValue:I

    iput p1, p0, mCurrentValue:I

    iget-object v0, p0, mProperty:Landroid/util/IntProperty;

    iget-object v1, p0, mObject:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    iget-boolean v0, p0, mAnimating:Z

    if-eqz v0, :cond_12

    iput-boolean v3, p0, mAnimating:Z

    invoke-direct {p0}, cancelAnimationCallback()V

    :cond_12
    iget-object v0, p0, mListener:Lcom/android/server/display/RampAnimator$Listener;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    iget-boolean v0, p0, mExitHBMMode:Z

    if-eqz v0, :cond_13

    iget-object v0, p0, mListener:Lcom/android/server/display/RampAnimator$Listener;

    const/16 v1, 0x7d0

    invoke-interface {v0, v4, v1}, Lcom/android/server/display/RampAnimator$Listener;->setDimmingSpeed(II)V

    iput-boolean v3, p0, mExitHBMMode:Z

    :cond_13
    return v4
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Screen Brightness Ramp Animator Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mCurrentValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTargetValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mTargetValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRateBackup="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, mRateBackup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mEnableDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, mEnableDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getBrightnessValue()I
    .locals 1

    iget v0, p0, mCurrentValue:I

    return v0
.end method

.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, mAnimating:Z

    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method

.method public setMax(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMax:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, mMaxBrightness:I

    return-void
.end method

.method public setStageEnable(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setStageEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RampAnimator"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, mStageEnable:I

    return-void
.end method
