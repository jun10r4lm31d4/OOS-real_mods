.class public Lcom/android/server/wm/fto$you;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/fto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "you"
.end annotation


# static fields
.field private static final Ga:I = 0x1

.field private static final Ha:I = 0x2

.field private static final Ia:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/fto;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/fto;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/fto;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p0, p0, this$0:Lcom/android/server/wm/fto;

    const-string p1, "notify activity changed time out"

    goto :goto_0

    :cond_1
    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_2

    const-string p1, "OpOneHandMode"

    const-string v0, "defer animation time out, continue defered animations now"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object p0, p0, this$0:Lcom/android/server/wm/fto;

    invoke-static {p0}, Lcom/android/server/wm/fto;->rtg(Lcom/android/server/wm/fto;)Lcom/android/server/wm/WindowManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {p0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    goto :goto_1

    :cond_3
    iget-object p0, p0, this$0:Lcom/android/server/wm/fto;

    const-string p1, "one-handed mode time out"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/fto;->forceCancelOneHandMode(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method zta(Landroid/os/Message;J)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
