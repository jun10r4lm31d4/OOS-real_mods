.class Lcom/oneplus/support/core/view/DragStartHelper$1;
.super Ljava/lang/Object;
.source "DragStartHelper.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/view/DragStartHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/view/DragStartHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/view/DragStartHelper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/view/DragStartHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/view/DragStartHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/DragStartHelper;->onLongClick(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
