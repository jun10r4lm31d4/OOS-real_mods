.class Lcom/android/server/location/GnssSatelliteBlacklistHelper$1;
.super Landroid/database/ContentObserver;
.source "GnssSatelliteBlacklistHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssSatelliteBlacklistHelper;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/location/GnssSatelliteBlacklistHelper$GnssSatelliteBlacklistCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssSatelliteBlacklistHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssSatelliteBlacklistHelper;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/location/GnssSatelliteBlacklistHelper;

    invoke-virtual {v0}, Lcom/android/server/location/GnssSatelliteBlacklistHelper;->updateSatelliteBlacklist()V

    return-void
.end method