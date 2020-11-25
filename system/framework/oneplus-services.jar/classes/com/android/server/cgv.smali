.class Lcom/android/server/cgv;
.super Lcom/android/server/qeg$you;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/qeg;->registerObserver(ILandroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/qeg;


# direct methods
.method constructor <init>(Lcom/android/server/qeg;Landroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/qeg;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/qeg$you;-><init>(Lcom/android/server/qeg;Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method ssp(Z)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/qeg;

    invoke-static {v0}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object p0, p0, this$0:Lcom/android/server/qeg;

    invoke-static {p0, p1}, Lcom/android/server/qeg;->zta(Lcom/android/server/qeg;Z)Z

    invoke-static {}, Lcom/android/server/qeg;->access$100()Lcom/android/server/qeg$zta;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/server/qeg;->access$100()Lcom/android/server/qeg$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/qeg$zta;->updateLightsLocked()V

    :cond_0
    return-void
.end method
