.class public Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGloblaDarkModeSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DEFAULT_VALUE:I = 0x1

.field public static final FLAG_FROM:I = 0x4000000

.field public static final INSTALL_MULTI_APP:I = 0x58

.field public static final OP_FORCE_DARK_MODE:Ljava/lang/String; = "op_force_dark_mode"

.field public static final TAG:Ljava/lang/String; = "OPGloblaDarkModeSettings"

.field private static final TEST_COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final TEST_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field private static mItemClicked:Z


# instance fields
.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/better/OPAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mAppListView:Landroid/widget/ListView;

.field mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field private mDarkModeToggle:Lcom/oneplus/lib/widget/button/OPSwitch;

.field private mFirstLoad:Z

.field private mHandler:Landroid/os/Handler;

.field private mHasTargetUser:Z

.field private mInitPosition:I

.field private mIpm:Landroid/content/pm/IPackageManager;

.field private mIsInCreating:Z

.field private mIsWarnDialogShowing:Z

.field private mLoadingContainer:Landroid/view/View;

.field private mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

.field private mLoadingMessageView:Landroid/widget/TextView;

.field private mNeedReloadData:Z

.field private mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

.field private mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

.field private final mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mToastTip:Landroid/widget/Toast;

.field private mUserManager:Landroid/os/UserManager;

.field private mVibratePattern:[J

.field private mVibrator:Landroid/os/Vibrator;

.field private mWarnDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, mItemClicked:Z

    nop

    const-string v0, "com.oneplus.settings.multiapp/com.oneplus.settings.multiapp.OPBasicDeviceAdminReceiver"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, TEST_COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, mHasTargetUser:Z

    iput-boolean v0, p0, mNeedReloadData:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, mFirstLoad:Z

    iput-boolean v0, p0, mIsWarnDialogShowing:Z

    iput-boolean v0, p0, mIsInCreating:Z

    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$1;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$2;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    iput-object v0, p0, mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$5;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    iput-object v0, p0, mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;
    .locals 1

    iget-object v0, p0, mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;
    .locals 1

    iget-object v0, p0, mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, mItemClicked:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, mItemClicked:Z

    return p0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V
    .locals 0

    invoke-direct {p0}, startLoadData()V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)Landroid/app/ProgressDialog;
    .locals 1

    iget-object v0, p0, mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, mNeedReloadData:Z

    return p1
.end method

.method private initView()V
    .locals 5

    sget-boolean v0, mItemClicked:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-boolean v1, mItemClicked:Z

    return-void

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, mProgressDialog:Landroid/app/ProgressDialog;

    const v0, 0x7f0a049d

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, mAppListView:Landroid/widget/ListView;

    new-instance v0, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    iget-object v2, p0, mAppList:Ljava/util/List;

    invoke-direct {v0, p0, v2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    iget-object v0, p0, mAppListView:Landroid/widget/ListView;

    iget-object v2, p0, mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01cf

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a04bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    const v3, 0x7f0a06d2

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/settings/widget/SwitchBar;

    iput-object v3, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v4, 0x7f120da9

    invoke-virtual {v3, v4, v4}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v1}, Lcom/android/settings/widget/SwitchBar;->setClickable(Z)V

    new-instance v1, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$fsazuE0NxjdMcJTYWmUG8GjWbfs;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$fsazuE0NxjdMcJTYWmUG8GjWbfs;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    iget-object v1, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v3, p0, mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    iget-object v1, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    iget-object v1, p0, mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v1, 0x7f0a03bf

    invoke-virtual {p0, v1}, findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, mLoadingContainer:Landroid/view/View;

    iget-object v1, p0, mLoadingContainer:Landroid/view/View;

    const v3, 0x7f0a03c1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, mLoadingMessageView:Landroid/widget/TextView;

    new-instance v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$4;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    iput-object v1, p0, mLoadingHelper:Lcom/oneplus/lib/util/loading/LoadingHelper;

    iget-object v1, p0, mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    iget-object v3, p0, mLoadingContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->setmLoadingContainer(Landroid/view/View;)V

    invoke-direct {p0}, startLoadData()V

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showTips()V
    .locals 3

    iget-object v0, p0, mToastTip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, mContext:Landroid/content/Context;

    const v1, 0x7f120da7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, mToastTip:Landroid/widget/Toast;

    iget-object v0, p0, mToastTip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startLoadData()V
    .locals 3

    iget-object v0, p0, mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    const/16 v1, 0x3f2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->loadAppMode(I)Ljava/util/Map;

    iget-object v0, p0, mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$initView$1$OPGloblaDarkModeSettings(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, showTips()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic lambda$onResume$0$OPGloblaDarkModeSettings(Landroid/widget/Switch;Z)V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, mItemClicked:Z

    if-eqz p2, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "app_dark_main"

    const-string v2, "main_switch"

    invoke-static {v1, v2, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->enableList(Z)V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;

    invoke-direct {v1, p0, p2}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings$3;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0174

    invoke-virtual {p0, v0}, setContentView(I)V

    iput-object p0, p0, mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, mVibrator:Landroid/os/Vibrator;

    :cond_0
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, mIpm:Landroid/content/pm/IPackageManager;

    const-string v0, "account"

    invoke-virtual {p0, v0}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, mAccountManager:Landroid/accounts/AccountManager;

    const-string v0, "user"

    invoke-virtual {p0, v0}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, mUserManager:Landroid/os/UserManager;

    const-string v0, "appops"

    invoke-virtual {p0, v0}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    iget-object v1, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;-><init>(Landroid/content/Context;Landroid/app/AppOpsManager;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    invoke-direct {p0}, initView()V

    invoke-direct {p0}, registerPackageReceiver()V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x3f2

    const/4 v2, 0x0

    iget-object v3, p0, mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    sput-boolean v0, mItemClicked:Z

    iget-object v0, p0, mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, mAppOpsChangedListener:Landroid/app/AppOpsManager$OnOpChangedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V

    iget-object v0, p0, mPackageBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, mOPGlobleDarkModeApplicationLoader:Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;

    invoke-virtual {v0}, Lcom/oneplus/settings/darkmode/OPGlobleDarkModeApplicationLoader;->releaseAppList()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {p0}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, mVibrator:Landroid/os/Vibrator;

    const/16 v1, 0x3eb

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v0

    iput-object v0, p0, mVibratePattern:[J

    iget-object v0, p0, mVibratePattern:[J

    iget-object v1, p0, mVibrator:Landroid/os/Vibrator;

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    if-lez p3, :cond_1

    add-int/lit8 p3, p3, -0x1

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, mItemClicked:Z

    iget-object v1, p0, mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {v1, p3}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->getSelected(I)Z

    move-result v1

    xor-int/2addr v1, v0

    iget-object v2, p0, mAppList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Oneplus global black  app list item click getAppopsMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OPGloblaDarkModeSettings"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v3

    const/16 v4, 0x68

    const/16 v5, 0x65

    const/16 v6, 0x3f2

    if-ne v3, v5, :cond_2

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/better/OPAppModel;->setDisable(Z)V

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v3, v5, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    if-ne v0, v4, :cond_3

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    const/16 v3, 0x64

    const/16 v4, 0x67

    if-ne v0, v3, :cond_4

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v3, v5, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    if-ne v0, v4, :cond_5

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    const/16 v3, 0x69

    const/16 v5, 0x66

    if-ne v0, v5, :cond_6

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v4, v5, v3}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    if-ne v0, v3, :cond_7

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    :cond_7
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    const/16 v3, 0x6b

    if-ne v0, v3, :cond_8

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    const/16 v3, 0x6a

    if-ne v0, v3, :cond_9

    invoke-virtual {v2, v4}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v3, v5, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    :cond_9
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppopsMode()I

    move-result v0

    const/16 v3, 0x6c

    if-ne v0, v3, :cond_a

    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    :cond_a
    invoke-virtual {v2, v5}, Lcom/oneplus/settings/better/OPAppModel;->setAppopsMode(I)V

    iget-object v0, p0, mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v3

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v6, v3, v4, v5}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :goto_0
    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "app_dark_app"

    const-string v4, "package_name"

    invoke-static {v3, v4, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getVersionCode()I

    move-result v0

    const-string v4, "0"

    if-lez v0, :cond_b

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_b
    move-object v5, v4

    :goto_1
    const-string v6, "version_code"

    invoke-static {v3, v6, v5}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_c

    const-string v4, "1"

    :cond_c
    const-string v5, "app_switch"

    invoke-static {v3, v5, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, mOPGloblaDarkModeAdapter:Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;

    invoke-virtual {v3, p3, v1}, Lcom/oneplus/settings/darkmode/OPGloblaDarkModeAdapter;->setSelected(IZ)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    const/4 v0, 0x0

    sput-boolean v0, mItemClicked:Z

    iget-object v0, p0, mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 5

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_force_dark_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_1

    iget-object v4, p0, mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    iget-object v2, p0, mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v3, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$IDQfUg3wamKbZHcyGaART38ODL4;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/darkmode/-$$Lambda$OPGloblaDarkModeSettings$IDQfUg3wamKbZHcyGaART38ODL4;-><init>(Lcom/oneplus/settings/darkmode/OPGloblaDarkModeSettings;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-boolean v2, p0, mNeedReloadData:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, mFirstLoad:Z

    if-nez v2, :cond_2

    invoke-direct {p0}, startLoadData()V

    iput-boolean v1, p0, mNeedReloadData:Z

    :cond_2
    iput-boolean v1, p0, mFirstLoad:Z

    return-void
.end method
