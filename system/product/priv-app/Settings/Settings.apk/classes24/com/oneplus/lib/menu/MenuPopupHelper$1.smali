.class Lcom/oneplus/lib/menu/MenuPopupHelper$1;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/menu/MenuPopupHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/menu/MenuPopupHelper;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/menu/MenuPopupHelper;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/menu/MenuPopupHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->onDismiss()V

    return-void
.end method
