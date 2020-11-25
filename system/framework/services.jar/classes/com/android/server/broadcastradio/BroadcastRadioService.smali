.class public Lcom/android/server/broadcastradio/BroadcastRadioService;
.super Lcom/android/server/SystemService;
.source "BroadcastRadioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "BcRadioSrv"


# instance fields
.field private final mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

.field private final mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

.field private final mLock:Ljava/lang/Object;

.field private final mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

.field private mV1Modules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;-><init>(Lcom/android/server/broadcastradio/BroadcastRadioService;Lcom/android/server/broadcastradio/BroadcastRadioService$1;)V

    iput-object v0, p0, mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, mLock:Ljava/lang/Object;

    iput-object v1, p0, mV1Modules:Ljava/util/List;

    new-instance v0, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-direct {v0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;-><init>()V

    iput-object v0, p0, mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    iget-object v0, p0, mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;->loadModules()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, mV1Modules:Ljava/util/List;

    iget-object v0, p0, mV1Modules:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;->INSTANCE:Lcom/android/server/broadcastradio/-$$Lambda$h9uu6awtPxlZjabQhUCMBWQXSFM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    invoke-virtual {v0}, Ljava/util/OptionalInt;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;-><init>(I)V

    iput-object v1, p0, mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, mV1Modules:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .locals 1

    iget-object v0, p0, mHal2:Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/BroadcastRadioService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/broadcastradio/BroadcastRadioService;)Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;
    .locals 1

    iget-object v0, p0, mHal1:Lcom/android/server/broadcastradio/hal1/BroadcastRadioService;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    iget-object v0, p0, mServiceImpl:Lcom/android/server/broadcastradio/BroadcastRadioService$ServiceImpl;

    const-string v1, "broadcastradio"

    invoke-virtual {p0, v1, v0}, publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method