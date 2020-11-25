.class public Lcom/android/systemui/statusbar/notification/stack/ViewState;
.super Ljava/lang/Object;
.source "ViewState.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field protected static final NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private static final TAG_ANIMATOR_ALPHA:I

.field private static final TAG_ANIMATOR_TRANSLATION_X:I

.field private static final TAG_ANIMATOR_TRANSLATION_Y:I

.field private static final TAG_ANIMATOR_TRANSLATION_Z:I

.field private static final TAG_END_ALPHA:I

.field private static final TAG_END_TRANSLATION_X:I

.field private static final TAG_END_TRANSLATION_Y:I

.field private static final TAG_END_TRANSLATION_Z:I

.field private static final TAG_START_ALPHA:I

.field private static final TAG_START_TRANSLATION_X:I

.field private static final TAG_START_TRANSLATION_Y:I

.field private static final TAG_START_TRANSLATION_Z:I


# instance fields
.field public alpha:F

.field public gone:Z

.field public hidden:Z

.field public scaleX:F

.field public scaleY:F

.field public xTranslation:F

.field public yTranslation:F

.field public zTranslation:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$1;-><init>()V

    sput-object v0, NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sget v0, Lcom/android/systemui/R$id;->translation_x_animator_tag:I

    sput v0, TAG_ANIMATOR_TRANSLATION_X:I

    sget v0, Lcom/android/systemui/R$id;->translation_y_animator_tag:I

    sput v0, TAG_ANIMATOR_TRANSLATION_Y:I

    sget v0, Lcom/android/systemui/R$id;->translation_z_animator_tag:I

    sput v0, TAG_ANIMATOR_TRANSLATION_Z:I

    sget v0, Lcom/android/systemui/R$id;->alpha_animator_tag:I

    sput v0, TAG_ANIMATOR_ALPHA:I

    sget v0, Lcom/android/systemui/R$id;->translation_x_animator_end_value_tag:I

    sput v0, TAG_END_TRANSLATION_X:I

    sget v0, Lcom/android/systemui/R$id;->translation_y_animator_end_value_tag:I

    sput v0, TAG_END_TRANSLATION_Y:I

    sget v0, Lcom/android/systemui/R$id;->translation_z_animator_end_value_tag:I

    sput v0, TAG_END_TRANSLATION_Z:I

    sget v0, Lcom/android/systemui/R$id;->alpha_animator_end_value_tag:I

    sput v0, TAG_END_ALPHA:I

    sget v0, Lcom/android/systemui/R$id;->translation_x_animator_start_value_tag:I

    sput v0, TAG_START_TRANSLATION_X:I

    sget v0, Lcom/android/systemui/R$id;->translation_y_animator_start_value_tag:I

    sput v0, TAG_START_TRANSLATION_Y:I

    sget v0, Lcom/android/systemui/R$id;->translation_z_animator_start_value_tag:I

    sput v0, TAG_START_TRANSLATION_Z:I

    sget v0, Lcom/android/systemui/R$id;->alpha_animator_start_value_tag:I

    sput v0, TAG_START_ALPHA:I

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$2;-><init>()V

    sput-object v0, SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/ViewState$3;-><init>()V

    sput-object v0, SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, scaleX:F

    iput v0, p0, scaleY:F

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, TAG_ANIMATOR_ALPHA:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    sget v0, TAG_START_ALPHA:I

    return v0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, TAG_START_TRANSLATION_Y:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    sget v0, TAG_END_TRANSLATION_Y:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    sget v0, TAG_END_ALPHA:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    sget v0, TAG_ANIMATOR_TRANSLATION_Z:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, TAG_START_TRANSLATION_Z:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, TAG_END_TRANSLATION_Z:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, TAG_ANIMATOR_TRANSLATION_X:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, TAG_START_TRANSLATION_X:I

    return v0
.end method

.method static synthetic access$800()I
    .locals 1

    sget v0, TAG_END_TRANSLATION_X:I

    return v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, TAG_ANIMATOR_TRANSLATION_Y:I

    return v0
.end method

.method public static cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J
    .locals 4

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-wide p0
.end method

.method public static getChildTag(Landroid/view/View;I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getFinalTranslationX(Landroid/view/View;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result p0

    return p0

    :cond_1
    sget v0, TAG_END_TRANSLATION_X:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFinalTranslationY(Landroid/view/View;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result p0

    return p0

    :cond_1
    sget v0, TAG_END_TRANSLATION_Y:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public static getFinalTranslationZ(Landroid/view/View;)F
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result p0

    return p0

    :cond_1
    sget v0, TAG_END_TRANSLATION_Z:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method private static isAnimating(Landroid/view/View;I)Z
    .locals 0

    invoke-static {p0, p1}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result p1

    invoke-static {p0, p1}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isAnimatingY(Landroid/view/View;)Z
    .locals 1

    sget v0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p0, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 10

    sget v0, TAG_START_ALPHA:I

    invoke-static {p1, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    sget v1, TAG_END_ALPHA:I

    invoke-static {p1, v1}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget v2, p0, alpha:F

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget v3, TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, v3}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateAlpha:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    aget-object p0, p0, v7

    new-array p2, v8, [F

    aput v0, p2, v7

    aput v2, p2, v6

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    sget p0, TAG_START_ALPHA:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    cmpl-float v0, v2, v5

    if-nez v0, :cond_2

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v1, v8, [F

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v6

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v8, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState$4;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v6, v7, v3}, cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v6, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v8, 0x0

    cmp-long p0, v6, v8

    if-lez p0, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result p0

    cmpl-float p0, p0, v5

    if-nez p0, :cond_4

    :cond_3
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_4
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_5
    invoke-static {v0, p0}, startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    sget p0, TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_START_ALPHA:I

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_ALPHA:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method private startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 8

    sget v0, TAG_START_TRANSLATION_X:I

    invoke-static {p1, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    sget v1, TAG_END_TRANSLATION_X:I

    invoke-static {p1, v1}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget v2, p0, xTranslation:F

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget v3, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, v3}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateX:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    aget-object p0, p0, v7

    new-array p2, v6, [F

    aput v0, p2, v7

    aput v2, p2, v5

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    sget p0, TAG_START_TRANSLATION_X:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_TRANSLATION_X:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationX(F)V

    return-void

    :cond_2
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v1, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v3}, cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    :cond_4
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$6;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, p2}, startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    sget p0, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_START_TRANSLATION_X:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_TRANSLATION_X:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 8

    sget v0, TAG_START_TRANSLATION_Y:I

    invoke-static {p1, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    sget v1, TAG_END_TRANSLATION_Y:I

    invoke-static {p1, v1}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget v2, p0, yTranslation:F

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget v3, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, v3}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->shouldAnimateY(Landroid/view/View;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-float/2addr v0, p2

    aget-object p0, p0, v7

    new-array p2, v6, [F

    aput v0, p2, v7

    aput v2, p2, v5

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    sget p0, TAG_START_TRANSLATION_Y:I

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_TRANSLATION_Y:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    :cond_2
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v1, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getCustomInterpolator(Landroid/view/View;Landroid/util/Property;)Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    :goto_0
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v3}, cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_5

    :cond_4
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_5
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$7;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, p2}, startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    sget p0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_START_TRANSLATION_Y:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_TRANSLATION_Y:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 10

    sget v0, TAG_START_TRANSLATION_Z:I

    invoke-static {p1, v0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    sget v1, TAG_END_TRANSLATION_Z:I

    invoke-static {p1, v1}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    iget v2, p0, zTranslation:F

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v2

    if-nez v3, :cond_0

    return-void

    :cond_0
    sget v3, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, v3}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/ObjectAnimator;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;->animateZ:Z

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v4, :cond_4

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getValues()[Landroid/animation/PropertyValuesHolder;

    move-result-object p0

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    sub-float p2, v2, p2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " startZTranslationAnimation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",,"

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ViewState"

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    aget-object p0, p0, v7

    new-array p2, v6, [F

    aput v4, p2, v7

    aput v2, p2, v5

    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    sget p0, TAG_START_TRANSLATION_Z:I

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_TRANSLATION_Z:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getCurrentPlayTime()J

    move-result-wide p0

    invoke-virtual {v3, p0, p1}, Landroid/animation/ObjectAnimator;->setCurrentPlayTime(J)V

    return-void

    :cond_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setTranslationZ(F)V

    :cond_4
    sget-object v0, Landroid/view/View;->TRANSLATION_Z:Landroid/util/Property;

    new-array v1, v6, [F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    aput v4, v1, v7

    aput v2, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->duration:J

    invoke-static {v4, v5, v3}, cancelAnimatorAndGetNewDuration(JLandroid/animation/ValueAnimator;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-wide v4, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_6

    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->getAnimatedFraction()F

    move-result v1

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_6

    :cond_5
    iget-wide v3, p2, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->delay:J

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    :cond_6
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFinishListener()Landroid/animation/AnimatorListenerAdapter;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    new-instance v1, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/notification/stack/ViewState$5;-><init>(Lcom/android/systemui/statusbar/notification/stack/ViewState;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {v0, p2}, startAnimator(Landroid/animation/Animator;Landroid/animation/AnimatorListenerAdapter;)V

    sget p0, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_START_TRANSLATION_Z:I

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    sget p0, TAG_END_TRANSLATION_Z:I

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method private updateAlphaAnimation(Landroid/view/View;)V
    .locals 1

    sget-object v0, NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V
    .locals 0

    sget-object p0, NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p1, p2, p3, p0}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationX(Landroid/view/View;)V
    .locals 1

    sget-object v0, NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationY(Landroid/view/View;)V
    .locals 1

    sget-object v0, NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method

.method private updateAnimationZ(Landroid/view/View;)V
    .locals 1

    sget-object v0, NO_NEW_ANIMATIONS:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0, p1, v0}, startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    return-void
.end method


# virtual methods
.method protected abortAnimation(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method public animateTo(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, alpha:F

    if-nez v0, :cond_2

    const/4 v0, 0x0

    cmpl-float v3, v3, v0

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, gone:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, hidden:Z

    if-nez v0, :cond_2

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iget v3, p0, alpha:F

    cmpl-float v0, v3, v0

    if-eqz v0, :cond_3

    move v2, v1

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result v0

    xor-int/2addr v0, v1

    and-int/2addr v2, v0

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, xTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_5

    invoke-direct {p0, p1, p2}, startXTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_1

    :cond_5
    sget v0, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-virtual {p0, p1, v0}, abortAnimation(Landroid/view/View;I)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, yTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-direct {p0, p1, p2}, startYTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_2

    :cond_6
    sget v0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-virtual {p0, p1, v0}, abortAnimation(Landroid/view/View;I)V

    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v1, p0, zTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    invoke-direct {p0, p1, p2}, startZTranslationAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_3

    :cond_7
    sget v0, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-virtual {p0, p1, v0}, abortAnimation(Landroid/view/View;I)V

    :goto_3
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p0, scaleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    sget-object v0, SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_4

    :cond_8
    sget-object v0, SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, abortAnimation(Landroid/view/View;I)V

    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v1, p0, scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    sget-object v0, SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0, v1, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->startAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_5

    :cond_9
    sget-object v0, SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getAnimatorTag()I

    move-result v0

    invoke-virtual {p0, p1, v0}, abortAnimation(Landroid/view/View;I)V

    :goto_5
    if-eqz v2, :cond_a

    invoke-direct {p0, p1, p2}, startAlphaAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V

    goto :goto_6

    :cond_a
    sget p2, TAG_ANIMATOR_ALPHA:I

    invoke-virtual {p0, p1, p2}, abortAnimation(Landroid/view/View;I)V

    :goto_6
    return-void
.end method

.method public applyToView(Landroid/view/View;)V
    .locals 6

    iget-boolean v0, p0, gone:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, v0}, isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, updateAnimationX(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iget v1, p0, xTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    :cond_2
    :goto_0
    sget v0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, v0}, isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, updateAnimationY(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iget v1, p0, yTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    :cond_4
    :goto_1
    sget v0, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, v0}, isAnimating(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, updateAnimationZ(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iget v1, p0, zTranslation:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_6
    :goto_2
    sget-object v0, SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v1, p0, scaleX:F

    invoke-direct {p0, p1, v0, v1}, updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iget v1, p0, scaleX:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_8

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    :cond_8
    :goto_3
    sget-object v0, SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, v0}, isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    iget v1, p0, scaleY:F

    invoke-direct {p0, p1, v0, v1}, updateAnimation(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result v0

    iget v1, p0, scaleY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_a

    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    :cond_a
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget v1, p0, alpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_c

    iget-boolean v1, p0, hidden:Z

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1}, isAnimating(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_c

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    move v1, v3

    goto :goto_6

    :cond_c
    :goto_5
    move v1, v2

    :goto_6
    sget v4, TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, v4}, isAnimating(Landroid/view/View;I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0, p1}, updateAlphaAnimation(Landroid/view/View;)V

    goto :goto_a

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v4

    iget v5, p0, alpha:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_12

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v5, v4

    if-nez v4, :cond_e

    move v4, v2

    goto :goto_7

    :cond_e
    move v4, v3

    :goto_7
    if-nez v1, :cond_f

    if-nez v4, :cond_f

    invoke-virtual {p1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_8

    :cond_f
    move v2, v3

    :goto_8
    invoke-virtual {p1}, Landroid/view/View;->getLayerType()I

    move-result v4

    if-eqz v2, :cond_10

    const/4 v2, 0x2

    goto :goto_9

    :cond_10
    move v2, v3

    :goto_9
    if-eq v4, v2, :cond_11

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_11
    iget p0, p0, alpha:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    :cond_12
    :goto_a
    if-eqz v1, :cond_13

    const/4 v3, 0x4

    :cond_13
    if-eq v3, v0, :cond_15

    instance-of p0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    if-eqz p0, :cond_14

    move-object p0, p1

    check-cast p0, Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->willBeGone()Z

    move-result p0

    if-nez p0, :cond_15

    :cond_14
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_15
    return-void
.end method

.method public cancelAnimations(Landroid/view/View;)V
    .locals 0

    sget p0, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, p0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    sget p0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, p0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    sget p0, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, p0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_2
    sget p0, TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, p0}, getChildTag(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/animation/Animator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_3
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/statusbar/notification/stack/ViewState;)V
    .locals 1

    iget v0, p1, alpha:F

    iput v0, p0, alpha:F

    iget v0, p1, xTranslation:F

    iput v0, p0, xTranslation:F

    iget v0, p1, yTranslation:F

    iput v0, p0, yTranslation:F

    iget v0, p1, zTranslation:F

    iput v0, p0, zTranslation:F

    iget-boolean v0, p1, gone:Z

    iput-boolean v0, p0, gone:Z

    iget-boolean v0, p1, hidden:Z

    iput-boolean v0, p0, hidden:Z

    iget v0, p1, scaleX:F

    iput v0, p0, scaleX:F

    iget p1, p1, scaleY:F

    iput p1, p0, scaleY:F

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ViewState { "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v6, v2, v1

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v7

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {v7}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    :cond_0
    if-nez v5, :cond_1

    const-string v5, ", "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v6, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move v5, v4

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    move v1, v5

    goto :goto_0

    :cond_4
    const-string p0, " }"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public initFrom(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, alpha:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, p0, xTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, p0, yTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, p0, zTranslation:F

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, gone:Z

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, hidden:Z

    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, p0, scaleX:F

    invoke-virtual {p1}, Landroid/view/View;->getScaleY()F

    move-result p1

    iput p1, p0, scaleY:F

    return-void
.end method

.method public isAnimating(Landroid/view/View;)Z
    .locals 1

    sget p0, TAG_ANIMATOR_TRANSLATION_X:I

    invoke-static {p1, p0}, isAnimating(Landroid/view/View;I)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    sget p0, TAG_ANIMATOR_TRANSLATION_Y:I

    invoke-static {p1, p0}, isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    sget p0, TAG_ANIMATOR_TRANSLATION_Z:I

    invoke-static {p1, p0}, isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    sget p0, TAG_ANIMATOR_ALPHA:I

    invoke-static {p1, p0}, isAnimating(Landroid/view/View;I)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    sget-object p0, SCALE_X_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, p0}, isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result p0

    if-eqz p0, :cond_4

    return v0

    :cond_4
    sget-object p0, SCALE_Y_PROPERTY:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {p1, p0}, isAnimating(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;)Z

    move-result p0

    if-eqz p0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method protected onYTranslationAnimationFinished(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, hidden:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, gone:Z

    if-nez p0, :cond_0

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
