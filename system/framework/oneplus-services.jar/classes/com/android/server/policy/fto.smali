.class Lcom/android/server/policy/fto;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/cgv;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mc:Ljava/util/ArrayList;

.field final synthetic this$1:Lcom/android/server/policy/cgv;


# direct methods
.method constructor <init>(Lcom/android/server/policy/cgv;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, this$1:Lcom/android/server/policy/cgv;

    iput-object p2, p0, mc:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p1, p0, this$1:Lcom/android/server/policy/cgv;

    iget-object p1, p1, Lcom/android/server/policy/cgv;->this$0:Lcom/android/server/policy/OpQuickPay;

    iget-object p0, p0, mc:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/policy/OpQuickPay$zta;

    iget p0, p0, Lcom/android/server/policy/OpQuickPay$zta;->index:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p1, p0, p2, v0}, Lcom/android/server/policy/OpQuickPay;->access$300(Lcom/android/server/policy/OpQuickPay;IZZ)V

    return-void
.end method
