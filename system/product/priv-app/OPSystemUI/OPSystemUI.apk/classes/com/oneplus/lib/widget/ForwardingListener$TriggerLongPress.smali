.class Lcom/oneplus/lib/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/ForwardingListener;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/ForwardingListener;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/lib/widget/ForwardingListener;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/ForwardingListener;->onLongPress()V

    return-void
.end method
