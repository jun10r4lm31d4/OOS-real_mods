.class final Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl$FragmentLifecycleCallbacksHolder;
.super Ljava/lang/Object;
.source "FragmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/fragment/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FragmentLifecycleCallbacksHolder"
.end annotation


# instance fields
.field final mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

.field final mRecursive:Z


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mCallback:Lcom/oneplus/support/core/fragment/app/FragmentManager$FragmentLifecycleCallbacks;

    iput-boolean p2, p0, mRecursive:Z

    return-void
.end method
