.class Lcom/android/server/wm/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/q;->setQuickReplyRunning(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/q;


# direct methods
.method constructor <init>(Lcom/android/server/wm/q;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/wm/q;

    invoke-static {v0}, Lcom/android/server/wm/q;->wtn(Lcom/android/server/wm/q;)V

    iget-object p0, p0, this$0:Lcom/android/server/wm/q;

    invoke-static {p0}, Lcom/android/server/wm/q;->qbh(Lcom/android/server/wm/q;)V

    return-void
.end method
