.class public Lcom/oneplus/lib/design/widget/BottomNavigationPresenter;
.super Ljava/lang/Object;
.source "BottomNavigationPresenter.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuPresenter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;
    }
.end annotation


# instance fields
.field private id:I

.field private menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

.field private updateSuspended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, updateSuspended:Z

    return-void
.end method


# virtual methods
.method public collapseItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public expandItemActionView(Lcom/oneplus/lib/menu/MenuBuilder;Lcom/oneplus/lib/menu/MenuItemImpl;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public flagActionItems()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .locals 0

    iget p0, p0, id:I

    return p0
.end method

.method public initForMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 0

    iput-object p2, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object p1, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object p0, p0, menu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {p1, p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->initialize(Lcom/oneplus/lib/menu/MenuBuilder;)V

    return-void
.end method

.method public onCloseMenu(Lcom/oneplus/lib/menu/MenuBuilder;Z)V
    .locals 0

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    if-eqz v0, :cond_0

    iget-object v0, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    check-cast p1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    iget v1, p1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->selectedItemId:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tryRestoreSelectedItemId(I)V

    iget-object p0, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object p1, p1, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->notificationState:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->tryRestoreNotifications(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;

    invoke-direct {v0}, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;-><init>()V

    iget-object v1, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->getSelectedItemId()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->selectedItemId:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->notificationState:Landroid/os/Bundle;

    iget-object p0, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    iget-object v1, v0, Lcom/oneplus/lib/design/widget/BottomNavigationPresenter$SavedState;->notificationState:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->trySaveNotifications(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public onSubMenuSelected(Lcom/oneplus/lib/menu/SubMenuBuilder;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setBottomNavigationMenuView(Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;)V
    .locals 0

    iput-object p1, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    return-void
.end method

.method public setId(I)V
    .locals 0

    iput p1, p0, id:I

    return-void
.end method

.method public setUpdateSuspended(Z)V
    .locals 0

    iput-boolean p1, p0, updateSuspended:Z

    return-void
.end method

.method public updateMenuView(Z)V
    .locals 1

    iget-boolean v0, p0, updateSuspended:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p0, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->buildMenuView()V

    goto :goto_0

    :cond_1
    iget-object p0, p0, menuView:Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/BottomNavigationMenuView;->updateMenuView()V

    :goto_0
    return-void
.end method
