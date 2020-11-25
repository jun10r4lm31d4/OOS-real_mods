.class Lcom/android/server/wm/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/A;->bio(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Cfa:J

.field final synthetic this$1:Lcom/android/server/wm/A;


# direct methods
.method constructor <init>(Lcom/android/server/wm/A;J)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/wm/A;

    iput-wide p2, p0, Cfa:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set window background spend time =: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Cfa:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->ra(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, this$1:Lcom/android/server/wm/A;

    iget-object v0, v0, Lcom/android/server/wm/A;->Gfa:Lcom/android/internal/policy/PhoneWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, this$1:Lcom/android/server/wm/A;

    iget-object v0, v0, Lcom/android/server/wm/A;->Gfa:Lcom/android/internal/policy/PhoneWindow;

    iget-object v1, p0, this$1:Lcom/android/server/wm/A;

    iget-object v1, v1, Lcom/android/server/wm/A;->this$0:Lcom/android/server/wm/B;

    invoke-static {v1}, Lcom/android/server/wm/B;->zta(Lcom/android/server/wm/B;)Lcom/android/server/wm/you/ssp;

    move-result-object v1

    iget-object v2, p0, this$1:Lcom/android/server/wm/A;

    iget-object v2, v2, Lcom/android/server/wm/A;->Efa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/you/ssp;->ma(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/PhoneWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error when set window background e =: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/you/wtn;->sa(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object p0, p0, this$1:Lcom/android/server/wm/A;

    iget-object p0, p0, Lcom/android/server/wm/A;->this$0:Lcom/android/server/wm/B;

    invoke-static {p0}, Lcom/android/server/wm/B;->zta(Lcom/android/server/wm/B;)Lcom/android/server/wm/you/ssp;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/you/ssp;->Te()V

    return-void
.end method
