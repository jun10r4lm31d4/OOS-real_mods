.class Lcom/oneplus/android/server/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/gwm;->It()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/gwm;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/gwm;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/gwm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p0, p0, this$0:Lcom/oneplus/android/server/gwm;

    invoke-static {p0}, Lcom/oneplus/android/server/gwm;->rtg(Lcom/oneplus/android/server/gwm;)I

    return-void
.end method
