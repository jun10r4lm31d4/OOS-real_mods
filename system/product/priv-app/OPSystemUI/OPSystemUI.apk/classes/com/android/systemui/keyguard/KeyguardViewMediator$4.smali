.class Lcom/android/systemui/keyguard/KeyguardViewMediator$4;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/oneplus/worklife/OPWLBHelper;->getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/worklife/OPWLBHelper;->sendShutDownBroadcast()V

    iget-object p1, p0, this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p2, 0x1

    invoke-static {p0, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->access$3502(Lcom/android/systemui/keyguard/KeyguardViewMediator;Z)Z

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
