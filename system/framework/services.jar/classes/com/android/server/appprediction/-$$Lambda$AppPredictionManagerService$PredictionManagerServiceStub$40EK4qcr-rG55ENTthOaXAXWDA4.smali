.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionManagerService$PredictionManagerServiceStub$40EK4qcr-rG55ENTthOaXAXWDA4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field private final synthetic f$1:Landroid/app/prediction/IPredictionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, f$1:Landroid/app/prediction/IPredictionCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, f$0:Landroid/app/prediction/AppPredictionSessionId;

    iget-object v1, p0, f$1:Landroid/app/prediction/IPredictionCallback;

    check-cast p1, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-static {v0, v1, p1}, Lcom/android/server/appprediction/AppPredictionManagerService$PredictionManagerServiceStub;->lambda$registerPredictionUpdates$4(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    return-void
.end method
