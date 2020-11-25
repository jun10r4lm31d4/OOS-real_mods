.class Lcom/android/server/pm/UserManagerService$UserData;
.super Ljava/lang/Object;
.source "UserManagerService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserData"
.end annotation


# instance fields
.field account:Ljava/lang/String;

.field info:Landroid/content/pm/UserInfo;

.field private mLastRequestQuietModeEnabledMillis:J

.field persistSeedData:Z

.field seedAccountName:Ljava/lang/String;

.field seedAccountOptions:Landroid/os/PersistableBundle;

.field seedAccountType:Ljava/lang/String;

.field startRealtime:J

.field unlockRealtime:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method clearSeedAccountData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, seedAccountName:Ljava/lang/String;

    iput-object v0, p0, seedAccountType:Ljava/lang/String;

    iput-object v0, p0, seedAccountOptions:Landroid/os/PersistableBundle;

    const/4 v0, 0x0

    iput-boolean v0, p0, persistSeedData:Z

    return-void
.end method

.method getLastRequestQuietModeEnabledMillis()J
    .locals 2

    iget-wide v0, p0, mLastRequestQuietModeEnabledMillis:J

    return-wide v0
.end method

.method setLastRequestQuietModeEnabledMillis(J)V
    .locals 0

    iput-wide p1, p0, mLastRequestQuietModeEnabledMillis:J

    return-void
.end method
