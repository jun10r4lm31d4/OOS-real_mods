.class final Lcom/android/server/input/InputManagerService$InputFilterHost;
.super Landroid/view/IInputFilterHost$Stub;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputFilterHost"
.end annotation


# instance fields
.field private mDisconnected:Z

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/view/IInputFilterHost$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public disconnectLocked()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, mDisconnected:Z

    return-void
.end method

.method public sendInputEvent(Landroid/view/InputEvent;I)V
    .locals 10

    if-eqz p1, :cond_1

    iget-object v0, p0, this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mInputFilterLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, mDisconnected:Z

    if-nez v1, :cond_0

    iget-object v1, p0, this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v1}, Lcom/android/server/input/InputManagerService;->access$900(Lcom/android/server/input/InputManagerService;)J

    move-result-wide v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/high16 v1, 0x4000000

    or-int v9, p2, v1

    move-object v4, p1

    invoke-static/range {v2 .. v9}, Lcom/android/server/input/InputManagerService;->access$1000(JLandroid/view/InputEvent;IIIII)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "event must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method