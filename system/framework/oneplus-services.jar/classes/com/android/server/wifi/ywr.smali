.class Lcom/android/server/wifi/ywr;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/qbh;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/qbh;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/qbh;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/wifi/qbh;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    iget-object p0, p0, this$1:Lcom/android/server/wifi/qbh;

    iget-object p0, p0, Lcom/android/server/wifi/qbh;->this$0:Lcom/android/server/wifi/ire;

    invoke-static {p0}, Lcom/android/server/wifi/ire;->gck(Lcom/android/server/wifi/ire;)V

    return-void
.end method
