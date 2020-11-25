.class public Lcom/oneplus/android/server/scene/a$tsu;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/a;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/a;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/a;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/a;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/a;->gck(Lcom/oneplus/android/server/scene/a;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/a;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/a;->wtn(Lcom/oneplus/android/server/scene/a;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/oneplus/android/server/scene/a;->access$400()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "OemSceneModeController"

    const-string p1, "[scene] Game changed!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
