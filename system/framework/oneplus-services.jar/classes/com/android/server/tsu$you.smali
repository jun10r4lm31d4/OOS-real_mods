.class Lcom/android/server/tsu$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tsu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/tsu;


# direct methods
.method public constructor <init>(Lcom/android/server/tsu;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusChargingGuarder"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "charging_guarder_enabled"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p2}, Lcom/android/server/tsu;->kth(Lcom/android/server/tsu;)Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;I)I

    iget-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p1}, Lcom/android/server/tsu;->bio(Lcom/android/server/tsu;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "appid"

    const-string v1, "NYNCG4I0TI"

    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "switch"

    invoke-virtual {p2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v1}, Lcom/android/server/tsu;->bio(Lcom/android/server/tsu;)Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iget-object v3, p0, this$0:Lcom/android/server/tsu;

    invoke-static {v3}, Lcom/android/server/tsu;->igw(Lcom/android/server/tsu;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3, v0, p2, p1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_1
    iget-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p1}, Lcom/android/server/tsu;->zta(Lcom/android/server/tsu;)I

    move-result p1

    if-ne p1, v2, :cond_3

    :cond_2
    iget-object p0, p0, this$0:Lcom/android/server/tsu;

    invoke-static {p0}, Lcom/android/server/tsu;->wtn(Lcom/android/server/tsu;)Lcom/android/server/tsu$sis;

    move-result-object p0

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void
.end method
