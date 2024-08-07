.class public Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;
.super Landroid/app/Activity;
.source "UninstallUninstalling.java"

# interfaces
.implements Lcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;
    }
.end annotation


# static fields
.field private static final BROADCAST_ACTION:Ljava/lang/String; = "com.android.packageinstaller.ACTION_UNINSTALL_COMMIT"

.field static final EXTRA_APP_LABEL:Ljava/lang/String; = "com.android.packageinstaller.extra.APP_LABEL"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UNINSTALL_ID:Ljava/lang/String; = "com.android.packageinstaller.UNINSTALL_ID"


# instance fields
.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mCallback:Landroid/os/IBinder;

.field private mLabel:Ljava/lang/String;

.field private mReturnResult:Z

.field private mUninstallId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, mLabel:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 18
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "dialog"

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, setFinishOnTouchOutside(Z)V

    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    iput-object v4, v1, mAppInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.content.pm.extra.CALLBACK"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getIBinderExtra(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v1, mCallback:Landroid/os/IBinder;

    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "android.intent.extra.RETURN_RESULT"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, v1, mReturnResult:Z

    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.packageinstaller.extra.APP_LABEL"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, mLabel:Ljava/lang/String;

    const/4 v4, -0x1

    if-nez v2, :cond_2

    :try_start_0
    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "android.intent.extra.USER"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    invoke-virtual/range {p0 .. p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v8}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    new-instance v9, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;

    invoke-direct {v9}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;-><init>()V

    invoke-virtual {v9, v3}, Landroid/app/DialogFragment;->setCancelable(Z)V

    invoke-virtual {v9, v7, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I

    const/high16 v0, -0x80000000

    invoke-static {v1, v0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I

    move-result v0

    iput v0, v1, mUninstallId:I

    new-instance v0, Landroid/content/Intent;

    const-string v10, "com.android.packageinstaller.ACTION_UNINSTALL_COMMIT"

    invoke-direct {v0, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v10, v0

    const/high16 v0, 0x10000000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "EventResultPersister.EXTRA_ID"

    iget v11, v1, mUninstallId:I

    invoke-virtual {v10, v0, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget v0, v1, mUninstallId:I

    const/high16 v11, 0x8000000

    invoke-static {v1, v0, v10, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0
    :try_end_0
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, v0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    move-result-object v12

    new-instance v13, Landroid/content/pm/VersionedPackage;

    iget-object v0, v1, mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v13, v0, v4}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-virtual/range {p0 .. p0}, getPackageName()Ljava/lang/String;

    move-result-object v14

    if-eqz v5, :cond_1

    const/4 v3, 0x2

    :cond_1
    move v15, v3

    invoke-virtual {v11}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v16

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    invoke-interface/range {v12 .. v17}, Landroid/content/pm/IPackageInstaller;->uninstall(Landroid/content/pm/VersionedPackage;Ljava/lang/String;ILandroid/content/IntentSender;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "com.android.packageinstaller.UNINSTALL_ID"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, mUninstallId:I

    iget v0, v1, mUninstallId:I

    invoke-static {v1, v0, v1}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->addObserver(Landroid/content/Context;ILcom/oneplus/settings/packageuninstaller/EventResultPersister$EventResultObserver;)I
    :try_end_2
    .catch Lcom/oneplus/settings/packageuninstaller/EventResultPersister$OutOfIdsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    sget-object v3, LOG_TAG:Ljava/lang/String;

    const-string v5, "Fails to start uninstall"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, onResult(IILjava/lang/String;)V

    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    iget v0, p0, mUninstallId:I

    invoke-static {p0, v0}, Lcom/oneplus/settings/packageuninstaller/UninstallEventReceiver;->removeObserver(Landroid/content/Context;I)V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onResult(IILjava/lang/String;)V
    .locals 5
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, mCallback:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    nop

    invoke-static {v0}, Landroid/content/pm/IPackageDeleteObserver2$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageDeleteObserver2;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1, p2, p3}, Landroid/content/pm/IPackageDeleteObserver2;->onPackageDeleted(Ljava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_2

    :cond_0
    iget-boolean v0, p0, mReturnResult:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_1

    const/4 v1, -0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p0, v1, v0}, setResult(ILandroid/content/Intent;)V

    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    const v0, 0x7f121665

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, mLabel:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v0, v2}, getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    :goto_2
    invoke-virtual {p0}, finish()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, mUninstallId:I

    const-string v1, "com.android.packageinstaller.UNINSTALL_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
