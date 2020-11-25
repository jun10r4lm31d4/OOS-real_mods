.class final Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV14.java"


# annotations
.annotation build Lcom/oneplus/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AutoNightModeManager"
.end annotation


# instance fields
.field private mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

.field private mIsNight:Z

.field private mTwilightManager:Lcom/oneplus/lib/app/appcompat/TwilightManager;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;Lcom/oneplus/lib/app/appcompat/TwilightManager;)V
    .locals 1
    .param p1    # Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mTwilightManager:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    invoke-virtual {p2}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->isNight()Z

    move-result v0

    iput-boolean v0, p0, mIsNight:Z

    return-void
.end method


# virtual methods
.method final cleanup()V
    .locals 2

    iget-object v0, p0, mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v1, p0, mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    return-void
.end method

.method final dispatchTimeChanged()V
    .locals 2

    iget-object v0, p0, mTwilightManager:Lcom/oneplus/lib/app/appcompat/TwilightManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/TwilightManager;->isNight()Z

    move-result v0

    iget-boolean v1, p0, mIsNight:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, mIsNight:Z

    iget-object v1, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->applyDayNight()Z

    :cond_0
    return-void
.end method

.method final getApplyableNightMode()I
    .locals 1

    iget-boolean v0, p0, mIsNight:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method final setup()V
    .locals 3

    invoke-virtual {p0}, cleanup()V

    iget-object v0, p0, mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager$1;-><init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14$AutoNightModeManager;)V

    iput-object v0, p0, mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    :cond_0
    iget-object v0, p0, mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    iget-object v0, p0, mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV14;->mContext:Landroid/content/Context;

    iget-object v1, p0, mAutoTimeChangeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, mAutoTimeChangeReceiverFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
