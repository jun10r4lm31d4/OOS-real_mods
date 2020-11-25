.class public Lcom/oneplus/settings/gestures/OPGestureShortCutListSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPGestureShortCutListSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "OPGestureShortCutListSettings"


# instance fields
.field private mAPPOPGestureAppModel:Lcom/oneplus/settings/gestures/OPGestureAppModel;

.field private mAppDrawable:Landroid/graphics/drawable/Drawable;

.field private mApplicationInfo:Landroid/content/pm/ApplicationInfo;

.field private mGestureAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/gestures/OPGestureAppModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGestureKey:Ljava/lang/String;

.field private mGesturePackage:Ljava/lang/String;

.field private mGestureShortcutListView:Landroid/widget/ListView;

.field private mGestureSummary:Ljava/lang/String;

.field private mGestureUid:I

.field private mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mShortcutInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mGestureAppList:Ljava/util/List;

    return-void
.end method

.method private initData()V
    .locals 11

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iget-object v1, p0, mGesturePackage:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->loadShortCuts(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, mShortcutInfo:Ljava/util/List;

    iget-object v1, p0, mShortcutInfo:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, mGestureAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    iget-object v2, p0, mGesturePackage:Ljava/lang/String;

    iget-object v3, p0, mTitle:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, ""

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v2, p0, mAppDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, mGestureAppList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, mShortcutInfo:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    iget-object v5, p0, mShortcutInfo:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ShortcutInfo;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v6

    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v6

    :cond_2
    new-instance v7, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10, v4}, Lcom/oneplus/settings/gestures/OPGestureAppModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :try_start_0
    iget-object v8, p0, mGesturePackage:Ljava/lang/String;

    invoke-virtual {p0, v8, v4}, createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getIconResourceId()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->setAppIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    iget-object v8, p0, mGestureAppList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private initView()V
    .locals 5

    const v0, 0x7f0a04bc

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, mGestureShortcutListView:Landroid/widget/ListView;

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iget-object v1, p0, mGestureShortcutListView:Landroid/widget/ListView;

    const v2, 0x7f08056a

    const v3, 0x7f080569

    const v4, 0x7f070384

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->setListDivider(Landroid/content/Context;Landroid/widget/ListView;III)V

    iget-object v0, p0, mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private openApps(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V
    .locals 4

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mGestureUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private openShortCuts(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V
    .locals 5

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenShortcut:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/settings/gestures/OPGestureAppModel;->getShortCutId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, mGestureUid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private refreshList()V
    .locals 4

    invoke-direct {p0}, initData()V

    iget-object v0, p0, mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getGesturePackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, mGestureKey:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OpenApp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, mGesturePackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, mGesturePackage:Ljava/lang/String;

    iget-object v1, p0, mGestureKey:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutIdByGestureKey(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/oneplus/settings/gestures/OPGestureUtils;->getShortCutsNameByID(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, mGestureSummary:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    iget-object v1, p0, mGestureAppList:Ljava/util/List;

    iget-object v2, p0, mGestureSummary:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, mTitle:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v2, p0, mGestureSummary:Ljava/lang/String;

    :goto_0
    invoke-direct {v0, p0, v1, v2}, Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V

    iput-object v0, p0, mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    iget-object v0, p0, mGestureShortcutListView:Landroid/widget/ListView;

    iget-object v1, p0, mOPGestureShortcutsAdapter:Lcom/oneplus/settings/gestures/OPGestureShortcutsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01ce

    invoke-virtual {p0, v0}, setContentView(I)V

    invoke-virtual {p0}, getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "op_gesture_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mGestureKey:Ljava/lang/String;

    const-string v1, "op_gesture_package"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mGesturePackage:Ljava/lang/String;

    const-string v1, "op_gesture_package_uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, mGestureUid:I

    const-string v1, "op_gesture_package_app"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, mTitle:Ljava/lang/String;

    invoke-virtual {p0}, getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    iget-object v2, p0, mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    :try_start_0
    iget-object v2, p0, mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v3, p0, mGesturePackage:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, mApplicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, mAppDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    invoke-direct {p0}, initView()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, mGestureShortcutListView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/gestures/OPGestureAppModel;

    if-eqz p3, :cond_0

    invoke-direct {p0, v0}, openShortCuts(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, openApps(Lcom/oneplus/settings/gestures/OPGestureAppModel;)V

    nop

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, setResult(I)V

    invoke-virtual {p0}, finish()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-direct {p0}, refreshList()V

    return-void
.end method
