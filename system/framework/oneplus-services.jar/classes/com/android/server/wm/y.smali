.class Lcom/android/server/wm/y;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/B;->putSnapshot(Lcom/android/server/wm/AppWindowToken;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bfa:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/wm/B;

.field final synthetic val$token:Lcom/android/server/wm/AppWindowToken;


# direct methods
.method constructor <init>(Lcom/android/server/wm/B;Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/B;

    iput-object p2, p0, val$token:Lcom/android/server/wm/AppWindowToken;

    iput-object p3, p0, Bfa:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/wm/B;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, this$0:Lcom/android/server/wm/B;

    iget-object v2, p0, val$token:Lcom/android/server/wm/AppWindowToken;

    iget-object p0, p0, Bfa:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/android/server/wm/B;->zta(Lcom/android/server/wm/B;Lcom/android/server/wm/AppWindowToken;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
