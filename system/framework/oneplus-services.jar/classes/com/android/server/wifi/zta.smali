.class public Lcom/android/server/wifi/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wifi/IOpSlaManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "OpSlaManager"


# instance fields
.field private HU:Lcom/android/server/wifi/ire;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enableVerboseLogging(I)V
    .locals 0

    iget-object p0, p0, HU:Lcom/android/server/wifi/ire;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ire;->enableVerboseLogging(I)V

    return-void
.end method

.method public initInstance(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/wifi/ire;

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/server/wifi/ire;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, HU:Lcom/android/server/wifi/ire;

    return-void
.end method

.method public sendWifiScoreToKernel(I)V
    .locals 0

    iget-object p0, p0, HU:Lcom/android/server/wifi/ire;

    invoke-virtual {p0, p1}, Lcom/android/server/wifi/ire;->sendWifiScoreToKernel(I)V

    return-void
.end method
