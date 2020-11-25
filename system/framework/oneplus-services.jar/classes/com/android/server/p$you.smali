.class Lcom/android/server/p$you;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/p;


# direct methods
.method private constructor <init>(Lcom/android/server/p;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/p;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/p;Lcom/android/server/o;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/p;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverHeatingDiagnosis"

    invoke-static {v1, v0}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, this$0:Lcom/android/server/p;

    invoke-static {v0}, Lcom/android/server/p;->ssp(Lcom/android/server/p;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    const/4 p1, 0x0

    const-string v0, "level"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x64

    mul-int/2addr v0, v3

    const-string v4, "scale"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    div-int/2addr v0, v3

    const/4 v3, -0x1

    const-string v4, "status"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "fastcharge_status"

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_2

    move v5, v2

    goto :goto_0

    :cond_2
    move v5, p1

    :goto_0
    if-eqz v5, :cond_3

    const/16 v3, 0x8

    goto :goto_1

    :cond_3
    const-string v5, "plugged"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_1
    const/4 v5, 0x2

    if-eq v4, v5, :cond_4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    :cond_4
    move p1, v2

    :cond_5
    iget-object v4, p0, this$0:Lcom/android/server/p;

    invoke-static {v4}, Lcom/android/server/p;->you(Lcom/android/server/p;)I

    move-result v4

    if-ne v4, v2, :cond_7

    iget-object v4, p0, this$0:Lcom/android/server/p;

    invoke-static {v4}, Lcom/android/server/p;->zta(Lcom/android/server/p;)I

    move-result v4

    and-int/lit8 v4, v4, 0xf

    if-eqz v4, :cond_6

    iget-object v4, p0, this$0:Lcom/android/server/p;

    invoke-static {v4}, Lcom/android/server/p;->cno(Lcom/android/server/p;)Lcom/android/server/p$tsu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/p$tsu;->start()V

    goto :goto_2

    :cond_6
    iget-object v4, p0, this$0:Lcom/android/server/p;

    invoke-static {v4}, Lcom/android/server/p;->cno(Lcom/android/server/p;)Lcom/android/server/p$tsu;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/p$tsu;->stop()V

    :cond_7
    :goto_2
    iget-object v4, p0, this$0:Lcom/android/server/p;

    invoke-static {v4}, Lcom/android/server/p;->kth(Lcom/android/server/p;)I

    move-result v4

    if-eq v0, v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " level="

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, this$0:Lcom/android/server/p;

    invoke-static {p2, v0}, Lcom/android/server/p;->tsu(Lcom/android/server/p;I)I

    iget-object p0, p0, this$0:Lcom/android/server/p;

    invoke-static {p0}, Lcom/android/server/p;->tsu(Lcom/android/server/p;)Lcom/android/server/p$ssp;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v2, v0, v3, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    :cond_8
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, this$0:Lcom/android/server/p;

    invoke-static {p2}, Lcom/android/server/p;->you(Lcom/android/server/p;)I

    move-result p2

    if-ne p2, v2, :cond_9

    if-eqz p1, :cond_9

    iget-object p2, p0, this$0:Lcom/android/server/p;

    invoke-static {p2}, Lcom/android/server/p;->bio(Lcom/android/server/p;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p0, p0, this$0:Lcom/android/server/p;

    invoke-static {p0}, Lcom/android/server/p;->bio(Lcom/android/server/p;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_3
    return-void
.end method
