.class Lcom/oneplus/android/server/wifi/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/wifi/sis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/wifi/sis;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/wifi/sis;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {v2}, Lcom/oneplus/android/server/wifi/sis;->zta(Lcom/oneplus/android/server/wifi/sis;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/wifi/sis;->you(Lcom/oneplus/android/server/wifi/sis;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/wifi/sis;->zta(Lcom/oneplus/android/server/wifi/sis;Landroid/net/wifi/WifiManager;)Landroid/net/wifi/WifiManager;

    return-void

    :cond_0
    iget-object v2, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {v2}, Lcom/oneplus/android/server/wifi/sis;->zta(Lcom/oneplus/android/server/wifi/sis;)Landroid/net/wifi/WifiManager;

    move-result-object v2

    iget-object v3, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {v3}, Lcom/oneplus/android/server/wifi/sis;->sis(Lcom/oneplus/android/server/wifi/sis;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->setQPower(Z)Z

    move-result v2

    const-string v3, "OnePlusQPowerManager"

    if-eqz v2, :cond_1

    iget-object v2, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {v2}, Lcom/oneplus/android/server/wifi/sis;->sis(Lcom/oneplus/android/server/wifi/sis;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-static {v2, v4}, Lcom/oneplus/android/server/wifi/sis;->zta(Lcom/oneplus/android/server/wifi/sis;Z)Z

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setQPower "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {v4}, Lcom/oneplus/android/server/wifi/sis;->sis(Lcom/oneplus/android/server/wifi/sis;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " failed."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set QPower "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/wifi/sis;

    invoke-static {p0}, Lcom/oneplus/android/server/wifi/sis;->sis(Lcom/oneplus/android/server/wifi/sis;)Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " took "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms."

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
