.class public Lcom/oneplus/settings/ui/OPCustomTonePreference;
.super Landroidx/preference/Preference;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;
    }
.end annotation


# static fields
.field public static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final SELECT_COLOFUL:I = 0x0

.field private static final SELECT_DARK:I = 0x2

.field private static final SELECT_LIGTH:I = 0x1


# instance fields
.field private adapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private final mPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedIndex:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mItemEntities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPreviewList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f0d0196

    invoke-virtual {p0, v1}, setLayoutResource(I)V

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, mPreviewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, mItemEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 1

    iget-object v0, p0, mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 0

    iput-object p1, p0, mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, adapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method private enableDarkTheme(Z)V
    .locals 2

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 2

    iget v0, p0, mLastIndex:I

    iget v1, p0, mSelectedIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0735

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    new-instance v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f121011

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x7f08055b

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    new-instance v3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f121013

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const v7, 0x7f080561

    invoke-direct {v3, p0, v5, v7, v6}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f121012

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08055e

    invoke-direct {v5, p0, v7, v8, v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    move-object v0, v5

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "oem_black_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x0

    if-ne v1, v6, :cond_0

    iget-object v6, p0, mPreviewList:Ljava/util/List;

    const v7, 0x7f08055c

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, mPreviewList:Ljava/util/List;

    const v7, 0x7f08055d

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, mLastIndex:I

    iput v5, p0, mSelectedIndex:I

    iput-boolean v4, v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v6, p0, mPreviewList:Ljava/util/List;

    const v7, 0x7f080562

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, mPreviewList:Ljava/util/List;

    const v7, 0x7f080563

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v4, p0, mLastIndex:I

    iput v4, p0, mSelectedIndex:I

    iput-boolean v4, v3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    iget-object v7, p0, mPreviewList:Ljava/util/List;

    const v8, 0x7f08055f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, mPreviewList:Ljava/util/List;

    const v8, 0x7f080560

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, p0, mLastIndex:I

    iput v6, p0, mSelectedIndex:I

    iput-boolean v4, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    :cond_2
    :goto_0
    iget-object v4, p0, mItemEntities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, mItemEntities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, mItemEntities:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v8

    const/high16 v9, 0x43480000    # 200.0f

    invoke-static {v7, v9}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v9

    sub-int v9, v8, v9

    neg-int v9, v9

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07039a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v7, v10}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v10, v9}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    new-instance v10, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;

    invoke-direct {v10, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object v10, p0, adapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v10, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v11, p0, adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v10, 0x7f0a01ba

    invoke-virtual {p1, v10}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v10, p0, mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {p0}, getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v11, p0, mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v11, v10}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v11, p0, mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v12, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;

    invoke-direct {v12, p0, v5}, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;I)V

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object v5, p0, mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    iget-object v5, p0, mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v11, p0, mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-virtual {v5, v11}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    return-void
.end method

.method public saveSelectedTone()V
    .locals 12

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;Z)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    iget v4, p0, mSelectedIndex:I

    const/4 v5, 0x2

    const-string v6, "#"

    const-string v7, "persist.sys.theme.accentcolor"

    const-string v8, "oneplus_accent_color"

    const-string v9, ""

    const-string v10, "theme_theme"

    if-ne v4, v5, :cond_1

    const-string v4, "3"

    invoke-static {v10, v10, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v1}, enableDarkTheme(Z)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_black_mode_accent_color"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v8, v1, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    if-ne v4, v1, :cond_3

    const-string v1, "2"

    invoke-static {v10, v10, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v11}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v11}, enableDarkTheme(Z)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "oem_white_mode_accent_color"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v8, v1, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "1"

    invoke-static {v10, v10, v1}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1, v5}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v11}, enableDarkTheme(Z)V

    iget-object v1, p0, mContext:Landroid/content/Context;

    const v4, 0x7f0603e1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v8, v1, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-static {v7, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v1, "oneplus_accentcolor"

    invoke-virtual {v2, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method
