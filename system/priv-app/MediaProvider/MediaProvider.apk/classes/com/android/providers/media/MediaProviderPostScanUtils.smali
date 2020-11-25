.class public Lcom/android/providers/media/MediaProviderPostScanUtils;
.super Ljava/lang/Object;
.source "MediaProviderPostScanUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaProviderPostScanUtils"

.field private static sIsFullScanning:Z

.field private static sPostScanPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, sPostScanPathList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    sput-boolean v0, sIsFullScanning:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, sPostScanPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static appendScanQueue(Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/android/providers/media/MediaProvider;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appendScanQueue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaProviderPostScanUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, sPostScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method static executePostScan(Landroid/content/Context;)V
    .locals 2

    sget-object v0, sPostScanPathList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/providers/media/MediaProviderPostScanUtils$1;

    invoke-direct {v1, p0}, Lcom/android/providers/media/MediaProviderPostScanUtils$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method static isFullScanning()Z
    .locals 1

    sget-boolean v0, sIsFullScanning:Z

    return v0
.end method

.method static onFullScanning(Z)V
    .locals 0

    sput-boolean p0, sIsFullScanning:Z

    return-void
.end method
