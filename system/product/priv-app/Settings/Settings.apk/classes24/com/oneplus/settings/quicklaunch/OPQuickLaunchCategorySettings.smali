.class public Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;
.super Landroidx/fragment/app/FragmentActivity;
.source "OPQuickLaunchCategorySettings.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# static fields
.field public static final APPLICATION_FRAGMENT_INDEX:I = 0x1

.field private static final APPLICATION_FRAGMENT_TAG:Ljava/lang/String; = "browse_fragment"

.field public static final SHORTCUT_FRAGMENT_INDEX:I = 0x0

.field private static final SHORTCUT_FRAGMENT_TAG:Ljava/lang/String; = "directory_fragment"


# instance fields
.field private mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

.field private mCurrentIndex:I

.field private final mFragmentTitles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

.field private mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

.field private mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, mCurrentIndex:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFragmentTitles:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mFragments:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, mFragmentTitles:Ljava/util/List;

    return-object v0
.end method

.method private initFragments()V
    .locals 5

    invoke-virtual {p0}, getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, mFragmentTitles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, mFragments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const-string v2, "directory_fragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iput-object v3, p0, mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iget-object v3, p0, mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    const v4, 0x7f0a04db

    if-nez v3, :cond_0

    new-instance v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-direct {v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;-><init>()V

    iput-object v3, p0, mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    iget-object v3, p0, mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-virtual {v1, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_0
    iget-object v2, p0, mFragments:Ljava/util/List;

    iget-object v3, p0, mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, mFragmentTitles:Ljava/util/List;

    const v3, 0x7f120fb5

    invoke-virtual {p0, v3}, getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, mShortcutFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchShortCutFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    nop

    const-string v2, "browse_fragment"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iput-object v3, p0, mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iget-object v3, p0, mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    if-nez v3, :cond_1

    new-instance v3, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-direct {v3}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;-><init>()V

    iput-object v3, p0, mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    iget-object v3, p0, mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-virtual {v1, v4, v3, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    :cond_1
    iget-object v2, p0, mFragments:Ljava/util/List;

    iget-object v3, p0, mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, mFragmentTitles:Ljava/util/List;

    const v3, 0x7f120c35

    invoke-virtual {p0, v3}, getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, mApplicationFragment:Lcom/oneplus/settings/quicklaunch/OPQuickLaunchAppFragment;

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    return-void
.end method

.method private initTabLayout()V
    .locals 3

    iget-object v0, p0, mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

    iget-object v1, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v2, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings$1;-><init>(Lcom/oneplus/settings/quicklaunch/OPQuickLaunchCategorySettings;)V

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/quicklaunch/TabUtils;->setupWithViewPager(Lcom/oneplus/lib/widget/OPTabLayout;Landroidx/viewpager/widget/ViewPager;Lcom/oneplus/settings/quicklaunch/TabUtils$OnSetupTabListener;)V

    iget-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, mCurrentIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method

.method private initViewPager()V
    .locals 2

    new-instance v0, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    invoke-virtual {p0}, getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    iget-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, mPagerAdapter:Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;

    iget-object v1, p0, mFragments:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/quicklaunch/OPPagerAdapter;->updateData(Ljava/util/List;)V

    iget-object v0, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    const v0, 0x7f0d0215

    invoke-virtual {p0, v0}, setContentView(I)V

    const v0, 0x7f0a0736

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    invoke-virtual {p0, v0}, setActionBar(Landroid/widget/Toolbar;)V

    invoke-virtual {p0}, getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    :cond_1
    const v2, 0x7f0a04db

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, mViewPager:Landroidx/viewpager/widget/ViewPager;

    const v2, 0x7f0a06e6

    invoke-virtual {p0, v2}, findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPTabLayout;

    iput-object v2, p0, mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-direct {p0}, initFragments()V

    invoke-direct {p0}, initViewPager()V

    invoke-direct {p0}, initTabLayout()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, mTabLayout:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPTabLayout;->getTabAt(I)Lcom/oneplus/lib/widget/OPTabLayout$Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPTabLayout$Tab;->select()V

    return-void
.end method
