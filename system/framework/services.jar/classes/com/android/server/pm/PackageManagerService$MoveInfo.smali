.class Lcom/android/server/pm/PackageManagerService$MoveInfo;
.super Ljava/lang/Object;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MoveInfo"
.end annotation


# instance fields
.field final appId:I

.field final dataAppName:Ljava/lang/String;

.field final fromUuid:Ljava/lang/String;

.field final moveId:I

.field final packageName:Ljava/lang/String;

.field final seinfo:Ljava/lang/String;

.field final targetSdkVersion:I

.field final toUuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, moveId:I

    iput-object p2, p0, fromUuid:Ljava/lang/String;

    iput-object p3, p0, toUuid:Ljava/lang/String;

    iput-object p4, p0, packageName:Ljava/lang/String;

    iput-object p5, p0, dataAppName:Ljava/lang/String;

    iput p6, p0, appId:I

    iput-object p7, p0, seinfo:Ljava/lang/String;

    iput p8, p0, targetSdkVersion:I

    return-void
.end method
