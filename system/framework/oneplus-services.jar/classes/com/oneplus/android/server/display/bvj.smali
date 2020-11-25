.class public final Lcom/oneplus/android/server/display/bvj;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/bvj$zta;
    }
.end annotation


# static fields
.field private static Aoa:[F = null

.field private static Boa:[F = null

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/bvj$zta;

.field private static Coa:[F = null

.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field private static final DEFAULT_NIGHT_BRIGHTNESS:I = 0xf

.field private static final DEFAULT_NIGHT_COLORTEMPERA:I = 0x2e

.field public static final Doa:[F

.field public static final Eoa:[F

.field private static Foa:[F = null

.field public static final LEVEL_COLOR_MATRIX_GRAYSCALE:I = 0xc8

.field public static final LEVEL_COLOR_MATRIX_INVERT_COLOR:I = 0x12c

.field public static final LEVEL_COLOR_MATRIX_ONEPLUS_COLOR:I = 0x15e

.field public static final LEVEL_COLOR_MATRIX_SATURATION:I = 0x96

.field private static final MATRIX_GRAYSCALE:[F

.field private static final MATRIX_INVERT_COLOR:[F

.field private static final TAG:Ljava/lang/String; = "OpColorTintManager"

.field private static final TRANSITION_DURATION:J = 0xbb8L

.field public static mCurrentUser:I = 0x0

.field public static final uoa:I = 0x15f

.field private static voa:I = 0x0

.field private static woa:F = 0.0f

.field private static final xoa:I = 0x3e

.field private static final yoa:I = -0x1

.field private static final zoa:[F


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

.field private poa:Z

.field private qoa:Z

.field private roa:Z

.field private soa:Z

.field private final xna:Lcom/oneplus/android/server/display/ibl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/oneplus/android/server/display/bvj$zta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/display/bvj$zta;-><init>(Lcom/oneplus/android/server/display/oif;)V

    sput-object v0, COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/bvj$zta;

    const/16 v0, 0x10

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, zoa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Aoa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Boa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Coa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_4

    sput-object v1, Doa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_5

    sput-object v1, Eoa:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_6

    sput-object v1, MATRIX_GRAYSCALE:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_7

    sput-object v1, MATRIX_INVERT_COLOR:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    sput-object v0, Foa:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f04e3bd    # 0.5191f
        0x3e531f0a
        0x3e390d02
        0x0
        0x3ec353f8    # 0.3815f
        0x3f242bae
        0x3ea11b46
        0x0
        0x3dcb923a    # 0.0994f
        0x3dbf8f7d
        0x3ea8aa69
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e4fe7e1
        0x3e3d5b88
        0x0
        0x3f371759    # 0.7152f
        0x3f2eda23
        0x3f1f40b3
        0x0
        0x3d93dd98    # 0.0722f
        0x3d8d362e
        0x3d809d0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_6
    .array-data 4
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x3e59b3d0    # 0.2126f
        0x0
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x3f371759    # 0.7152f
        0x0
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x3d93dd98    # 0.0722f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_7
    .array-data 4
        0x3ecdd2f2    # 0.402f
        -0x40e6e979    # -0.598f
        -0x40e6a7f0    # -0.599f
        0x0
        -0x4069ba5e    # -1.174f
        -0x41cdd2f2    # -0.174f
        -0x4069999a    # -1.175f
        0x0
        -0x4196872b    # -0.228f
        -0x4196872b    # -0.228f
        0x3f45a1cb    # 0.772f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_8
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, poa:Z

    iput-boolean v0, p0, qoa:Z

    iput-boolean v0, p0, roa:Z

    iput-boolean v0, p0, soa:Z

    iput-object p1, p0, mContext:Landroid/content/Context;

    sput p2, mCurrentUser:I

    new-instance p2, Lcom/oneplus/android/server/display/ibl;

    invoke-direct {p2, p1}, Lcom/oneplus/android/server/display/ibl;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, xna:Lcom/oneplus/android/server/display/ibl;

    new-instance p2, Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-direct {p2, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    return-void
.end method

.method private Fu()V
    .locals 7

    invoke-direct {p0}, Iu()I

    move-result v0

    sput v0, voa:I

    invoke-direct {p0}, Hu()F

    move-result v0

    sput v0, woa:F

    sget v0, voa:I

    sget v1, woa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/ugm;->zta(IF)[F

    move-result-object v0

    sput-object v0, Boa:[F

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ma(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ha(I)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v2, Aoa:[F

    sget-object v3, Boa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    :cond_0
    return-void
.end method

.method private Gu()I
    .locals 3

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, mCurrentUser:I

    const-string v1, "oem_screen_better_value"

    const/16 v2, 0x3e

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x64

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x10

    goto :goto_0

    :cond_0
    if-gt v0, p0, :cond_1

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_1

    add-int/lit8 p0, p0, 0xa

    :cond_1
    :goto_0
    return p0
.end method

.method private Hu()F
    .locals 3

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, mCurrentUser:I

    const-string v1, "oem_nightmode_brightness_progress"

    const/16 v2, 0xf

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x64

    int-to-float p0, p0

    const v0, 0x3ba3d70a    # 0.005f

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    return p0
.end method

.method private Iu()I
    .locals 3

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, mCurrentUser:I

    const-string v1, "oem_nightmode_progress_status"

    const/16 v2, 0x2e

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    int-to-float p0, p0

    const v0, 0x3f19999a    # 0.6f

    mul-float/2addr p0, v0

    float-to-int p0, p0

    rsub-int/lit8 p0, p0, 0x0

    add-int/lit8 p0, p0, 0x3c

    return p0
.end method

.method private Ju()Z
    .locals 3

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, mCurrentUser:I

    const/4 v1, 0x0

    const-string v2, "screen_color_mode_settings_value"

    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private qb(Z)V
    .locals 2

    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, mCurrentUser:I

    const-string v1, "temp_disable_inversion"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/bvj;)Lcom/oneplus/android/server/display/ibl;
    .locals 0

    iget-object p0, p0, xna:Lcom/oneplus/android/server/display/ibl;

    return-object p0
.end method

.method static synthetic you([F)[F
    .locals 0

    sput-object p0, Aoa:[F

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/display/color/DisplayTransformManager;IZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [F

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p2, :cond_0

    sput-object p3, Aoa:[F

    :cond_0
    return-void
.end method

.method private zta([F[FZIZ)V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "start applyTint"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/igw;->cancelAnimator()V

    const-class v0, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz p3, :cond_1

    if-eqz v3, :cond_0

    invoke-virtual {v3, p4, p2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    if-eqz p5, :cond_0

    sput-object p2, Aoa:[F

    :cond_0
    return-void

    :cond_1
    iget-object p3, p0, xna:Lcom/oneplus/android/server/display/ibl;

    sget-object v0, COLOR_MATRIX_EVALUATOR:Lcom/oneplus/android/server/display/bvj$zta;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/oneplus/android/server/display/igw;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    iget-object p3, p0, mContext:Landroid/content/Context;

    const v0, 0x10c000b

    invoke-static {p3, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/zta;

    invoke-direct {p3, v3, p4, p5}, Lcom/oneplus/android/server/display/zta;-><init>(Lcom/android/server/display/color/DisplayTransformManager;IZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p3, Lcom/oneplus/android/server/display/oif;

    move-object v1, p3

    move-object v2, p0

    move v4, p4

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/display/oif;-><init>(Lcom/oneplus/android/server/display/bvj;Lcom/android/server/display/color/DisplayTransformManager;I[FZ)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public Af()V
    .locals 6

    const-string v0, "OpColorTintManager"

    const-string v1, "enterGoogleMatrixMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/igw;->cancelAnimator()V

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x15e

    sget-object v3, zoa:[F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    sget-object v2, zoa:[F

    sput-object v2, Aoa:[F

    :cond_0
    iget-boolean v2, p0, roa:Z

    const/16 v3, 0x96

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string v2, "mTempDisableGrayscale is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, mCurrentUser:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->ja(I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, MATRIX_GRAYSCALE:[F

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    const-string v3, "GoogleMatrixMode"

    invoke-static {v3, v2, v4}, Lcom/oneplus/server/sis;->notifyModeChange(Ljava/lang/String;II)V

    :goto_0
    iput-boolean v4, p0, roa:Z

    goto :goto_1

    :cond_2
    iget-object v2, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, mCurrentUser:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->ja(I)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, MATRIX_GRAYSCALE:[F

    invoke-virtual {v1, v3, v2}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_3
    :goto_1
    iget-boolean v2, p0, poa:Z

    if-eqz v2, :cond_5

    const-string v2, "mTempDisableInversion is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, qb(Z)V

    if-eqz v1, :cond_4

    const/16 v2, 0x12c

    sget-object v3, MATRIX_INVERT_COLOR:[F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_4
    iput-boolean v4, p0, poa:Z

    :cond_5
    iget-boolean v2, p0, qoa:Z

    if-eqz v2, :cond_7

    const-string v2, "mTempDisableDaltonizer is true"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xc

    sget v3, mCurrentUser:I

    const-string v5, "accessibility_display_daltonizer"

    invoke-static {v0, v5, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v1, :cond_6

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    :cond_6
    iput-boolean v4, p0, qoa:Z

    :cond_7
    invoke-direct {p0}, Ju()Z

    move-result p0

    if-eqz p0, :cond_8

    sget-object p0, Coa:[F

    goto :goto_2

    :cond_8
    sget-object p0, zoa:[F

    :goto_2
    sput-object p0, Aoa:[F

    return-void
.end method

.method public Bf()V
    .locals 2

    const-string v0, "OpColorTintManager"

    const-string v1, "exitGoogleMatrixMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, recoverOneplusColorMatrix()V

    return-void
.end method

.method public C(Z)V
    .locals 12

    const-string p1, "OpColorTintManager"

    const-string v0, "resetEnhancementCCT"

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, soa:Z

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ma(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ha(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->la(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Ju()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object v1, Aoa:[F

    sget-object v2, Coa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, zta([F[FZIZ)V

    goto :goto_0

    :cond_1
    sget-object v7, Aoa:[F

    sget-object v8, zoa:[F

    const/4 v9, 0x0

    const/16 v10, 0x15e

    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, zta([F[FZIZ)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p0, "oneplus scene mode on, do not sresetEnhancementCCT"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public Cf()V
    .locals 1

    iget-boolean v0, p0, soa:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, setCustomColorTemperature()V

    :cond_0
    return-void
.end method

.method public Df()V
    .locals 6

    sget-object v2, zoa:[F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, zta([F[FZIZ)V

    return-void
.end method

.method public Ef()V
    .locals 7

    iget-boolean v0, p0, soa:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ma(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ha(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->la(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    sget-object v3, Foa:[F

    const/4 v4, 0x1

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    nop

    :cond_1
    :goto_0
    return-void
.end method

.method public Ff()V
    .locals 0

    invoke-direct {p0}, Fu()V

    return-void
.end method

.method public H(Z)V
    .locals 8

    const-string v0, "OpColorTintManager"

    const-string v1, "colorReadModeSwitch"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v3, Aoa:[F

    sget-object v4, Doa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, zta([F[FZIZ)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, soa:Z

    if-eqz p1, :cond_1

    sget-object v2, Foa:[F

    :goto_0
    sget-object v1, Aoa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, zta([F[FZIZ)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Ju()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Coa:[F

    goto :goto_1

    :cond_2
    sget-object p1, zoa:[F

    :goto_1
    move-object v2, p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public I(Z)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nightModeSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorTintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Iu()I

    move-result v0

    sput v0, voa:I

    invoke-direct {p0}, Hu()F

    move-result v0

    sput v0, woa:F

    sget v0, voa:I

    sget v1, woa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/ugm;->zta(IF)[F

    move-result-object v0

    sput-object v0, Boa:[F

    if-eqz p1, :cond_0

    sget-object v2, Aoa:[F

    sget-object v3, Boa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, soa:Z

    if-eqz p1, :cond_1

    sget-object v2, Foa:[F

    :goto_0
    sget-object v1, Aoa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, zta([F[FZIZ)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Ju()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Coa:[F

    goto :goto_1

    :cond_2
    sget-object p1, zoa:[F

    :goto_1
    move-object v2, p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public J(Z)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readingModeSwitch: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorTintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    sget-object v3, Aoa:[F

    sget-object v4, Eoa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, zta([F[FZIZ)V

    goto :goto_2

    :cond_0
    iget-boolean p1, p0, soa:Z

    if-eqz p1, :cond_1

    sget-object v2, Foa:[F

    :goto_0
    sget-object v1, Aoa:[F

    const/4 v3, 0x0

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, zta([F[FZIZ)V

    goto :goto_2

    :cond_1
    invoke-direct {p0}, Ju()Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Coa:[F

    goto :goto_1

    :cond_2
    sget-object p1, zoa:[F

    :goto_1
    move-object v2, p1

    goto :goto_0

    :goto_2
    return-void
.end method

.method public ca(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enhanceVividAndNaturalCCT cct = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorTintManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, soa:Z

    invoke-static {p1}, Lcom/oneplus/android/server/display/ugm;->ta(I)[F

    move-result-object p1

    sput-object p1, Foa:[F

    iget-object p1, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v0, mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->ma(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v0, mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->ha(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v0, mCurrentUser:I

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->la(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Aoa:[F

    sget-object v4, Foa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, zta([F[FZIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "oneplus scene mode on, do not enhanceVividAndNaturalCCT"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public nf()V
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, soa:Z

    invoke-direct {p0}, Gu()I

    move-result v0

    invoke-static {v0}, Lcom/oneplus/android/server/display/ugm;->ta(I)[F

    move-result-object v0

    sput-object v0, Foa:[F

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ma(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ha(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->la(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Aoa:[F

    sget-object v3, Foa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "OpColorTintManager"

    const-string v0, "oneplus scene mode on, do not enhanceCoustomModeCCT"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public oa(I)V
    .locals 0

    sput p1, mCurrentUser:I

    return-void
.end method

.method public recoverOneplusColorMatrix()V
    .locals 6

    sget-object v2, Aoa:[F

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x15e

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, zta([F[FZIZ)V

    return-void
.end method

.method public setCustomColorTemperature()V
    .locals 9

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, mCurrentUser:I

    const-string v2, "oem_screen_better_value"

    const/16 v3, 0x3e

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x0

    add-int/lit8 v0, v0, 0x64

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorTempearture: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpColorTintManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Lcom/oneplus/android/server/display/ugm;->ta(I)[F

    move-result-object v0

    sput-object v0, Coa:[F

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ma(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ha(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v1, mCurrentUser:I

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->la(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Aoa:[F

    sget-object v5, Coa:[F

    const/4 v6, 0x0

    const/16 v7, 0x15e

    const/4 v8, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, zta([F[FZIZ)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "oneplus scene mode on, do not set CustomColorTemperature"

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setNightBrightness()V
    .locals 0

    invoke-direct {p0}, Fu()V

    return-void
.end method

.method public tf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeColorRead2Night"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Iu()I

    move-result v0

    sput v0, voa:I

    invoke-direct {p0}, Hu()F

    move-result v0

    sput v0, woa:F

    sget v0, voa:I

    sget v1, woa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/ugm;->zta(IF)[F

    move-result-object v0

    sput-object v0, Boa:[F

    sget-object v2, Aoa:[F

    sget-object v3, Boa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    return-void
.end method

.method public uf()V
    .locals 8

    const-string v0, "OpColorTintManager"

    const-string v1, "changeColorRead2Read"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Aoa:[F

    sget-object v4, Eoa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, zta([F[FZIZ)V

    return-void
.end method

.method public vf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeNight2ColorRead"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Iu()I

    move-result v0

    sput v0, voa:I

    invoke-direct {p0}, Hu()F

    move-result v0

    sput v0, woa:F

    sget v0, voa:I

    sget v1, woa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/ugm;->zta(IF)[F

    move-result-object v0

    sput-object v0, Boa:[F

    sget-object v2, Aoa:[F

    sget-object v3, Doa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    return-void
.end method

.method public wf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeNight2Reading"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Iu()I

    move-result v0

    sput v0, voa:I

    invoke-direct {p0}, Hu()F

    move-result v0

    sput v0, woa:F

    sget v0, voa:I

    sget v1, woa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/ugm;->zta(IF)[F

    move-result-object v0

    sput-object v0, Boa:[F

    sget-object v2, Aoa:[F

    sget-object v3, Eoa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    return-void
.end method

.method public xf()V
    .locals 8

    const-string v0, "OpColorTintManager"

    const-string v1, "changeRead2ColorRead"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Aoa:[F

    sget-object v4, Doa:[F

    const/4 v5, 0x0

    const/16 v6, 0x15e

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, zta([F[FZIZ)V

    return-void
.end method

.method public yf()V
    .locals 7

    const-string v0, "OpColorTintManager"

    const-string v1, "changeReading2Night"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Iu()I

    move-result v0

    sput v0, voa:I

    invoke-direct {p0}, Hu()F

    move-result v0

    sput v0, woa:F

    sget v0, voa:I

    sget v1, woa:F

    invoke-static {v0, v1}, Lcom/oneplus/android/server/display/ugm;->zta(IF)[F

    move-result-object v0

    sput-object v0, Boa:[F

    sget-object v2, Aoa:[F

    sget-object v3, Boa:[F

    const/4 v4, 0x0

    const/16 v5, 0x15e

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, zta([F[FZIZ)V

    return-void
.end method

.method public zf()V
    .locals 6

    const-string v0, "OpColorTintManager"

    const-string v1, "disableColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, xna:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/igw;->cancelAnimator()V

    const-class v1, Lcom/android/server/display/color/DisplayTransformManager;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/color/DisplayTransformManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x15e

    sget-object v3, zoa:[F

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    sget-object v2, zoa:[F

    sput-object v2, Aoa:[F

    :cond_0
    iget-object v2, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v3, mCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->ja(I)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    const-string v2, "Enter Fingerprint, Grayscale is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    const/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    iput-boolean v4, p0, roa:Z

    :cond_2
    iget-object v2, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v5, mCurrentUser:I

    invoke-virtual {v2, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->ka(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Enter Fingerprint, Inversion is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v4}, qb(Z)V

    if-eqz v1, :cond_3

    const/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Lcom/android/server/display/color/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_3
    iput-boolean v4, p0, poa:Z

    :cond_4
    iget-object v2, p0, mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    sget v3, mCurrentUser:I

    invoke-virtual {v2, v3}, Lcom/oneplus/android/server/display/OpColorModeManager;->ia(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "Enter Fingerprint, Daltonizer is on, turn off it"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    const/4 v0, -0x1

    invoke-virtual {v1, v0}, Lcom/android/server/display/color/DisplayTransformManager;->setDaltonizerMode(I)V

    :cond_5
    iput-boolean v4, p0, qoa:Z

    :cond_6
    return-void
.end method
