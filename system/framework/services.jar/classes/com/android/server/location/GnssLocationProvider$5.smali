.class Lcom/android/server/location/GnssLocationProvider$5;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;-><init>(Landroid/content/Context;Lcom/android/server/location/AbstractLocationProvider$LocationProviderManager;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p0}, getSendingUserId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssLocationProvider;->access$802(Lcom/android/server/location/GnssLocationProvider;Z)Z

    iget-object v0, p0, this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$900(Lcom/android/server/location/GnssLocationProvider;)V

    :cond_0
    return-void
.end method
