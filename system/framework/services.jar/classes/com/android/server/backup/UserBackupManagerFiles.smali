.class final Lcom/android/server/backup/UserBackupManagerFiles;
.super Ljava/lang/Object;
.source "UserBackupManagerFiles.java"


# static fields
.field private static final BACKUP_PERSISTENT_DIR:Ljava/lang/String; = "backup"

.field private static final BACKUP_STAGING_DIR:Ljava/lang/String; = "backup_stage"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBaseDir(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static getBaseStateDir(I)Ljava/io/File;
    .locals 3

    const-string v0, "backup"

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, getBaseDir(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getDataDir(I)Ljava/io/File;
    .locals 3

    const-string v0, "backup_stage"

    if-eqz p0, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-static {p0}, getBaseDir(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method static getStateDirInSystemDir(I)Ljava/io/File;
    .locals 4

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, getBaseStateDir(I)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static getStateFileInSystemDir(Ljava/lang/String;I)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {p1}, getStateDirInSystemDir(I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
