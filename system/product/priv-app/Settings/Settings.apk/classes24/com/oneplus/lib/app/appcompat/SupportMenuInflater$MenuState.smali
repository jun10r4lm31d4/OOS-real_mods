.class Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$MenuState;
.super Ljava/lang/Object;
.source "SupportMenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;Landroid/view/Menu;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, menu:Landroid/view/Menu;

    invoke-virtual {p0}, resetGroup()V

    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SupportMenuInflater"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 5

    iget-boolean v0, p0, itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, itemVisible:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, itemEnabled:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, itemCheckable:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, itemTitleCondensed:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, itemIconResId:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, itemAlphabeticShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, itemNumericShortcut:C

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    iget v0, p0, itemShowAsAction:I

    if-ltz v0, :cond_1

    invoke-static {p1, v0}, Lcom/oneplus/support/core/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V

    :cond_1
    iget-object v0, p0, itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    invoke-virtual {v1}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->getRealOwner()Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_1
    instance-of v0, p1, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/menu/MenuItemImpl;

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, itemCheckable:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_6

    instance-of v1, p1, Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemImpl;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    goto :goto_3

    :cond_5
    instance-of v1, p1, Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    if-eqz v1, :cond_6

    move-object v1, p1

    check-cast v1, Lcom/oneplus/lib/menu/MenuItemWrapperICS;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/MenuItemWrapperICS;->setExclusiveCheckable(Z)V

    :cond_6
    :goto_3
    const/4 v1, 0x0

    iget-object v2, p0, itemActionViewClassName:Ljava/lang/String;

    if-eqz v2, :cond_7

    sget-object v3, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_VIEW_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v4, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v4, v4, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionViewConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v2, v3, v4}, newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-static {p1, v2}, Lcom/oneplus/support/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;

    const/4 v1, 0x1

    :cond_7
    iget v2, p0, itemActionViewLayout:I

    if-lez v2, :cond_9

    if-nez v1, :cond_8

    invoke-static {p1, v2}, Lcom/oneplus/support/core/view/MenuItemCompat;->setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;

    const/4 v1, 0x1

    goto :goto_4

    :cond_8
    const-string v2, "SupportMenuInflater"

    const-string v3, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    iget-object v2, p0, itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    if-eqz v2, :cond_a

    invoke-static {p1, v2}, Lcom/oneplus/support/core/view/MenuItemCompat;->setActionProvider(Landroid/view/MenuItem;Lcom/oneplus/support/core/view/ActionProvider;)Landroid/view/MenuItem;

    :cond_a
    return-void
.end method


# virtual methods
.method public addItem()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, itemAdded:Z

    iget-object v0, p0, menu:Landroid/view/Menu;

    iget v1, p0, groupId:I

    iget v2, p0, itemId:I

    iget v3, p0, itemCategoryOrder:I

    iget-object v4, p0, itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0, v0}, setItem(Landroid/view/MenuItem;)V

    return-void
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, itemAdded:Z

    iget-object v0, p0, menu:Landroid/view/Menu;

    iget v1, p0, groupId:I

    iget v2, p0, itemId:I

    iget v3, p0, itemCategoryOrder:I

    iget-object v4, p0, itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, setItem(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    iget-boolean v0, p0, itemAdded:Z

    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 3

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, groupId:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_menuCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, groupCategory:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_orderInCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, groupOrder:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_checkableBehavior:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, groupCheckable:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_visible:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, groupVisible:Z

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuGroup_android_enabled:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, groupEnabled:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 8

    iget-object v0, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v0, v0, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_id:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, itemId:I

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_menuCategory:I

    iget v3, p0, groupCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_orderInCategory:I

    iget v4, p0, groupOrder:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v5, 0xffff

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    iput v4, p0, itemCategoryOrder:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_title:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, itemTitle:Ljava/lang/CharSequence;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_titleCondensed:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, itemTitleCondensed:Ljava/lang/CharSequence;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_icon:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, itemIconResId:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_alphabeticShortcut:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, itemAlphabeticShortcut:C

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_numericShortcut:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, itemNumericShortcut:C

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checkable:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checkable:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput v4, p0, itemCheckable:I

    goto :goto_0

    :cond_0
    iget v4, p0, groupCheckable:I

    iput v4, p0, itemCheckable:I

    :goto_0
    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_checked:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, itemChecked:Z

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_visible:I

    iget-boolean v5, p0, groupVisible:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, itemVisible:Z

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_enabled:I

    iget-boolean v5, p0, groupEnabled:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, itemEnabled:Z

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_showAsAction:I

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, itemShowAsAction:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_android_onClick:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, itemListenerMethodName:Ljava/lang/String;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionLayout:I

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, itemActionViewLayout:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionViewClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, itemActionViewClassName:Ljava/lang/String;

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->OPMenuItem_actionProviderClass:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, itemActionProviderClassName:Ljava/lang/String;

    iget-object v4, p0, itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    if-eqz v4, :cond_2

    iget v5, p0, itemActionViewLayout:I

    if-nez v5, :cond_2

    iget-object v5, p0, itemActionViewClassName:Ljava/lang/String;

    if-nez v5, :cond_2

    iget-object v5, p0, itemActionProviderClassName:Ljava/lang/String;

    sget-object v6, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->ACTION_PROVIDER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    iget-object v7, p0, this$0:Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;

    iget-object v7, v7, Lcom/oneplus/lib/app/appcompat/SupportMenuInflater;->mActionProviderConstructorArguments:[Ljava/lang/Object;

    invoke-direct {p0, v5, v6, v7}, newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/oneplus/support/core/view/ActionProvider;

    iput-object v5, p0, itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    goto :goto_2

    :cond_2
    if-eqz v4, :cond_3

    const-string v5, "SupportMenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v5, 0x0

    iput-object v5, p0, itemActionProvider:Lcom/oneplus/support/core/view/ActionProvider;

    :goto_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iput-boolean v2, p0, itemAdded:Z

    return-void
.end method

.method public resetGroup()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, groupId:I

    iput v0, p0, groupCategory:I

    iput v0, p0, groupOrder:I

    iput v0, p0, groupCheckable:I

    const/4 v0, 0x1

    iput-boolean v0, p0, groupVisible:Z

    iput-boolean v0, p0, groupEnabled:Z

    return-void
.end method
