.class Lcom/android/systemui/statusbar/phone/SettingsButton$1;
.super Ljava/lang/Object;
.source "SettingsButton.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SettingsButton;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SettingsButton;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setAlpha(F)V

    iget-object p1, p0, this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setTranslationX(F)V

    iget-object p0, p0, this$0:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/SettingsButton;->access$000(Lcom/android/systemui/statusbar/phone/SettingsButton;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
