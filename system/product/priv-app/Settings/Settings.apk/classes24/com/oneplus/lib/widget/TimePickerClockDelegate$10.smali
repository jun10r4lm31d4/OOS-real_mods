.class Lcom/oneplus/lib/widget/TimePickerClockDelegate$10;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/oneplus/commonctrl/R$id;->am_label:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v2}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$id;->pm_label:I

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1400(Lcom/oneplus/lib/widget/TimePickerClockDelegate;I)V

    goto :goto_0

    :cond_1
    sget v1, Lcom/oneplus/commonctrl/R$id;->hours:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v2, v3, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/oneplus/commonctrl/R$id;->minutes:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1, v3, v3, v3}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1000(Lcom/oneplus/lib/widget/TimePickerClockDelegate;IZZ)V

    :goto_0
    iget-object v1, p0, this$0:Lcom/oneplus/lib/widget/TimePickerClockDelegate;

    invoke-static {v1}, Lcom/oneplus/lib/widget/TimePickerClockDelegate;->access$1900(Lcom/oneplus/lib/widget/TimePickerClockDelegate;)V

    return-void

    :cond_3
    return-void
.end method