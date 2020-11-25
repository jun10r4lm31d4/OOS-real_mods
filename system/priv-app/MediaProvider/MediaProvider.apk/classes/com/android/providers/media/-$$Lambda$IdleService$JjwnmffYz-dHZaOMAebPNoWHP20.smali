.class public final synthetic Lcom/android/providers/media/-$$Lambda$IdleService$JjwnmffYz-dHZaOMAebPNoWHP20;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/IdleService;

.field private final synthetic f$1:Landroid/app/job/JobParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/IdleService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/IdleService;

    iput-object p2, p0, f$1:Landroid/app/job/JobParameters;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/providers/media/IdleService;

    iget-object p0, p0, f$1:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0}, Lcom/android/providers/media/IdleService;->lambda$onStartJob$0$IdleService(Landroid/app/job/JobParameters;)V

    return-void
.end method
