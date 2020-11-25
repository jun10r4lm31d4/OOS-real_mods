.class public Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPDualChannelDownloadAccelerationSettings.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final DUAL_CHANNEL_DOWN_LOAD_APP:I = 0x5a

.field private static final SLA_DOWNLOAD_OPEN_APPS_LIST:Ljava/lang/String; = "sla_download_open_apps_list"


# instance fields
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

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLoadingMessageView:Landroid/widget/TextView;

.field private mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

.field private mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, mAppList:Ljava/util/List;

    new-instance v0, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings$1;-><init>(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;Landroid/os/Looper;)V

    iput-object v0, p0, mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;
    .locals 1

    iget-object v0, p0, mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Lcom/oneplus/settings/apploader/OPApplicationLoader;
    .locals 1

    iget-object v0, p0, mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, mAppList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationSettings;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, mAppListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;
    .locals 1

    iget-object v0, p0, mAppListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/better/OPAppModel;

    return-object v0
.end method

.method private getSlaDownLoadOpenAppsListString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_download_open_apps_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getSlaDownLoadOpenAppsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView()V
    .locals 3

    const v0, 0x7f0a049d

    invoke-virtual {p0, v0}, findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, mAppListView:Landroid/widget/ListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0241

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    new-instance v1, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    iget-object v2, p0, mAppList:Ljava/util/List;

    invoke-direct {v1, p0, v2}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    iget-object v1, p0, mAppListView:Landroid/widget/ListView;

    iget-object v2, p0, mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, mAppListView:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-direct {p0}, startLoadData()V

    return-void
.end method

.method private refreshList(ILcom/oneplus/settings/better/OPAppModel;)V
    .locals 4

    iget-object v0, p0, mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;->getSelected(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, mOPDualChannelDownloadAccelerationAdapter:Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;

    invoke-virtual {v1, p1, v0}, Lcom/oneplus/settings/network/OPDualChannelDownloadAccelerationAdapter;->setSelected(IZ)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0}, getSlaDownLoadOpenAppsListString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/oneplus/settings/utils/OPUtils;->isInSlaDownLoadOpenAppsListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, p2}, getSlaDownLoadOpenAppsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, deleteSlaDownLoadOpenAppString(Lcom/oneplus/settings/better/OPAppModel;)V

    :goto_0
    return-void
.end method

.method private startLoadData()V
    .locals 3

    iget-object v0, p0, mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->initData(ILandroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deleteSlaDownLoadOpenAppString(Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, getSlaDownLoadOpenAppsListString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, getSlaDownLoadOpenAppsString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d0240

    invoke-virtual {p0, v0}, setContentView(I)V

    invoke-virtual {p0}, getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, mContext:Landroid/content/Context;

    invoke-virtual {p0}, getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v1, p0, mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    iget-object v0, p0, mOPApplicationLoader:Lcom/oneplus/settings/apploader/OPApplicationLoader;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->setAppType(I)V

    invoke-direct {p0}, initView()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    if-lez p3, :cond_0

    add-int/lit8 p3, p3, -0x1

    :cond_0
    add-int/lit8 v0, p3, 0x1

    invoke-direct {p0, v0}, getModelWithPosition(I)Lcom/oneplus/settings/better/OPAppModel;

    move-result-object v0

    invoke-direct {p0, p3, v0}, refreshList(ILcom/oneplus/settings/better/OPAppModel;)V

    return-void
.end method

.method public saveSlaDownLoadOpenAppsListStrings(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "sla_download_open_apps_list"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
