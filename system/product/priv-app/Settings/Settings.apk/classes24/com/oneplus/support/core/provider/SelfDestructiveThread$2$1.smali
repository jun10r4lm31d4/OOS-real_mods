.class Lcom/oneplus/support/core/provider/SelfDestructiveThread$2$1;
.super Ljava/lang/Object;
.source "SelfDestructiveThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;

.field final synthetic val$result:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;

    iput-object p2, p0, val$result:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$1:Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;

    iget-object v0, v0, Lcom/oneplus/support/core/provider/SelfDestructiveThread$2;->val$reply:Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;

    iget-object v1, p0, val$result:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/oneplus/support/core/provider/SelfDestructiveThread$ReplyCallback;->onReply(Ljava/lang/Object;)V

    return-void
.end method
