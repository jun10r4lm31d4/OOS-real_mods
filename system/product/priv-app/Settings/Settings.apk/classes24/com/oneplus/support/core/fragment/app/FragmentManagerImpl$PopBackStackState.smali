.class Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final mFlags:I

.field final mId:I

.field final mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, mName:Ljava/lang/String;

    iput p3, p0, mId:I

    iput p4, p0, mFlags:I

    return-void
.end method


# virtual methods
.method public generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/support/core/fragment/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    if-eqz v0, :cond_0

    iget v0, p0, mId:I

    if-gez v0, :cond_0

    iget-object v0, p0, mName:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v0, v0, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->mPrimaryNav:Lcom/oneplus/support/core/fragment/app/Fragment;

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/Fragment;->peekChildFragmentManager()Lcom/oneplus/support/core/fragment/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/fragment/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v2, p0, this$0:Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;

    iget-object v5, p0, mName:Ljava/lang/String;

    iget v6, p0, mId:I

    iget v7, p0, mFlags:I

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method
