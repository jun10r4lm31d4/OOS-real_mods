.class public Lcom/android/providers/media/LocalCallingIdentity;
.super Ljava/lang/Object;
.source "LocalCallingIdentity.java"


# static fields
.field public static final PERMISSION_IS_LEGACY:I = 0x2

.field public static final PERMISSION_IS_REDACTION_NEEDED:I = 0x4

.field public static final PERMISSION_IS_SYSTEM:I = 0x1

.field public static final PERMISSION_READ_AUDIO:I = 0x8

.field public static final PERMISSION_READ_IMAGES:I = 0x20

.field public static final PERMISSION_READ_VIDEO:I = 0x10

.field public static final PERMISSION_WRITE_AUDIO:I = 0x40

.field public static final PERMISSION_WRITE_IMAGES:I = 0x100

.field public static final PERMISSION_WRITE_VIDEO:I = 0x80


# instance fields
.field private hasPermission:I

.field private hasPermissionResolved:I

.field private ownedIds:[J

.field private packageName:Ljava/lang/String;

.field private packageNameResolved:Z

.field public final packageNameUnchecked:Ljava/lang/String;

.field public final pid:I

.field private sharedPackageNames:[Ljava/lang/String;

.field private sharedPackageNamesResolved:Z

.field private targetSdkVersion:I

.field private targetSdkVersionResolved:Z

.field public final uid:I


# direct methods
.method private constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Llibcore/util/EmptyArray;->LONG:[J

    iput-object v0, p0, ownedIds:[J

    iput p1, p0, pid:I

    iput p2, p0, uid:I

    iput-object p3, p0, packageNameUnchecked:Ljava/lang/String;

    return-void
.end method

.method public static fromBinder(Landroid/content/ContentProvider;)Lcom/android/providers/media/LocalCallingIdentity;
    .locals 3

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackageUnchecked()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_0
    new-instance v0, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v0, v1, v2, p0}, <init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static fromExternal(ILjava/lang/String;)Lcom/android/providers/media/LocalCallingIdentity;
    .locals 2

    new-instance v0, Lcom/android/providers/media/LocalCallingIdentity;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p0, p1}, <init>(IILjava/lang/String;)V

    return-object v0
.end method

.method public static fromSelf()Lcom/android/providers/media/LocalCallingIdentity;
    .locals 4

    new-instance v0, Lcom/android/providers/media/LocalCallingIdentity;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, <init>(IILjava/lang/String;)V

    iget-object v1, v0, packageNameUnchecked:Ljava/lang/String;

    iput-object v1, v0, packageName:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, v0, packageNameResolved:Z

    const/16 v2, 0x2710

    iput v2, v0, targetSdkVersion:I

    iput-boolean v1, v0, targetSdkVersionResolved:Z

    const/4 v1, -0x7

    iput v1, v0, hasPermission:I

    const/4 v1, -0x1

    iput v1, v0, hasPermissionResolved:I

    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    return-object p0
.end method

.method private getPackageNameInternal()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iget v1, p0, uid:I

    iget-object v2, p0, packageNameUnchecked:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    iget-object p0, p0, packageNameUnchecked:Ljava/lang/String;

    return-object p0
.end method

.method private getSharedPackageNamesInternal()[Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget p0, p0, uid:I

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->defeatNullable([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTargetSdkVersionInternal()I
    .locals 2

    :try_start_0
    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_0
    const/16 p0, 0x2710

    return p0
.end method

.method private hasPermissionInternal(I)Z
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/4 v0, 0x4

    if-eq p1, v0, :cond_6

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    const/16 v0, 0x40

    if-eq p1, v0, :cond_2

    const/16 v0, 0x80

    if-eq p1, v0, :cond_1

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget v0, p0, pid:I

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/os/storage/StorageManager;->checkPermissionWriteImages(ZIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget v0, p0, pid:I

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/os/storage/StorageManager;->checkPermissionWriteVideo(ZIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_2
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget v0, p0, pid:I

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/os/storage/StorageManager;->checkPermissionWriteAudio(ZIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_3
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget v0, p0, pid:I

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_4
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget v0, p0, pid:I

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/os/storage/StorageManager;->checkPermissionReadVideo(ZIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_5
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p1

    const-class v0, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/storage/StorageManager;

    iget v0, p0, pid:I

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/os/storage/StorageManager;->checkPermissionReadAudio(ZIILjava/lang/String;)Z

    move-result p0

    return p0

    :cond_6
    invoke-direct {p0}, isRedactionNeededInternal()Z

    move-result p0

    return p0

    :cond_7
    invoke-direct {p0}, isLegacyInternal()Z

    move-result p0

    return p0

    :cond_8
    invoke-direct {p0}, isSystemInternal()Z

    move-result p0

    return p0
.end method

.method private isLegacyInternal()Z
    .locals 7

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v0

    iget v3, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/16 v6, 0x3c

    invoke-static/range {v0 .. v6}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/app/AppOpsManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iget v2, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v3, 0x57

    invoke-virtual {v1, v3, v2, p0}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    if-eqz p0, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private isRedactionNeededInternal()Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, hasPermission(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, pid:I

    iget v3, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v4, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v1, v4, v2, v3, p0}, Landroid/content/PermissionChecker;->checkPermissionForDataDelivery(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSystemInternal()Z
    .locals 10

    iget v0, p0, uid:I

    const/4 v1, 0x1

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget v6, p0, uid:I

    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3c

    const-string v8, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static/range {v3 .. v9}, Landroid/os/storage/StorageManager;->checkPermissionAndAppOp(Landroid/content/Context;ZIILjava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, pid:I

    iget p0, p0, uid:I

    const-string v4, "android.permission.WRITE_MEDIA_STORAGE"

    invoke-virtual {v2, v4, v3, p0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    move p0, v2

    :goto_0
    if-eqz p0, :cond_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, packageNameResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, getPackageNameInternal()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, packageName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, packageNameResolved:Z

    :cond_0
    iget-object p0, p0, packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getSharedPackageNames()[Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, sharedPackageNamesResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, getSharedPackageNamesInternal()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, sharedPackageNames:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, sharedPackageNamesResolved:Z

    :cond_0
    iget-object p0, p0, sharedPackageNames:[Ljava/lang/String;

    return-object p0
.end method

.method public getTargetSdkVersion()I
    .locals 1

    iget-boolean v0, p0, targetSdkVersionResolved:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, getTargetSdkVersionInternal()I

    move-result v0

    iput v0, p0, targetSdkVersion:I

    const/4 v0, 0x1

    iput-boolean v0, p0, targetSdkVersionResolved:Z

    :cond_0
    iget p0, p0, targetSdkVersion:I

    return p0
.end method

.method public hasPermission(I)Z
    .locals 1

    iget v0, p0, hasPermissionResolved:I

    and-int/2addr v0, p1

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, hasPermissionInternal(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, hasPermission:I

    or-int/2addr v0, p1

    iput v0, p0, hasPermission:I

    :cond_0
    iget v0, p0, hasPermissionResolved:I

    or-int/2addr v0, p1

    iput v0, p0, hasPermissionResolved:I

    :cond_1
    iget p0, p0, hasPermission:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOwned(J)Z
    .locals 0

    iget-object p0, p0, ownedIds:[J

    invoke-static {p0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->contains([JJ)Z

    move-result p0

    return p0
.end method

.method isSystemPrelodedApps()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sget-boolean v2, Lcom/android/providers/media/MediaProvider;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "MediaProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSystemPrelodedApps: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p0, :cond_2

    const-string v1, "is"

    goto :goto_2

    :cond_2
    const-string v1, "is not"

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " preloaded on rom"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return p0

    :catch_0
    :cond_4
    return v0
.end method

.method public setOwned(JZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p3, p0, ownedIds:[J

    invoke-static {p3, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object p1

    iput-object p1, p0, ownedIds:[J

    goto :goto_0

    :cond_0
    iget-object p3, p0, ownedIds:[J

    invoke-static {p3, p1, p2}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object p1

    iput-object p1, p0, ownedIds:[J

    :goto_0
    return-void
.end method
