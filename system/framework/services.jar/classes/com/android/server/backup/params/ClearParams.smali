.class public Lcom/android/server/backup/params/ClearParams;
.super Ljava/lang/Object;
.source "ClearParams.java"


# instance fields
.field public listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

.field public packageInfo:Landroid/content/pm/PackageInfo;

.field public transportClient:Lcom/android/server/backup/transport/TransportClient;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/transport/TransportClient;Landroid/content/pm/PackageInfo;Lcom/android/server/backup/internal/OnTaskFinishedListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, transportClient:Lcom/android/server/backup/transport/TransportClient;

    iput-object p2, p0, packageInfo:Landroid/content/pm/PackageInfo;

    iput-object p3, p0, listener:Lcom/android/server/backup/internal/OnTaskFinishedListener;

    return-void
.end method
