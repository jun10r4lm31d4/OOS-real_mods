.class Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand$1;
.super Lcom/android/internal/os/IResultReceiver$Stub;
.source "ContentCaptureManagerServiceShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/contentcapture/ContentCaptureManagerServiceShellCommand;

    iput-object p2, p0, val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Lcom/android/internal/os/IResultReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
