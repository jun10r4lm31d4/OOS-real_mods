.class final Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;
.super Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;
.source "RegisteredMediaRouteProvider.java"

# interfaces
.implements Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/mediarouter/media/RegisteredMediaRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RegisteredDynamicController"
.end annotation


# instance fields
.field private mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

.field private mControllerId:I

.field mGroupableSectionTitle:Ljava/lang/String;

.field private final mInitialMemberRouteId:Ljava/lang/String;

.field private mPendingSetVolume:I

.field private mPendingUpdateVolumeDelta:I

.field private mSelected:Z

.field mTransferableSectionTitle:Ljava/lang/String;

.field final synthetic this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;


# direct methods
.method constructor <init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, mPendingSetVolume:I

    iput p1, p0, mControllerId:I

    iput-object p2, p0, mInitialMemberRouteId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public attachConnection(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;)V
    .locals 2

    new-instance v0, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;

    invoke-direct {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController$1;-><init>(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$RegisteredDynamicController;)V

    iput-object p1, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    iget-object v1, p0, mInitialMemberRouteId:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->createDynamicGroupRouteController(Ljava/lang/String;Landroidx/mediarouter/media/MediaRouter$ControlRequestCallback;)I

    move-result v0

    iput v0, p0, mControllerId:I

    iget-boolean v0, p0, mSelected:Z

    if-eqz v0, :cond_1

    iget v0, p0, mControllerId:I

    invoke-virtual {p1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    iget v0, p0, mPendingSetVolume:I

    if-ltz v0, :cond_0

    iget v1, p0, mControllerId:I

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    const/4 v0, -0x1

    iput v0, p0, mPendingSetVolume:I

    :cond_0
    iget v0, p0, mPendingUpdateVolumeDelta:I

    if-eqz v0, :cond_1

    iget v1, p0, mControllerId:I

    invoke-virtual {p1, v1, v0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    const/4 p1, 0x0

    iput p1, p0, mPendingUpdateVolumeDelta:I

    :cond_1
    return-void
.end method

.method public detachConnection()V
    .locals 2

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget v1, p0, mControllerId:I

    invoke-virtual {v0, v1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->releaseRouteController(I)V

    const/4 v0, 0x0

    iput-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    const/4 v0, 0x0

    iput v0, p0, mControllerId:I

    :cond_0
    return-void
.end method

.method public getControllerId()I
    .locals 0

    iget p0, p0, mControllerId:I

    return p0
.end method

.method public getGroupableSelectionTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mGroupableSectionTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getTransferableSectionTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, mTransferableSectionTitle:Ljava/lang/String;

    return-object p0
.end method

.method public onAddMemberRoute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget p0, p0, mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->addMemberRoute(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method onDynamicRoutesChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController$DynamicRouteDescriptor;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/mediarouter/media/MediaRouteProvider$DynamicGroupRouteController;->notifyDynamicRoutesChanged(Ljava/util/Collection;)V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, this$0:Landroidx/mediarouter/media/RegisteredMediaRouteProvider;

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider;->onControllerReleased(Landroidx/mediarouter/media/RegisteredMediaRouteProvider$ControllerConnection;)V

    return-void
.end method

.method public onRemoveMemberRoute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget p0, p0, mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->removeMemberRoute(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSelect()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, mSelected:Z

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget p0, p0, mControllerId:I

    invoke-virtual {v0, p0}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->selectRoute(I)V

    :cond_0
    return-void
.end method

.method public onSetVolume(I)V
    .locals 1

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget p0, p0, mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->setVolume(II)V

    goto :goto_0

    :cond_0
    iput p1, p0, mPendingSetVolume:I

    const/4 p1, 0x0

    iput p1, p0, mPendingUpdateVolumeDelta:I

    :goto_0
    return-void
.end method

.method public onUnselect()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, onUnselect(I)V

    return-void
.end method

.method public onUnselect(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, mSelected:Z

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget p0, p0, mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->unselectRoute(II)V

    :cond_0
    return-void
.end method

.method public onUpdateVolume(I)V
    .locals 1

    iget-object v0, p0, mConnection:Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;

    if-eqz v0, :cond_0

    iget p0, p0, mControllerId:I

    invoke-virtual {v0, p0, p1}, Landroidx/mediarouter/media/RegisteredMediaRouteProvider$Connection;->updateVolume(II)V

    goto :goto_0

    :cond_0
    iget v0, p0, mPendingUpdateVolumeDelta:I

    add-int/2addr v0, p1

    iput v0, p0, mPendingUpdateVolumeDelta:I

    :goto_0
    return-void
.end method
