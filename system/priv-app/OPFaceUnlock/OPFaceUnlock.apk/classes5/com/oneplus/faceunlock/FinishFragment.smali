.class public Lcom/oneplus/faceunlock/FinishFragment;
.super Landroid/app/Fragment;
.source "FinishFragment.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private m_CancelButton:Landroid/widget/Button;

.field private m_DescriptionTextView:Landroid/widget/TextView;

.field private m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

.field private m_Handler:Landroid/os/Handler;

.field private m_IconImageView:Landroid/widget/ImageView;

.field private m_NextButton:Landroid/widget/Button;

.field private m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

.field private m_ScrollViewContainer:Landroid/view/View;

.field private m_SkipButton:Landroid/widget/Button;

.field private m_TitleTextView:Landroid/widget/TextView;

.field private m_TryAgainButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/faceunlock/FinishFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, setRetainInstance(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, m_Handler:Landroid/os/Handler;

    return-void
.end method

.method private finishActivity(I)V
    .locals 1

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onResume$4()V
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v1, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getBottom()I

    move-result v1

    iget-object v2, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->fullScroll(I)Z

    goto :goto_0
.end method

.method private resetToIntroduction()V
    .locals 2

    iget-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    sget-object v1, Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;->FACE_EXTRACTION:Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;

    invoke-virtual {v0, v1}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->setFragmentType(Lcom/oneplus/faceunlock/FaceUnlockActivity$FragmentType;)V

    goto :goto_0
.end method

.method private updateScrollViewMargin()V
    .locals 9

    const v8, 0x7f030012

    const/4 v7, 0x0

    invoke-virtual {p0}, getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/faceunlock/utils/StatusBarUtils;->getStatusBarHeight(Landroid/app/Activity;)I

    move-result v3

    const/4 v1, 0x0

    iget-object v4, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v4}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getStartMode()Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    move-result-object v2

    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "statsbarHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/oneplus/faceunlock/FinishFragment$1;->$SwitchMap$com$oneplus$faceunlock$FaceUnlockActivity$StartMode:[I

    invoke-virtual {v2}, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :goto_0
    :pswitch_0
    iget-object v4, p0, m_ScrollViewContainer:Landroid/view/View;

    invoke-virtual {v4, v7, v1, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    return-void

    :pswitch_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/oneplus/faceunlock/utils/Utils;->isHydrogenOS()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030010

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f030011

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private updateScrollViewWeight()V
    .locals 8

    iget-object v3, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    if-eqz v3, :cond_0

    iget-object v3, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v4, v3

    const-wide v6, 0x3ffe666666666666L    # 1.9

    cmpg-double v3, v4, v6

    if-gez v3, :cond_2

    const v2, 0x3f63d70a    # 0.89f

    :goto_1
    iget-object v3, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    invoke-virtual {v3}, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScrollViewWeight() - Weight : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1
.end method


# virtual methods
.method final synthetic lambda$onCreateView$0$FinishFragment(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, finishActivity(I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$1$FinishFragment(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, finishActivity(I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$2$FinishFragment(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, finishActivity(I)V

    return-void
.end method

.method final synthetic lambda$onCreateView$3$FinishFragment(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, resetToIntroduction()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onAttach()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/oneplus/faceunlock/FaceUnlockActivity;

    iput-object p1, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v7, 0x0

    const v4, 0x7f060002

    invoke-virtual {p1, v4, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v4, 0x7f050008

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, m_TitleTextView:Landroid/widget/TextView;

    const v4, 0x7f050007

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, m_DescriptionTextView:Landroid/widget/TextView;

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, m_IconImageView:Landroid/widget/ImageView;

    const v4, 0x7f05000d

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, m_NextButton:Landroid/widget/Button;

    iget-object v4, p0, m_NextButton:Landroid/widget/Button;

    new-instance v5, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$0;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$0;-><init>(Lcom/oneplus/faceunlock/FinishFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/high16 v4, 0x7f050000

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, m_CancelButton:Landroid/widget/Button;

    iget-object v4, p0, m_CancelButton:Landroid/widget/Button;

    new-instance v5, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$1;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$1;-><init>(Lcom/oneplus/faceunlock/FinishFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f050014

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, m_SkipButton:Landroid/widget/Button;

    iget-object v4, p0, m_SkipButton:Landroid/widget/Button;

    new-instance v5, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$2;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$2;-><init>(Lcom/oneplus/faceunlock/FinishFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f050018

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, m_TryAgainButton:Landroid/widget/Button;

    iget-object v4, p0, m_TryAgainButton:Landroid/widget/Button;

    new-instance v5, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$3;

    invoke-direct {v5, p0}, Lcom/oneplus/faceunlock/FinishFragment$$Lambda$3;-><init>(Lcom/oneplus/faceunlock/FinishFragment;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v4, 0x7f050012

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    iput-object v4, p0, m_ScrollView:Lcom/oneplus/faceunlock/widget/MaxHeightScrollView;

    const v4, 0x7f050013

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, m_ScrollViewContainer:Landroid/view/View;

    iget-object v4, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v4}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getStartMode()Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    move-result-object v2

    invoke-virtual {p0}, getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v4, "FaceUnlockActivity.ExtractResult"

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v3

    :pswitch_0
    iget-object v4, p0, m_TitleTextView:Landroid/widget/TextView;

    const v5, 0x7f08000f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, m_DescriptionTextView:Landroid/widget/TextView;

    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, m_IconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const v6, 0x7f04000a

    invoke-virtual {v5, v6}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, m_IconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-virtual {v5}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getFixedColorBlue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v4, p0, m_NextButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, m_TitleTextView:Landroid/widget/TextView;

    const v5, 0x7f080010

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v4, p0, m_DescriptionTextView:Landroid/widget/TextView;

    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, m_IconImageView:Landroid/widget/ImageView;

    iget-object v5, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    const v6, 0x7f040008

    invoke-virtual {v5, v6}, Lcom/oneplus/faceunlock/FaceUnlockActivity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object v4, Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;->BOOT_GUIDE:Lcom/oneplus/faceunlock/FaceUnlockActivity$StartMode;

    if-ne v2, v4, :cond_1

    iget-object v4, p0, m_SkipButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    :goto_1
    iget-object v4, p0, m_TryAgainButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v4, p0, m_CancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onDetach()V
    .locals 2

    sget-object v0, TAG:Ljava/lang/String;

    const-string v1, "onDetach()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, m_FaceUnlockActivity:Lcom/oneplus/faceunlock/FaceUnlockActivity;

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    return-void
.end method
