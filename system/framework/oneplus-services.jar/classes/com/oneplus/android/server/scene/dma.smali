.class Lcom/oneplus/android/server/scene/dma;
.super Landroid/os/CountDownTimer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneAdModeController;->setModeSmoothly(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field degree:I

.field final synthetic fto:I

.field hmo:I

.field ire:I

.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneAdModeController;JJIZ)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    iput p6, p0, fto:I

    iput-boolean p7, p0, val$enable:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iget p1, p0, fto:I

    iget-object p2, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p2}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$100(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)I

    move-result p2

    div-int/2addr p1, p2

    iput p1, p0, degree:I

    iget p1, p0, fto:I

    iput p1, p0, ire:I

    const/4 p1, 0x0

    iput p1, p0, hmo:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, val$enable:Z

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lsis/you/you/zta/zta/you;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lsis/you/you/zta/zta/you;->setMode(II)V

    iget-object v0, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lsis/you/you/zta/zta/you;

    move-result-object v0

    const/16 v1, 0xe

    iget p0, p0, fto:I

    invoke-interface {v0, v1, p0}, Lsis/you/you/zta/zta/you;->setMode(II)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lsis/you/you/zta/zta/you;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v1, v0}, Lsis/you/you/zta/zta/you;->setMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException! "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OemSceneAdModeController"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onTick(J)V
    .locals 2

    :try_start_0
    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lsis/you/you/zta/zta/you;

    move-result-object p1

    const/16 p2, 0xd

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lsis/you/you/zta/zta/you;->setMode(II)V

    iget-boolean p1, p0, val$enable:Z

    const/16 p2, 0xe

    if-eqz p1, :cond_1

    iget p1, p0, hmo:I

    iget v0, p0, degree:I

    add-int/2addr p1, v0

    iput p1, p0, hmo:I

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lsis/you/you/zta/zta/you;

    move-result-object p1

    iget v0, p0, hmo:I

    const/16 v1, 0x3ff

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, p0, hmo:I

    :goto_0
    invoke-interface {p1, p2, v1}, Lsis/you/you/zta/zta/you;->setMode(II)V

    goto :goto_2

    :cond_1
    iget p1, p0, ire:I

    iget v0, p0, degree:I

    sub-int/2addr p1, v0

    iput p1, p0, ire:I

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->access$200(Lcom/oneplus/android/server/scene/OemSceneAdModeController;)Lsis/you/you/zta/zta/you;

    move-result-object p1

    iget v0, p0, ire:I

    if-gez v0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    iget p0, p0, ire:I

    :goto_1
    invoke-interface {p1, p2, p0}, Lsis/you/you/zta/zta/you;->setMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "RemoteException! "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneAdModeController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method
