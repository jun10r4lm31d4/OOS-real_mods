.class final Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;
.super Lcom/oneplus/faceunlock/utils/Handle;
.source "ThreadMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/faceunlock/utils/ThreadMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ThreadMonitorHandle"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 1

    const-string v0, "Thread Monitor Handle"

    invoke-direct {p0, v0}, Lcom/oneplus/faceunlock/utils/Handle;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected onClose(I)V
    .locals 0

    invoke-static {p0}, Lcom/oneplus/faceunlock/utils/ThreadMonitor;->access$100(Lcom/oneplus/faceunlock/utils/ThreadMonitor$ThreadMonitorHandle;)V

    return-void
.end method
