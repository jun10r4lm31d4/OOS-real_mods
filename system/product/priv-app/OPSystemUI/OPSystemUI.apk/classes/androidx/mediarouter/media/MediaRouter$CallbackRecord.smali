.class final Landroidx/mediarouter/media/MediaRouter$CallbackRecord;
.super Ljava/lang/Object;
.source "MediaRouter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/MediaRouter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CallbackRecord"
.end annotation


# instance fields
.field public final mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

.field public mFlags:I

.field public final mRouter:Landroidx/mediarouter/media/MediaRouter;

.field public mSelector:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mRouter:Landroidx/mediarouter/media/MediaRouter;

    iput-object p2, p0, mCallback:Landroidx/mediarouter/media/MediaRouter$Callback;

    sget-object p1, Landroidx/mediarouter/media/MediaRouteSelector;->EMPTY:Landroidx/mediarouter/media/MediaRouteSelector;

    iput-object p1, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    return-void
.end method


# virtual methods
.method public filterRouteEvent(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Z
    .locals 1

    iget v0, p0, mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object p0, p0, mSelector:Landroidx/mediarouter/media/MediaRouteSelector;

    invoke-virtual {p1, p0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->matchesSelector(Landroidx/mediarouter/media/MediaRouteSelector;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
