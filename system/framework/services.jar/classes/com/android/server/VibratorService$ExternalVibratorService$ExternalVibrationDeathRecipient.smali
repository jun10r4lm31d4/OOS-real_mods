.class Lcom/android/server/VibratorService$ExternalVibratorService$ExternalVibrationDeathRecipient;
.super Ljava/lang/Object;
.source "VibratorService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService$ExternalVibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExternalVibrationDeathRecipient"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/VibratorService$ExternalVibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService$ExternalVibratorService;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService$ExternalVibratorService;Lcom/android/server/VibratorService$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/VibratorService$ExternalVibratorService;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    iget-object v2, p0, this$1:Lcom/android/server/VibratorService$ExternalVibratorService;

    iget-object v2, v2, Lcom/android/server/VibratorService$ExternalVibratorService;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v2}, Lcom/android/server/VibratorService;->access$1900(Lcom/android/server/VibratorService;)Landroid/os/ExternalVibration;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/VibratorService$ExternalVibratorService;->onExternalVibrationStop(Landroid/os/ExternalVibration;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
