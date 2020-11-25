.class public Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;
.super Landroidx/preference/Preference;
.source "OPViewPagerGuideCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final BACK_ANIM_INDEX:I = 0x3

.field private static final HOME_ANIM_INDEX:I = 0x1

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field private static final LAND_ANIM_INDEX:I = 0x4

.field public static final LAND_TYPE:I = 0x2

.field private static final PREVIOUS_APP_ANIM_INDEX:I = 0x0

.field private static final RECENT_ANIM_INDEX:I = 0x2

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x3

.field private static final TYPE_HIDE_NAVIGATION_BAR:I = 0x2

.field public static final VERTICAL_TYPE:I = 0x1


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAnimationDarkId:[Ljava/lang/String;

.field private mAnimationWhiteId:[Ljava/lang/String;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrIndex:I

.field private mCurrentType:I

.field private mDescriptionId:[I

.field private mDotContainer:Lcom/oneplus/lib/design/widget/OPPageIndicator;

.field private mGuideViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHasInited:Z

.field private mLayoutItemID:I

.field private mLayoutResId:I

.field private mTitleId:[I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0258

    iput v0, p0, mLayoutResId:I

    const/4 v0, 0x0

    iput v0, p0, mCurrIndex:I

    iput-boolean v0, p0, mHasInited:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGuideViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, mCurrentType:I

    const v0, 0x7f0d025a

    iput v0, p0, mLayoutItemID:I

    invoke-direct {p0, p1}, initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0258

    iput v0, p0, mLayoutResId:I

    const/4 v0, 0x0

    iput v0, p0, mCurrIndex:I

    iput-boolean v0, p0, mHasInited:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGuideViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, mCurrentType:I

    const v0, 0x7f0d025a

    iput v0, p0, mLayoutItemID:I

    invoke-direct {p0, p1}, initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d0258

    iput v0, p0, mLayoutResId:I

    const/4 v0, 0x0

    iput v0, p0, mCurrIndex:I

    iput-boolean v0, p0, mHasInited:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGuideViews:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, mCurrentType:I

    const v0, 0x7f0d025a

    iput v0, p0, mLayoutItemID:I

    invoke-direct {p0, p1}, initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, mGuideViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;I)I
    .locals 0

    iput p1, p0, mCurrIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)Lcom/oneplus/lib/design/widget/OPPageIndicator;
    .locals 1

    iget-object v0, p0, mDotContainer:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    return-object v0
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, mContext:Landroid/content/Context;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, mContentResolver:Landroid/content/ContentResolver;

    iget v0, p0, mLayoutResId:I

    invoke-virtual {p0, v0}, setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public initViewPage()V
    .locals 7

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, mTitleId:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    iget v2, p0, mLayoutItemID:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a02cf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, mTitleId:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    const v4, 0x7f0a02cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v5, p0, mDescriptionId:[I

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    const v5, 0x7f0a02cc

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v6, p0, mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, mAnimationDarkId:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    iget-object v6, p0, mAnimationWhiteId:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v1, v2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, showDotView(Z)V

    :cond_2
    new-instance v1, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$1;-><init>(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)V

    iget-object v3, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v3, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v3, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v4, p0, mCurrIndex:I

    invoke-virtual {v3, v4}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    iget-object v3, p0, mDotContainer:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setNumPages(I)V

    iget-object v3, p0, mDotContainer:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    iget-object v4, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v4}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setLocation(F)V

    iput-boolean v2, p0, mHasInited:Z

    invoke-virtual {p0}, startAnim()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a04f2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/design/widget/OPPageIndicator;

    iput-object v0, p0, mDotContainer:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    const v0, 0x7f0a04f1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mViewPagerContainer:Landroid/view/View;

    const v0, 0x7f0a04f4

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPViewPagerGuideCategory$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPViewPagerGuideCategory;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-virtual {p0}, initViewPage()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public playCurrentPageAnim(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, mGuideViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const v2, 0x7f0a02cc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/airbnb/lottie/LottieAnimationView;

    if-ne p1, v0, :cond_0

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public releaseAnim()V
    .locals 1

    invoke-virtual {p0}, stopAnim()V

    iget-object v0, p0, mGuideViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setAnimationDarkResources([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, mAnimationDarkId:[Ljava/lang/String;

    return-void
.end method

.method public setAnimationWhiteResources([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, mAnimationWhiteId:[Ljava/lang/String;

    return-void
.end method

.method public setDescriptionIdResources([I)V
    .locals 0

    iput-object p1, p0, mDescriptionId:[I

    return-void
.end method

.method public setTitleResources([I)V
    .locals 0

    iput-object p1, p0, mTitleId:[I

    return-void
.end method

.method public setType(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d0259

    iput v0, p0, mLayoutItemID:I

    goto :goto_0

    :cond_1
    const v0, 0x7f0d025a

    iput v0, p0, mLayoutItemID:I

    nop

    :goto_0
    return-void
.end method

.method public showDotView(Z)V
    .locals 2

    iget-object v0, p0, mDotContainer:Lcom/oneplus/lib/design/widget/OPPageIndicator;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public startAnim()V
    .locals 1

    iget-boolean v0, p0, mHasInited:Z

    if-eqz v0, :cond_0

    iget v0, p0, mCurrIndex:I

    invoke-virtual {p0, v0}, playCurrentPageAnim(I)V

    :cond_0
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-boolean v0, p0, mHasInited:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, playCurrentPageAnim(I)V

    :cond_0
    return-void
.end method
