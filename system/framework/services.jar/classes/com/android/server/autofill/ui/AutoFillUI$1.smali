.class Lcom/android/server/autofill/ui/AutoFillUI$1;
.super Ljava/lang/Object;
.source "AutoFillUI.java"

# interfaces
.implements Lcom/android/server/autofill/ui/FillUi$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/autofill/ui/AutoFillUI;->lambda$showFillUi$5(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Landroid/metrics/LogMaker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/ui/AutoFillUI;

.field final synthetic val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

.field final synthetic val$focusedId:Landroid/view/autofill/AutofillId;

.field final synthetic val$log:Landroid/metrics/LogMaker;

.field final synthetic val$response:Landroid/service/autofill/FillResponse;


# direct methods
.method constructor <init>(Lcom/android/server/autofill/ui/AutoFillUI;Landroid/metrics/LogMaker;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iput-object p2, p0, val$log:Landroid/metrics/LogMaker;

    iput-object p3, p0, val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    iput-object p4, p0, val$response:Landroid/service/autofill/FillResponse;

    iput-object p5, p0, val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchUnhandledKey(Landroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->dispatchUnhandledKey(Landroid/view/autofill/AutofillId;Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method

.method public onCanceled()V
    .locals 3

    iget-object v0, p0, val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    return-void
.end method

.method public onDatasetPicked(Landroid/service/autofill/Dataset;)V
    .locals 3

    iget-object v0, p0, val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v0}, Landroid/service/autofill/FillResponse;->getDatasets()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v1}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v1

    iget-object v2, p0, val$response:Landroid/service/autofill/FillResponse;

    invoke-virtual {v2}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->fill(IILandroid/service/autofill/Dataset;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0}, Landroid/metrics/LogMaker;->getType()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    :cond_0
    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$400(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    iget-object v1, p0, val$log:Landroid/metrics/LogMaker;

    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    return-void
.end method

.method public onResponsePicked(Landroid/service/autofill/FillResponse;)V
    .locals 5

    iget-object v0, p0, val$log:Landroid/metrics/LogMaker;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v1, p0, val$callback:Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/autofill/ui/AutoFillUI;->access$500(Lcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;Z)V

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getRequestId()I

    move-result v1

    const v2, 0xffff

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getAuthentication()Landroid/content/IntentSender;

    move-result-object v3

    invoke-virtual {p1}, Landroid/service/autofill/FillResponse;->getClientState()Landroid/os/Bundle;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->authenticate(IILandroid/content/IntentSender;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public requestHideFillUi()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestHideFillUi(Landroid/view/autofill/AutofillId;)V

    :cond_0
    return-void
.end method

.method public requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    iget-object v1, p0, val$focusedId:Landroid/view/autofill/AutofillId;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->requestShowFillUi(Landroid/view/autofill/AutofillId;IILandroid/view/autofill/IAutofillWindowPresenter;)V

    :cond_0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {v0}, Lcom/android/server/autofill/ui/AutoFillUI;->access$000(Lcom/android/server/autofill/ui/AutoFillUI;)Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;->startIntentSender(Landroid/content/IntentSender;)V

    :cond_0
    return-void
.end method
