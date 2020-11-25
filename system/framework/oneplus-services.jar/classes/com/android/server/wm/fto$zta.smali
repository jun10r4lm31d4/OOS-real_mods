.class Lcom/android/server/wm/fto$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/LocalAnimationAdapter$AnimationSpec;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# instance fields
.field private final mDuration:J

.field private final mFromAlpha:F

.field private final mInterpolator:Landroid/animation/TimeInterpolator;

.field private final mToAlpha:F

.field private final xY:F

.field private final yY:F


# direct methods
.method constructor <init>(FFIIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    iput p1, p0, mFromAlpha:F

    iput p2, p0, mToAlpha:F

    int-to-float p1, p3

    iput p1, p0, xY:F

    int-to-float p1, p4

    iput p1, p0, yY:F

    iput-wide p5, p0, mDuration:J

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;J)V
    .locals 2

    long-to-float p3, p3

    invoke-virtual {p0}, getDuration()J

    move-result-wide v0

    long-to-float p4, v0

    div-float/2addr p3, p4

    iget-object p4, p0, mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {p4, p3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p3

    iget p4, p0, mToAlpha:F

    iget v0, p0, mFromAlpha:F

    sub-float/2addr p4, v0

    mul-float/2addr p4, p3

    add-float/2addr p4, v0

    iget v0, p0, yY:F

    iget p0, p0, xY:F

    sub-float/2addr v0, p0

    mul-float/2addr p3, v0

    add-float/2addr p3, p0

    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDuration()J
    .locals 2

    iget-wide v0, p0, mDuration:J

    return-wide v0
.end method

.method public writeToProtoInner(Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    return-void
.end method
