.class abstract Lcom/oneplus/lib/menu/BaseMenuWrapper;
.super Lcom/oneplus/lib/menu/BaseWrapper;
.source "BaseMenuWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/oneplus/lib/menu/BaseWrapper<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mContext:Landroid/content/Context;

.field private mMenuItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oneplus/lib/menu/SupportMenuItem;",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSubMenus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oneplus/lib/menu/SupportSubMenu;",
            "Landroid/view/SubMenu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/oneplus/lib/menu/BaseWrapper;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method final getMenuItemWrapper(Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 3

    instance-of v0, p1, Lcom/oneplus/lib/menu/SupportMenuItem;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/SupportMenuItem;

    iget-object v1, p0, mMenuItems:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v1, p0, mMenuItems:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, mMenuItems:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    if-nez v1, :cond_1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportMenuItem(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportMenuItem;)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, mMenuItems:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    return-object p1
.end method

.method final getSubMenuWrapper(Landroid/view/SubMenu;)Landroid/view/SubMenu;
    .locals 3

    instance-of v0, p1, Lcom/oneplus/lib/menu/SupportSubMenu;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/SupportSubMenu;

    iget-object v1, p0, mSubMenus:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/support/collection/ArrayMap;

    invoke-direct {v1}, Lcom/oneplus/support/collection/ArrayMap;-><init>()V

    iput-object v1, p0, mSubMenus:Ljava/util/Map;

    :cond_0
    iget-object v1, p0, mSubMenus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/SubMenu;

    if-nez v1, :cond_1

    iget-object v2, p0, mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/oneplus/lib/app/appcompat/MenuWrapperFactory;->wrapSupportSubMenu(Landroid/content/Context;Lcom/oneplus/lib/menu/SupportSubMenu;)Landroid/view/SubMenu;

    move-result-object v1

    iget-object v2, p0, mSubMenus:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1

    :cond_2
    return-object p1
.end method

.method final internalClear()V
    .locals 1

    iget-object v0, p0, mMenuItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object v0, p0, mSubMenus:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method final internalRemoveGroup(I)V
    .locals 3

    iget-object v0, p0, mMenuItems:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getGroupId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final internalRemoveItem(I)V
    .locals 3

    iget-object v0, p0, mMenuItems:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne p1, v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_2
    return-void
.end method
