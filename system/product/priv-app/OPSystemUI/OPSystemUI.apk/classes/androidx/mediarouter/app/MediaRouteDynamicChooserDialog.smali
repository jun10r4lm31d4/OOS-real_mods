.class public Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "MediaRouteDynamicChooserDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;,
        Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;,
        Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

.field private mAttachedToWindow:Z

.field private final mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

.field private mCloseButton:Landroid/widget/ImageButton;

.field mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastUpdateTime:J

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field mRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

.field private mUpdateRoutesDelayMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, <init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogContext(Landroid/content/Context;IZ)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->createThemedDialogStyle(Landroid/content/Context;)I

    move-result p2

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$1;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    iput-object p1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/mediarouter/media/MediaRouter;->getInstance(Landroid/content/Context;)Landroidx/mediarouter/media/MediaRouter;

    move-result-object p2

    iput-object p2, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    new-instance p2, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-direct {p2, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    iput-object p2, p0, mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    iput-object p1, p0, mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroidx/mediarouter/R$integer;->mr_update_routes_delay_ms:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, mUpdateRoutesDelayMs:J

    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, mAttachedToWindow:Z

    iget-object v1, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v2, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-object v3, p0, mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-virtual {v1, v2, v3, v0}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    invoke-virtual {p0}, refreshRoutes()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    sget p1, Landroidx/mediarouter/R$layout;->mr_picker_dialog:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    iget-object p1, p0, mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Landroidx/mediarouter/app/MediaRouterThemeHelper;->setDialogBackgroundColor(Landroid/content/Context;Landroid/app/Dialog;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, mRoutes:Ljava/util/List;

    sget p1, Landroidx/mediarouter/R$id;->mr_picker_close_button:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, mCloseButton:Landroid/widget/ImageButton;

    iget-object p1, p0, mCloseButton:Landroid/widget/ImageButton;

    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$2;

    invoke-direct {v0, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$2;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    invoke-direct {p1, p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;-><init>(Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;)V

    iput-object p1, p0, mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    sget p1, Landroidx/mediarouter/R$id;->mr_picker_list:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object p1, p0, mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    invoke-virtual {p0}, updateLayout()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, mAttachedToWindow:Z

    iget-object v0, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    iget-object p0, p0, mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isDefaultOrBluetooth()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFilterRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0, v0}, onFilterRoute(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshRoutes()V
    .locals 6

    iget-boolean v0, p0, mAttachedToWindow:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    invoke-virtual {v1}, Landroidx/mediarouter/media/MediaRouter;->getRoutes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, onFilterRoutes(Ljava/util/List;)V

    sget-object v1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;->sInstance:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RouteComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, mLastUpdateTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, mUpdateRoutesDelayMs:J

    cmp-long v1, v1, v3

    if-ltz v1, :cond_0

    invoke-virtual {p0, v0}, updateRoutes(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-wide v2, p0, mLastUpdateTime:J

    iget-wide v4, p0, mUpdateRoutesDelayMs:J

    add-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setRouteSelector(Landroidx/mediarouter/media/MediaRouteSelector;)V
    .locals 3

    if-eqz p1, :cond_2

    iget-object v0, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {v0, p1}, Landroidx/mediarouter/media/MediaRouteSelector;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p1, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    iget-boolean v0, p0, mAttachedToWindow:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/MediaRouter;->removeCallback(Landroidx/mediarouter/media/MediaRouter$Callback;)V

    iget-object v0, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    iget-object v1, p0, mCallback:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$MediaRouterCallback;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroidx/mediarouter/media/MediaRouter;->addCallback(Landroidx/mediarouter/media/MediaRouteSelector;Landroidx/mediarouter/media/MediaRouter$Callback;I)V

    :cond_0
    invoke-virtual {p0}, refreshRoutes()V

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "selector must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method updateLayout()V
    .locals 2

    iget-object v0, p0, mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogWidthForDynamicGroup(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, mContext:Landroid/content/Context;

    invoke-static {v1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->getDialogHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method updateRoutes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouter$RouteInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, mLastUpdateTime:J

    iget-object v0, p0, mRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, mRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object p0, p0, mAdapter:Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;

    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog$RecyclerAdapter;->rebuildItems()V

    return-void
.end method