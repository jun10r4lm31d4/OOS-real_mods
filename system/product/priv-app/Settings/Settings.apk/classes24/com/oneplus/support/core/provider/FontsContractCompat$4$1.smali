.class Lcom/oneplus/support/core/provider/FontsContractCompat$4$1;
.super Ljava/lang/Object;
.source "FontsContractCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/support/core/provider/FontsContractCompat$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/provider/FontsContractCompat$4;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/provider/FontsContractCompat$4;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/provider/FontsContractCompat$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/provider/FontsContractCompat$4;

    iget-object v0, v0, Lcom/oneplus/support/core/provider/FontsContractCompat$4;->val$callback:Lcom/oneplus/support/core/provider/FontsContractCompat$FontRequestCallback;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/core/provider/FontsContractCompat$FontRequestCallback;->onTypefaceRequestFailed(I)V

    return-void
.end method
