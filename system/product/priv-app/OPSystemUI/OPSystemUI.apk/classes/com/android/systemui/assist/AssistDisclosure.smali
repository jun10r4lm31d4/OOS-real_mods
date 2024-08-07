.class public Lcom/android/systemui/assist/AssistDisclosure;
.super Ljava/lang/Object;
.source "AssistDisclosure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

.field private mViewAdded:Z

.field private final mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistDisclosure$1;-><init>(Lcom/android/systemui/assist/AssistDisclosure;)V

    iput-object v0, p0, mShowRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, mContext:Landroid/content/Context;

    iput-object p2, p0, mHandler:Landroid/os/Handler;

    iget-object p1, p0, mContext:Landroid/content/Context;

    const-class p2, Landroid/view/WindowManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, mWm:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    invoke-direct {p0}, show()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    invoke-direct {p0}, hide()V

    return-void
.end method

.method private hide()V
    .locals 2

    iget-boolean v0, p0, mViewAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mWm:Landroid/view/WindowManager;

    iget-object v1, p0, mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, mViewAdded:Z

    :cond_0
    return-void
.end method

.method private show()V
    .locals 4

    iget-object v0, p0, mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;-><init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V

    iput-object v0, p0, mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    :cond_0
    iget-boolean v0, p0, mViewAdded:Z

    if-nez v0, :cond_1

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7df

    const v2, 0x80508

    const/4 v3, -0x3

    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    const-string v1, "AssistDisclosure"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, mWm:Landroid/view/WindowManager;

    iget-object v2, p0, mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, mViewAdded:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public postShow()V
    .locals 2

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object v1, p0, mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    iget-object p0, p0, mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
