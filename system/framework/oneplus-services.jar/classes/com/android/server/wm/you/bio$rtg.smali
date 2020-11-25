.class abstract Lcom/android/server/wm/you/bio$rtg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "rtg"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/you/bio;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/you/bio;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/bio;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/you/bio;Lcom/android/server/wm/you/kth;)V
    .locals 0

    invoke-direct {p0, p1}, <init>(Lcom/android/server/wm/you/bio;)V

    return-void
.end method


# virtual methods
.method onDequeuedLocked()V
    .locals 0

    return-void
.end method

.method onQueuedLocked()V
    .locals 0

    return-void
.end method

.method abstract write()V
.end method
