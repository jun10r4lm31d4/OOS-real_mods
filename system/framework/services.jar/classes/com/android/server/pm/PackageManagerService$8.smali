.class Lcom/android/server/pm/PackageManagerService$8;
.super Landroid/database/ContentObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->systemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 9

    iget-object v0, p0, val$resolver:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "enable_ephemeral_feature"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v3

    array-length v4, v3

    move v5, v2

    :goto_1
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    if-nez v0, :cond_2

    iget-object v7, p0, val$resolver:Landroid/content/ContentResolver;

    const-string v8, "instant_apps_enabled"

    invoke-static {v7, v8, v1, v6}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    move v7, v2

    goto :goto_3

    :cond_2
    :goto_2
    move v7, v1

    :goto_3
    iget-object v8, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8}, Lcom/android/server/pm/PackageManagerService;->access$4700(Lcom/android/server/pm/PackageManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method
