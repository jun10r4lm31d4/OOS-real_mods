.class Lcom/android/server/IpSecService$1;
.super Ljava/lang/Thread;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/IpSecService;->connectNativeNetdService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/IpSecService;

    monitor-enter v0

    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Landroid/net/util/NetdService;->get(J)Landroid/net/INetd;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method