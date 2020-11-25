.class Lcom/android/providers/media/MtpService$OnServerTerminated;
.super Ljava/lang/Object;
.source "MtpService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MtpService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnServerTerminated"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MtpService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MtpService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/providers/media/MtpService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MtpService;Lcom/android/providers/media/MtpService$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/providers/media/MtpService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-class p0, Lcom/android/providers/media/MtpService;

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$700()Lcom/android/providers/media/MtpService$ServerHolder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "MtpService"

    const-string v1, "sServerHolder is unexpectedly null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/providers/media/MtpService;->access$700()Lcom/android/providers/media/MtpService$ServerHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/media/MtpService$ServerHolder;->close()V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/providers/media/MtpService;->access$702(Lcom/android/providers/media/MtpService$ServerHolder;)Lcom/android/providers/media/MtpService$ServerHolder;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
