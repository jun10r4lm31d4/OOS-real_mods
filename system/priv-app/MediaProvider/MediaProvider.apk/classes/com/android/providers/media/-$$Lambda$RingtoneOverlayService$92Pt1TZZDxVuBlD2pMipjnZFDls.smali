.class public final synthetic Lcom/android/providers/media/-$$Lambda$RingtoneOverlayService$92Pt1TZZDxVuBlD2pMipjnZFDls;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/RingtoneOverlayService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/RingtoneOverlayService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/RingtoneOverlayService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/providers/media/RingtoneOverlayService;

    invoke-virtual {p0}, Lcom/android/providers/media/RingtoneOverlayService;->lambda$onStartCommand$0$RingtoneOverlayService()V

    return-void
.end method
