.class Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->doInvalidatePanelMenu(I)V

    :cond_0
    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iget v0, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_1

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->doInvalidatePanelMenu(I)V

    :cond_1
    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;

    iput-boolean v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuPosted:Z

    iput v1, v0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;->mInvalidatePanelMenuFeatures:I

    return-void
.end method
