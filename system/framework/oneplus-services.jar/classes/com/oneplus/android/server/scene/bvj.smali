.class Lcom/oneplus/android/server/scene/bvj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/android/server/scene/OemSceneCallBlock;->popNotify(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic sra:I

.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

.field final synthetic tra:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneCallBlock;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iput p2, p0, sra:I

    iput-object p3, p0, tra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$100()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "OemSceneCallBlock"

    const-string v0, " ignore button clicked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, this$0:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    iget v0, p0, sra:I

    iget-object p0, p0, tra:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->access$400(Lcom/oneplus/android/server/scene/OemSceneCallBlock;ILjava/lang/String;)V

    return-void
.end method
