.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$MYsjnJHs10NhJPXX4FLFafo9YY8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/biometrics/FaceDialogView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/FaceDialogView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/biometrics/FaceDialogView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/systemui/biometrics/FaceDialogView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->lambda$updateSize$1$FaceDialogView(Landroid/animation/ValueAnimator;)V

    return-void
.end method
