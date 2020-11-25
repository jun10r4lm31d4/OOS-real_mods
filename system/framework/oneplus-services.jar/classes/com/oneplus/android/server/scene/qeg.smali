.class Lcom/oneplus/android/server/scene/qeg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/a;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/a;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/a;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/a;->kth(Lcom/oneplus/android/server/scene/a;)Lcom/oneplus/android/server/scene/vju;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/vju;->show()V

    invoke-static {}, Lcom/android/server/wm/ugm;->Ce()Lcom/android/server/wm/ugm$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ugm$zta;->Ae()V

    return-void
.end method
