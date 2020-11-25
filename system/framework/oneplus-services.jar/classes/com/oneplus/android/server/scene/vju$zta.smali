.class public Lcom/oneplus/android/server/scene/vju$zta;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/vju;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "zta"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/vju;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/scene/vju;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p1

    instance-of p1, p1, Lcom/oneplus/android/server/scene/zgw;

    if-eqz p1, :cond_0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-virtual {p1}, Lcom/oneplus/android/server/scene/vju;->Vf()V

    :cond_0
    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/vju;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/vju;->sis(Lcom/oneplus/android/server/scene/vju;)Lcom/oneplus/android/server/scene/bud;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/bud;->r()V

    :cond_1
    return-void
.end method
