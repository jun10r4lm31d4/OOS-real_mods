.class public abstract Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
.super Ljava/lang/Object;
.source "SoftRestrictedPermissionPolicy.java"


# static fields
.field private static final DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

.field private static final FLAGS_PERMISSION_RESTRICTION_ANY_EXEMPT:I = 0x3800


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;

    invoke-direct {v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$1;-><init>()V

    sput-object v0, DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forPermission(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;Ljava/lang/String;)Lcom/android/server/policy/SoftRestrictedPermissionPolicy;
    .locals 16

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v4, -0x1833add0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eq v0, v4, :cond_2

    const v4, 0x516a29a7

    if-eq v0, v4, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :cond_2
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v6, :cond_3

    sget-object v0, DUMMY_POLICY:Lcom/android/server/policy/SoftRestrictedPermissionPolicy;

    return-object v0

    :cond_3
    if-eqz v1, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v0

    and-int/lit16 v4, v0, 0x3800

    if-eqz v4, :cond_4

    move v5, v6

    :cond_4
    move v4, v5

    invoke-static/range {p0 .. p2}, getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v0

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_2
    new-instance v5, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;

    invoke-direct {v5, v4, v0}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$3;-><init>(ZI)V

    return-object v5

    :cond_6
    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v2}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v7

    and-int/lit16 v0, v7, 0x4000

    if-eqz v0, :cond_7

    move v0, v6

    goto :goto_3

    :cond_7
    move v0, v5

    :goto_3
    move v8, v0

    and-int/lit16 v0, v7, 0x3800

    if-eqz v0, :cond_8

    goto :goto_4

    :cond_8
    move v6, v5

    :goto_4
    invoke-static/range {p0 .. p2}, getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I

    move-result v9

    nop

    invoke-virtual/range {p1 .. p1}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v0

    iget v10, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v10}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_a

    array-length v11, v10

    move v13, v0

    move v12, v5

    :goto_5
    if-ge v12, v11, :cond_b

    aget-object v14, v10, v12

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_0
    invoke-virtual {v4, v14, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    nop

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->hasRequestedLegacyExternalStorage()Z

    move-result v15

    or-int/2addr v13, v15

    goto :goto_6

    :catch_0
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    :cond_9
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    move v13, v0

    :cond_b
    move v0, v13

    goto :goto_7

    :cond_c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v0, 0x0

    const/4 v9, 0x0

    :goto_7
    new-instance v4, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;

    invoke-direct {v4, v8, v0, v6, v9}, Lcom/android/server/policy/SoftRestrictedPermissionPolicy$2;-><init>(ZZZI)V

    return-object v4
.end method

.method private static getMinimumTargetSDK(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/os/UserHandle;)I
    .locals 9

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v1

    move v1, v4

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v6, v2, v1

    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    :try_start_0
    invoke-virtual {v0, v6, v4, p2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/pm/ApplicationInfo;

    move-result-object v7
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget v8, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v5, v8}, Ljava/lang/Integer;->min(II)I

    move-result v5

    goto :goto_1

    :catch_0
    move-exception v7

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v5

    :cond_2
    return v1
.end method


# virtual methods
.method public abstract canBeGranted()Z
.end method

.method public abstract getDesiredOpMode()I
.end method

.method public abstract resolveAppOp()I
.end method

.method public abstract shouldSetAppOpIfNotDefault()Z
.end method
