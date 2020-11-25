.class Lcom/oneplus/android/server/scene/ear;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/vju;->fv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/vju;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/vju;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/bud;->igw(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method
