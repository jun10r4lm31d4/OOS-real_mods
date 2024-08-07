.class public Lcom/android/server/policy/OpQuickPay;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/policy/IOpQuickPay;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/OpQuickPay$you;,
        Lcom/android/server/policy/OpQuickPay$sis;,
        Lcom/android/server/policy/OpQuickPay$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final KEY_ACTION_NOTHING:I = 0x0

.field private static final KEY_ACTION_QUICK_PAY:I = 0xb

.field static final OP_QUICK_PAY_BUTTON_TIMEOUT:J = 0x1f40L

.field private static final OP_QUICK_PAY_COMPONENT:Ljava/lang/String; = "OP_QUICK_PAY_DEFAULT"

.field private static QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String; = null

.field private static final QUICK_PAY_CLASS_NAME:Ljava/lang/String; = "com.oneplus.quickpay.PayActivity"

.field private static final QUICK_PAY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.quickpay"

.field private static final TAG:Ljava/lang/String; = "OpQuickPay"


# instance fields
.field mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field mFingerprintForShotEnabled:Z

.field mFloatingButton:Landroid/widget/ImageButton;

.field mFloatingButtonBG:Landroid/widget/ImageView;

.field mHandler:Landroid/os/Handler;

.field mLongPressOnFingerprintBehavior:I

.field mMoveEdgeAnimator:Landroid/animation/ValueAnimator;

.field mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

.field mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

.field mPaymentApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OpQuickPay$zta;",
            ">;"
        }
    .end annotation
.end field

.field mPaymentAppsName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field mQuickPayAlertDialog:Landroid/app/AlertDialog;

.field mQuickPayBtnLaunched:Z

.field mQuickPayBtnView:Landroid/view/View;

.field mQuickPayBtnX:I

.field mQuickPayBtnY:I

.field private mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mQuickPayDefault:I

.field mQuickPayEnabled:Z

.field mQuickPayFocusWin:Ljava/lang/String;

.field mQuickPayFocusWinPid:I

.field mQuickPayMaxWaitTime:J

.field mQuickPayWhich:I

.field mScaleAnimation:Landroid/animation/ObjectAnimator;

.field mScreenHeight:I

.field mScreenWidth:I

.field mWindowManager:Landroid/view/WindowManager;

.field mWindowParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, DEBUG:Z

    const-string v0, "QuickPay_APPS_Config"

    sput-object v0, QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPaymentApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mPaymentAppsName:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    const/4 v1, 0x0

    iput-boolean v1, p0, mQuickPayEnabled:Z

    iput-boolean v1, p0, mQuickPayBtnLaunched:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, mQuickPayMaxWaitTime:J

    iput v1, p0, mQuickPayDefault:I

    const/4 v2, -0x1

    iput v2, p0, mQuickPayWhich:I

    iput v1, p0, mQuickPayBtnX:I

    iput v1, p0, mQuickPayBtnY:I

    iput-object v0, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    new-instance v0, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v0}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v0, p0, mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/OpQuickPay;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/OpQuickPay;)Ljava/util/ArrayList;
    .locals 0

    invoke-direct {p0}, getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/server/policy/OpQuickPay;IZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, startQuickPay(IZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/policy/OpQuickPay;)Landroid/view/WindowManager;
    .locals 0

    invoke-direct {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/policy/OpQuickPay;)V
    .locals 0

    invoke-direct {p0}, disableQuickPayButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/policy/OpQuickPay;)V
    .locals 0

    invoke-direct {p0}, enableQuickPayButton()V

    return-void
.end method

.method private clearQuickPaySwitch(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    iput p1, p0, mQuickPayWhich:I

    :cond_0
    const-string p1, ""

    iput-object p1, p0, mQuickPayFocusWin:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, mQuickPayFocusWinPid:I

    iget-object p1, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method private disableQuickPayButton()V
    .locals 2

    iget-object v0, p0, mQuickPayBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, mQuickPayBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, mQuickPayBtnView:Landroid/view/View;

    :cond_1
    iget-object p0, p0, mQuickPayAlertDialog:Landroid/app/AlertDialog;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2
    sget-object p0, TAG:Ljava/lang/String;

    const-string v0, "Ball disabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enableQuickPayButton()V
    .locals 7

    invoke-direct {p0}, getAvailablePayApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, mQuickPayBtnView:Landroid/view/View;

    if-nez v0, :cond_3

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x50b0084

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, mQuickPayBtnView:Landroid/view/View;

    iget-object v0, p0, mQuickPayBtnView:Landroid/view/View;

    const v1, 0x5080164

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, mFloatingButton:Landroid/widget/ImageButton;

    iget-object v0, p0, mQuickPayBtnView:Landroid/view/View;

    const v1, 0x5080165

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, mFloatingButtonBG:Landroid/widget/ImageView;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d3

    invoke-direct {v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    iput-object v0, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x128

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "QuickPayBall"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x50601d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5070299

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3ff199999999999aL    # 1.1

    mul-double/2addr v3, v5

    double-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-double v3, v1

    mul-double/2addr v3, v5

    double-to-int v1, v3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget v1, p0, mQuickPayBtnX:I

    if-nez v1, :cond_2

    iget v1, p0, mQuickPayBtnY:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, mScreenWidth:I

    sub-int/2addr v2, v0

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, mScreenHeight:I

    sub-int/2addr v2, v0

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int/2addr v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, mQuickPayBtnX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, p0, mQuickPayBtnY:I

    :goto_1
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, mFloatingButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/android/server/policy/cgv;

    invoke-direct {v2, p0, v0}, Lcom/android/server/policy/cgv;-><init>(Lcom/android/server/policy/OpQuickPay;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, mQuickPayBtnView:Landroid/view/View;

    iget-object p0, p0, mWindowParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    sget-object p0, TAG:Ljava/lang/String;

    const-string v0, "Ball enabled"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    :try_start_0
    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getApplicationIcon failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getAvailablePayApps()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/policy/OpQuickPay$zta;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, mPaymentAppsName:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OpQuickPay$zta;

    iget-object v4, v3, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, isPackageAvailable(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, mPaymentAppsName:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v3, Lcom/android/server/policy/OpQuickPay$zta;->BM:Ljava/lang/String;

    iget-object v4, v3, Lcom/android/server/policy/OpQuickPay$zta;->appIcon:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    iget-object v4, v3, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x50600d5

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v4, v1, v1, v5, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iput-object v4, v3, Lcom/android/server/policy/OpQuickPay$zta;->appIcon:Landroid/graphics/drawable/Drawable;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object p0, p0, mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method private isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "\\."

    invoke-direct {p0, p1}, isPackageAvailable(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const-string v1, ""

    if-ne p2, v1, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p0

    array-length v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_5

    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_2

    aget-object v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    if-ge v1, v3, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    if-le v1, v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_5
    :goto_3
    return v2
.end method

.method private isPackageAvailable(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    sget-object p0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not available."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private performKeyAction(ILandroid/view/KeyEvent;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_0

    iget-object p0, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/OpPhoneWindowManager;->performKeyAction(ILandroid/view/KeyEvent;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    sget-object p2, TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KEY_ACTION_QUICK_PAY code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x84

    if-eq p1, p2, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_1

    sget-object p0, TAG:Ljava/lang/String;

    const-string p1, "Keyguard is showing, skip to start QuickPay."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p3, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    const/4 p3, 0x0

    if-ne p1, p2, :cond_2

    move p1, v0

    goto :goto_0

    :cond_2
    move p1, p3

    :goto_0
    invoke-virtual {p0, v0, p1, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    :goto_1
    return-void
.end method

.method private resolveQuickPayConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "[OnlineConfig] QuickPayConfigUpdater, error message:"

    const-string v1, "name"

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_6

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "op_quick_pay_wechat_qrcode_config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v2, v4}, updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "op_quick_pay_wechat_scanning_config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    invoke-direct {p0, v5, v4}, updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "op_quick_pay_alipay_qrcode_config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x2

    invoke-direct {p0, v5, v4}, updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "op_quick_pay_alipay_scanning_config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x3

    invoke-direct {p0, v5, v4}, updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "op_quick_pay_paytm_config"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x4

    invoke-direct {p0, v5, v4}, updateQuickPayIfNeed(ILorg/json/JSONObject;)V

    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    sget-object p0, TAG:Ljava/lang/String;

    const-string p1, "[OnlineConfig] QuickPayConfigUpdater updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    sget-object p1, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :catch_1
    move-exception p0

    sget-object p1, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_2
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private startQuickPay(IZZ)V
    .locals 6

    :try_start_0
    iget-object v0, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, mCurrentUserId:I

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iput-boolean p3, p0, mQuickPayBtnLaunched:Z

    sget-object v0, TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startQuickPay which="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " unlocked="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " fromButton="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/policy/OpQuickPay$zta;

    iget-object p3, p3, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-direct {p0, p3}, isPackageAvailable(Ljava/lang/String;)Z

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p3, :cond_3

    move v2, v1

    :goto_0
    iget-object v3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    if-eq p1, v2, :cond_2

    iget-object v3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/policy/OpQuickPay$zta;

    iget-boolean v4, v3, Lcom/android/server/policy/OpQuickPay$zta;->isDefault:Z

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-direct {p0, v3}, isPackageAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object p1, TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startQuickPay new which="

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v0

    move p1, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz p3, :cond_7

    invoke-direct {p0, v0}, clearQuickPaySwitch(Z)V

    iget-object p3, p0, mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/16 v0, 0x7d0

    invoke-virtual {p3, v1, v0}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    iput p1, p0, mQuickPayWhich:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    add-long/2addr v2, v4

    iput-wide v2, p0, mQuickPayMaxWaitTime:J

    iget-object p3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/policy/OpQuickPay$zta;

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p3, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/wm/OpAppLockerInjector;->addAppLockerPassedPackage(Ljava/lang/String;)V

    iget-object p2, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    const-string v0, "QuickPay start"

    invoke-virtual {p2, v1, v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    :cond_4
    iget-boolean p2, p3, Lcom/android/server/policy/OpQuickPay$zta;->zM:Z

    const v0, 0x10008000

    if-eqz p2, :cond_5

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string p3, "com.oneplus.quickpay"

    const-string v1, "com.oneplus.quickpay.PayActivity"

    invoke-virtual {p2, p3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p3, "OP_QUICK_PAY_DEFAULT"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    sget-object p1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_5
    iget-object p1, p3, Lcom/android/server/policy/OpQuickPay$zta;->className:Ljava/lang/String;

    if-eqz p1, :cond_6

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    iget-object p2, p3, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/server/policy/OpQuickPay$zta;->className:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    :goto_2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_3

    :cond_6
    iget-object p1, p3, Lcom/android/server/policy/OpQuickPay$zta;->xM:Ljava/lang/String;

    if-eqz p1, :cond_8

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    iget-object p3, p3, Lcom/android/server/policy/OpQuickPay$zta;->xM:Ljava/lang/String;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    sget-object p2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    goto :goto_2

    :cond_7
    iget-object p0, p0, mContext:Landroid/content/Context;

    const p1, 0x50f0123

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    sget-object p0, TAG:Ljava/lang/String;

    const-string p1, "startQuickPay have no installed app."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    sget-object p1, TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "startQuickPay failed "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return-void
.end method

.method private updateQuickPayIfNeed(ILorg/json/JSONObject;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "value"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x5

    if-lt v4, v5, :cond_4

    iget-object v4, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_4

    iget-object v4, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/policy/OpQuickPay$zta;

    iget-object v4, v4, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v5, v3, v5

    invoke-direct {p0, v4, v5}, isNewConfig(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/server/policy/OpQuickPay$zta;

    invoke-direct {v4, p0}, Lcom/android/server/policy/OpQuickPay$zta;-><init>(Lcom/android/server/policy/OpQuickPay;)V

    aget-object v5, v3, v0

    iput-object v5, v4, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v6, v3, v5

    const-string v7, "sdk"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    iput-boolean v5, v4, Lcom/android/server/policy/OpQuickPay$zta;->zM:Z

    goto :goto_1

    :cond_0
    aget-object v6, v3, v5

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/android/server/policy/OpQuickPay$zta;->xM:Ljava/lang/String;

    goto :goto_1

    :cond_1
    aget-object v6, v3, v5

    iput-object v6, v4, Lcom/android/server/policy/OpQuickPay$zta;->className:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v4, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v4, Lcom/android/server/policy/OpQuickPay$zta;->className:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/policy/OpQuickPay$zta;->yM:Ljava/lang/String;

    :goto_1
    const/4 v6, 0x2

    aget-object v6, v3, v6

    const-string v7, "default"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iput-boolean v5, v4, Lcom/android/server/policy/OpQuickPay$zta;->isDefault:Z

    :cond_2
    const/4 v5, 0x3

    aget-object v6, v3, v5

    const-string v7, "class"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    aget-object v3, v3, v5

    iput-object v3, v4, Lcom/android/server/policy/OpQuickPay$zta;->yM:Ljava/lang/String;

    :cond_3
    iget-object v3, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public beginLayoutLw(Lcom/android/server/wm/DisplayFrames;I)V
    .locals 0

    iget-object p2, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iput p2, p0, mScreenWidth:I

    iget-object p1, p1, Lcom/android/server/wm/DisplayFrames;->mUnrestricted:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, mScreenHeight:I

    return-void
.end method

.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 7

    iget v0, p0, mQuickPayWhich:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    iget-object v0, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_6

    const-string v0, ""

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, mPaymentApps:Ljava/util/ArrayList;

    iget v3, p0, mQuickPayWhich:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/policy/OpQuickPay$zta;

    iget-object v2, v2, Lcom/android/server/policy/OpQuickPay$zta;->yM:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    if-nez v1, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d0

    if-eq v3, v4, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v4, 0x7d8

    if-eq v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    sget-object v4, TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "focusChangedLw mQuickPayFocusWin="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, mQuickPayFocusWin:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " mQuickPayWhich="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, mQuickPayWhich:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " newFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " lastFocus="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isFocusChanged="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mQuickPayFocusWinPid="

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, mQuickPayFocusWinPid:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    iget p1, p0, mQuickPayFocusWinPid:I

    if-nez p1, :cond_2

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result p1

    iput p1, p0, mQuickPayFocusWinPid:I

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getWindowPid()I

    move-result p1

    iget v1, p0, mQuickPayFocusWinPid:I

    if-eq v1, p1, :cond_3

    iput-object v0, p0, mQuickPayFocusWin:Ljava/lang/String;

    iput v2, p0, mQuickPayFocusWinPid:I

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v1, p0, mPaymentApps:Ljava/util/ArrayList;

    iget v2, p0, mQuickPayWhich:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/policy/OpQuickPay$zta;

    iget-object v1, v1, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_3

    const v1, 0x10008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/ire;

    invoke-direct {v2, p0, p1}, Lcom/android/server/policy/ire;-><init>(Lcom/android/server/policy/OpQuickPay;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_2
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, mQuickPayFocusWin:Ljava/lang/String;

    if-eq v1, v0, :cond_4

    if-eq v1, p1, :cond_6

    iget-object v0, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    if-eqz v0, :cond_6

    :cond_4
    iput-object p1, p0, mQuickPayFocusWin:Ljava/lang/String;

    iget-object p1, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_5
    if-eqz v3, :cond_6

    iget-object p1, p0, mQuickPayFocusWin:Ljava/lang/String;

    if-eq p1, v0, :cond_6

    invoke-direct {p0, v2}, clearQuickPaySwitch(Z)V

    :cond_6
    :goto_3
    return-void
.end method

.method public initOpQuickPay(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 5

    iput-object p1, p0, mContext:Landroid/content/Context;

    iput-object p2, p0, mHandler:Landroid/os/Handler;

    iput p3, p0, mCurrentUserId:I

    invoke-static {}, Lcom/android/server/policy/OpPhoneWindowManagerInjector;->getInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/OpPhoneWindowManager;

    iput-object p1, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x502002d

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, mPaymentApps:Ljava/util/ArrayList;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge p3, v0, :cond_5

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-lt v2, v1, :cond_4

    new-instance v1, Lcom/android/server/policy/OpQuickPay$zta;

    invoke-direct {v1, p0}, Lcom/android/server/policy/OpQuickPay$zta;-><init>(Lcom/android/server/policy/OpQuickPay;)V

    iput p3, v1, Lcom/android/server/policy/OpQuickPay$zta;->index:I

    aget-object v2, v0, p2

    iput-object v2, v1, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v3, v0, v2

    const-string v4, "sdk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput-boolean v2, v1, Lcom/android/server/policy/OpQuickPay$zta;->zM:Z

    goto :goto_1

    :cond_0
    aget-object v3, v0, v2

    const-string v4, "://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v0, v2

    iput-object v3, v1, Lcom/android/server/policy/OpQuickPay$zta;->xM:Ljava/lang/String;

    goto :goto_1

    :cond_1
    aget-object v3, v0, v2

    iput-object v3, v1, Lcom/android/server/policy/OpQuickPay$zta;->className:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/policy/OpQuickPay$zta;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/policy/OpQuickPay$zta;->yM:Ljava/lang/String;

    :goto_1
    const/4 v3, 0x2

    aget-object v3, v0, v3

    const-string v4, "default"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-boolean v2, v1, Lcom/android/server/policy/OpQuickPay$zta;->isDefault:Z

    :cond_2
    const/4 v2, 0x3

    aget-object v3, v0, v2

    const-string v4, "class"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    aget-object v0, v0, v2

    iput-object v0, v1, Lcom/android/server/policy/OpQuickPay$zta;->yM:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    if-nez p1, :cond_6

    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "QuickPayThread"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p2, Lcom/android/server/policy/OpQuickPay$you;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/policy/OpQuickPay$you;-><init>(Lcom/android/server/policy/OpQuickPay;Landroid/os/Looper;)V

    iput-object p2, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    :cond_6
    invoke-direct {p0}, getWindowManager()Landroid/view/WindowManager;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object p2, p0, mContext:Landroid/content/Context;

    iget-object p3, p0, mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/policy/OpQuickPay$sis;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OpQuickPay$sis;-><init>(Lcom/android/server/policy/OpQuickPay;)V

    sget-object v2, QUICKPAY_APPS_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {p1, p2, p3, v0, v2}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, mQuickPayConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, mOpQuickPayHandler:Lcom/android/server/policy/OpQuickPay$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public interceptKeyBeforeQueueing(Landroid/view/KeyEvent;ZZLcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "Cancelled by "

    const/4 v4, -0x1

    if-eq v0, v1, :cond_9

    const/4 v1, 0x4

    const/4 v5, 0x0

    if-eq v0, v1, :cond_7

    const/16 v1, 0x84

    const/16 v6, 0xb

    if-eq v0, v1, :cond_5

    const/16 v1, 0x85

    if-eq v0, v1, :cond_0

    const/16 p3, 0xbb

    if-eq v0, p3, :cond_9

    goto/16 :goto_0

    :cond_0
    if-eqz p2, :cond_4

    iget-boolean p2, p0, mFingerprintForShotEnabled:Z

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object p2

    const-string p4, "com.oneplus.camera"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    const/16 p1, 0x1b

    invoke-virtual {p0, p1}, Lcom/android/server/policy/OpPhoneWindowManager;->triggerVirtualKeypress(I)V

    return v5

    :cond_1
    iget p2, p0, mLongPressOnFingerprintBehavior:I

    if-ne p2, v6, :cond_3

    if-eqz p3, :cond_2

    iget p2, p0, mCurrentUserId:I

    if-eqz p2, :cond_3

    :cond_2
    return v5

    :cond_3
    sget-object p2, TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "long press on FP: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, mLongPressOnFingerprintBehavior:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget p2, p0, mLongPressOnFingerprintBehavior:I

    if-eqz p2, :cond_4

    iget-object p2, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    const-string p3, "Quick Pay FP longpress"

    invoke-virtual {p2, v5, v5, p3}, Lcom/android/server/policy/PhoneWindowManager;->performHapticFeedback(IZLjava/lang/String;)Z

    iget p2, p0, mLongPressOnFingerprintBehavior:I

    invoke-direct {p0, p2, p1, p5}, performKeyAction(ILandroid/view/KeyEvent;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    :cond_4
    return v5

    :cond_5
    iget-boolean p4, p0, mQuickPayEnabled:Z

    if-eqz p4, :cond_6

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    invoke-direct {p0, v6, p1, p5}, performKeyAction(ILandroid/view/KeyEvent;Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V

    :cond_6
    return v5

    :cond_7
    iget p3, p0, mQuickPayWhich:I

    if-eq p3, v4, :cond_a

    if-eqz p2, :cond_a

    sget-object p2, TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " focus="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_a

    invoke-interface {p4}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 p2, 0x7d8

    if-eq p1, p2, :cond_a

    iget-object p1, p0, mQuickPayBtnView:Landroid/view/View;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, mQuickPayBtnLaunched:Z

    if-eqz p1, :cond_8

    iget-object p1, p0, mOpPhoneWindowManager:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {p1, v5, v2, v5}, Lcom/android/server/policy/PhoneWindowManager;->launchHomeFromHotKey(IZZ)V

    :cond_8
    invoke-direct {p0, v5}, clearQuickPaySwitch(Z)V

    goto :goto_0

    :cond_9
    iget p3, p0, mQuickPayWhich:I

    if-eq p3, v4, :cond_a

    if-eqz p2, :cond_a

    sget-object p2, TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2}, clearQuickPaySwitch(Z)V

    :cond_a
    :goto_0
    return v4
.end method

.method public notifyAppLaunchFailedLw(Ljava/lang/String;)V
    .locals 5

    iget v0, p0, mQuickPayWhich:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, mQuickPayMaxWaitTime:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    iget-object v1, p0, mPaymentApps:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/OpQuickPay$zta;

    iget-object v0, v0, Lcom/android/server/policy/OpQuickPay$zta;->packageName:Ljava/lang/String;

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App Launch Failed, restart: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    invoke-direct {p0, p1}, clearQuickPaySwitch(Z)V

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    const v1, 0x10008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/policy/ear;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/policy/ear;-><init>(Lcom/android/server/policy/OpQuickPay;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public registerObserver(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 2

    const-string p0, "op_quickpay_enable"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "op_quickpay_default_way"

    invoke-static {p0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "op_fingerprint_long_press_action"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p0, "op_fingerprint_long_press_camera_shot"

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p1, p0, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public updateSettings(Landroid/content/ContentResolver;)V
    .locals 6

    const/4 v0, 0x0

    const-string v1, "op_quickpay_enable"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, mQuickPayEnabled:Z

    const-string v1, "op_quickpay_default_way"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, mQuickPayDefault:I

    sget-object v1, TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ScreenOff enabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, mQuickPayEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " which="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, mQuickPayDefault:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, mQuickPayBtnX:I

    if-nez v1, :cond_2

    iget v1, p0, mQuickPayBtnY:I

    if-nez v1, :cond_2

    const-string v1, "quickpay_button_xy"

    invoke-static {p1, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    aget-object v4, v3, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, mQuickPayBtnX:I

    aget-object v3, v3, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, mQuickPayBtnY:I

    :cond_1
    sget-object v3, TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadXY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "op_fingerprint_long_press_action"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, mLongPressOnFingerprintBehavior:I

    const-string v1, "op_fingerprint_long_press_camera_shot"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_3

    move v0, v2

    :cond_3
    iput-boolean v0, p0, mFingerprintForShotEnabled:Z

    return-void
.end method
