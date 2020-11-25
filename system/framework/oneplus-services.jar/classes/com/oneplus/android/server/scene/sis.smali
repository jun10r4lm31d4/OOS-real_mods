.class Lcom/oneplus/android/server/scene/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/rtg;->you(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/rtg;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/rtg;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {p1}, Lcom/oneplus/android/server/scene/rtg;->zta(Lcom/oneplus/android/server/scene/rtg;)Landroid/widget/CheckBox;

    move-result-object p1

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/scene/rtg;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/rtg;->zta(Lcom/oneplus/android/server/scene/rtg;)Landroid/widget/CheckBox;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method
