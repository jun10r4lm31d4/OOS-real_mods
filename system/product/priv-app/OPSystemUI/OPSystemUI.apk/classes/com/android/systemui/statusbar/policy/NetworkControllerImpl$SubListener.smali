.class Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubListener;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->access$700(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method