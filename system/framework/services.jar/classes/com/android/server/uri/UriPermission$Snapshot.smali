.class public Lcom/android/server/uri/UriPermission$Snapshot;
.super Ljava/lang/Object;
.source "UriPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Snapshot"
.end annotation


# instance fields
.field final persistedCreateTime:J

.field final persistedModeFlags:I

.field final sourcePkg:Ljava/lang/String;

.field final targetPkg:Ljava/lang/String;

.field final targetUserId:I

.field final uri:Lcom/android/server/uri/GrantUri;


# direct methods
.method private constructor <init>(Lcom/android/server/uri/UriPermission;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/android/server/uri/UriPermission;->targetUserId:I

    iput v0, p0, targetUserId:I

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->sourcePkg:Ljava/lang/String;

    iput-object v0, p0, sourcePkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->targetPkg:Ljava/lang/String;

    iput-object v0, p0, targetPkg:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/uri/UriPermission;->uri:Lcom/android/server/uri/GrantUri;

    iput-object v0, p0, uri:Lcom/android/server/uri/GrantUri;

    iget v0, p1, Lcom/android/server/uri/UriPermission;->persistedModeFlags:I

    iput v0, p0, persistedModeFlags:I

    iget-wide v0, p1, Lcom/android/server/uri/UriPermission;->persistedCreateTime:J

    iput-wide v0, p0, persistedCreateTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriPermission;Lcom/android/server/uri/UriPermission$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/uri/UriPermission;)V

    return-void
.end method
