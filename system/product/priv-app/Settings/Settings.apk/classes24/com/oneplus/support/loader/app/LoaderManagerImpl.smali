.class Lcom/oneplus/support/loader/app/LoaderManagerImpl;
.super Lcom/oneplus/support/loader/app/LoaderManager;
.source "LoaderManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;,
        Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderObserver;,
        Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field private final mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field

.field private final mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;
    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, DEBUG:Z

    return-void
.end method

.method constructor <init>(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/ViewModelStore;)V
    .locals 1
    .param p1    # Lcom/oneplus/support/lifecycle/LifecycleOwner;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/oneplus/support/lifecycle/ViewModelStore;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/oneplus/support/loader/app/LoaderManager;-><init>()V

    iput-object p1, p0, mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-static {p2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->getInstance(Lcom/oneplus/support/lifecycle/ViewModelStore;)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    move-result-object v0

    iput-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;Lcom/oneplus/support/loader/content/Loader;)Lcom/oneplus/support/loader/content/Loader;
    .locals 5
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/oneplus/support/loader/content/Loader;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->startCreatingLoader()V

    invoke-interface {p3, p1, p2}, Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Lcom/oneplus/support/loader/content/Loader;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isMemberClass()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Object returned from onCreateLoader must not be a non-static inner member class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    new-instance v1, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v1, p1, p2, v0, p4}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;-><init>(ILandroid/os/Bundle;Lcom/oneplus/support/loader/content/Loader;Lcom/oneplus/support/loader/content/Loader;)V

    sget-boolean v2, DEBUG:Z

    if-eqz v2, :cond_2

    const-string v2, "LoaderManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Created new loader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v2, p1, v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->putLoader(ILcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    nop

    iget-object v0, p0, mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v0, p3}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;

    move-result-object v0

    return-object v0

    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Object returned from onCreateLoader must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->finishCreatingLoader()V

    throw v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Lcom/oneplus/support/loader/content/Loader;

    iget-object v1, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v1, p1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->removeLoader(I)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "destroyLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getLoader(I)Lcom/oneplus/support/loader/content/Loader;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->getLoader()Lcom/oneplus/support/loader/content/Loader;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasRunningLoaders()Z
    .locals 1

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->hasRunningLoaders()Z

    move-result v0

    return v0
.end method

.method public initLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    sget-boolean v1, DEBUG:Z

    const-string v2, "LoaderManager"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initLoader in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": args="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, v1}, createAndInstallLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;Lcom/oneplus/support/loader/content/Loader;)Lcom/oneplus/support/loader/content/Loader;

    move-result-object v1

    return-object v1

    :cond_1
    sget-boolean v1, DEBUG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Re-using existing loader "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-virtual {v0, v1, p3}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->setCallback(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;

    move-result-object v1

    return-object v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markForRedelivery()V
    .locals 1

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->markForRedelivery()V

    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;)Lcom/oneplus/support/loader/content/Loader;
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Lcom/oneplus/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;
        .annotation build Lcom/oneplus/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/oneplus/support/annotation/MainThread;
    .end annotation

    .annotation build Lcom/oneplus/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/oneplus/support/loader/content/Loader<",
            "TD;>;"
        }
    .end annotation

    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->isCreatingLoader()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    sget-boolean v0, DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LoaderManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, mLoaderViewModel:Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderViewModel;->getLoader(I)Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oneplus/support/loader/app/LoaderManagerImpl$LoaderInfo;->destroy(Z)Lcom/oneplus/support/loader/content/Loader;

    move-result-object v1

    :cond_1
    invoke-direct {p0, p1, p2, p3, v1}, createAndInstallLoader(ILandroid/os/Bundle;Lcom/oneplus/support/loader/app/LoaderManager$LoaderCallbacks;Lcom/oneplus/support/loader/content/Loader;)Lcom/oneplus/support/loader/content/Loader;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "restartLoader must be called on the main thread"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Called while creating a loader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, mLifecycleOwner:Lcom/oneplus/support/lifecycle/LifecycleOwner;

    invoke-static {v1, v0}, Lcom/oneplus/support/core/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
