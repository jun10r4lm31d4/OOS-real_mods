.class public final Lcom/android/server/pm/PackageManagerService$PmsInner;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstallArgsForExisting(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService;->access$8800(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/android/server/pm/PackageManagerService$InstallArgs;

    move-result-object v0

    return-object v0
.end method

.method public deletePackageX(Ljava/lang/String;JII)V
    .locals 9

    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    new-instance v8, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/pm/-$$Lambda$PackageManagerService$PmsInner$g_V68XetX7Bf2Wrc3aNj9_nv3dA;-><init>(Lcom/android/server/pm/PackageManagerService$PmsInner;Ljava/lang/String;JII)V

    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$deletePackageX$0$PackageManagerService$PmsInner(Ljava/lang/String;JII)V
    .locals 6

    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->deletePackageX(Ljava/lang/String;JII)I

    return-void
.end method

.method public queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService;->access$9100(Lcom/android/server/pm/PackageManagerService;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public resetUserChangesToRuntimePermissionsAndFlagsLPw(I)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/pm/PackageManagerService;->access$9000(Lcom/android/server/pm/PackageManagerService;I)V

    return-void
.end method

.method public scanDirLI(Ljava/io/File;IIJ)V
    .locals 6

    iget-object v0, p0, this$0:Lcom/android/server/pm/PackageManagerService;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/PackageManagerService;->access$8900(Lcom/android/server/pm/PackageManagerService;Ljava/io/File;IIJ)V

    return-void
.end method