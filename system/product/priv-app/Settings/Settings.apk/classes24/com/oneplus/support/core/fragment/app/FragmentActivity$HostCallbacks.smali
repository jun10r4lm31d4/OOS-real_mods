.class Lcom/oneplus/support/core/fragment/app/FragmentActivity$HostCallbacks;
.super Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/support/core/fragment/app/FragmentHostCallback<",
        "Lcom/oneplus/support/core/fragment/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-direct {p0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentHostCallback;-><init>(Lcom/oneplus/support/core/fragment/app/FragmentActivity;)V

    return-void
.end method


# virtual methods
.method public onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->onAttachFragment(Lcom/oneplus/support/core/fragment/app/Fragment;)V

    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onGetHost()Lcom/oneplus/support/core/fragment/app/FragmentActivity;
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, onGetHost()Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    :goto_0
    return v1
.end method

.method public onHasView()Z
    .locals 2

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRequestPermissionsFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;[Ljava/lang/String;I)V
    .locals 1
    .param p1    # Lcom/oneplus/support/core/fragment/app/Fragment;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->requestPermissionsFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method public onShouldSaveFragmentState(Lcom/oneplus/support/core/fragment/app/Fragment;)Z
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-static {v0, p1}, Lcom/oneplus/support/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onStartActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->startActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p4    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->startActivityFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    return-void
.end method

.method public onStartIntentSenderFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 10
    .param p4    # Landroid/content/Intent;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    move-object v0, p0

    iget-object v1, v0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->startIntentSenderFromFragment(Lcom/oneplus/support/core/fragment/app/Fragment;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    return-void
.end method
