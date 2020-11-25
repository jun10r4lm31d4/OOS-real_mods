.class Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StartEnterTransitionListener"
.end annotation


# instance fields
.field private final mIsBack:Z

.field private mNumPostponed:I

.field private final mRecord:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, mIsBack:Z

    iput-object p1, p0, mRecord:Landroid/support/v4/app/BackStackRecord;

    return-void
.end method

.method static synthetic access$300(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Z
    .locals 0

    iget-boolean p0, p0, mIsBack:Z

    return p0
.end method

.method static synthetic access$400(Landroid/support/v4/app/FragmentManagerImpl$StartEnterTransitionListener;)Landroid/support/v4/app/BackStackRecord;
    .locals 0

    iget-object p0, p0, mRecord:Landroid/support/v4/app/BackStackRecord;

    return-object p0
.end method


# virtual methods
.method public cancelTransaction()V
    .locals 3

    iget-object v0, p0, mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, v0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-boolean p0, p0, mIsBack:Z

    const/4 v2, 0x0

    invoke-static {v1, v0, p0, v2, v2}, Landroid/support/v4/app/FragmentManagerImpl;->access$600(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public completeTransaction()V
    .locals 7

    iget v0, p0, mNumPostponed:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, v3, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-object v4, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v5, v3, Landroid/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/support/v4/app/Fragment;->setOnStartEnterTransitionListener(Landroid/support/v4/app/Fragment$OnStartEnterTransitionListener;)V

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->isPostponed()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->startPostponedEnterTransition()V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v1, p0, mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object v3, v1, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    iget-boolean p0, p0, mIsBack:Z

    xor-int/2addr v0, v2

    invoke-static {v3, v1, p0, v0, v2}, Landroid/support/v4/app/FragmentManagerImpl;->access$600(Landroid/support/v4/app/FragmentManagerImpl;Landroid/support/v4/app/BackStackRecord;ZZZ)V

    return-void
.end method

.method public isReady()Z
    .locals 0

    iget p0, p0, mNumPostponed:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onStartEnterTransition()V
    .locals 1

    iget v0, p0, mNumPostponed:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, mNumPostponed:I

    iget v0, p0, mNumPostponed:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, mRecord:Landroid/support/v4/app/BackStackRecord;

    iget-object p0, p0, Landroid/support/v4/app/BackStackRecord;->mManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-static {p0}, Landroid/support/v4/app/FragmentManagerImpl;->access$500(Landroid/support/v4/app/FragmentManagerImpl;)V

    return-void
.end method

.method public startListening()V
    .locals 1

    iget v0, p0, mNumPostponed:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, mNumPostponed:I

    return-void
.end method
