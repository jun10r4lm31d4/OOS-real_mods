.class Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/provider/SelfDestructiveThread;->postAndReply(Ljava/util/concurrent/Callable;Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/provider/SelfDestructiveThread;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;

.field final synthetic val$callingHandler:Landroid/os/Handler;

.field final synthetic val$reply:Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/provider/SelfDestructiveThread;Ljava/util/concurrent/Callable;Landroid/os/Handler;Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/provider/SelfDestructiveThread;

    iput-object p2, p0, val$callable:Ljava/util/concurrent/Callable;

    iput-object p3, p0, val$callingHandler:Landroid/os/Handler;

    iput-object p4, p0, val$reply:Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    iget-object v2, p0, val$callingHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/support/core/provider/SelfDestructiveThread$2$1;

    invoke-direct {v3, p0, v1}, Lcom/oneplus/support/core/provider/SelfDestructiveThread$2$1;-><init>(Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
