.class Lcom/android/server/am/x;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OpForceDarkController;->handleStartingWindow(Landroid/view/View;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic UB:Z

.field final synthetic VB:Landroid/view/View;

.field final synthetic this$0:Lcom/android/server/am/OpForceDarkController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OpForceDarkController;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    iput-boolean p2, p0, UB:Z

    iput-object p3, p0, VB:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    iget-boolean v1, p0, UB:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v1, v1, v1, v1}, Lcom/oneplus/theme/OpForceDarkInjector;->convertToOPFDStateSet(ZZZZ)I

    move-result v1

    goto :goto_0

    :cond_0
    invoke-static {v0, v0, v0, v0}, Lcom/oneplus/theme/OpForceDarkInjector;->convertToOPFDStateSet(ZZZZ)I

    move-result v1

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewRootImpl;->opSysForceONOFF(I)V

    iget-object p1, p0, VB:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    iget-object p0, p0, this$0:Lcom/android/server/am/OpForceDarkController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0 Remove Listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/server/am/OpForceDarkController;->access$200(Lcom/android/server/am/OpForceDarkController;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
