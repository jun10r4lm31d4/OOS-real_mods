.class public Lcom/oneplus/support/lifecycle/CompositeGeneratedAdaptersObserver;
.super Ljava/lang/Object;
.source "CompositeGeneratedAdaptersObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>([Lcom/oneplus/support/lifecycle/GeneratedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 6

    new-instance v0, Lcom/oneplus/support/lifecycle/MethodCallsLogger;

    invoke-direct {v0}, Lcom/oneplus/support/lifecycle/MethodCallsLogger;-><init>()V

    iget-object v1, p0, mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-interface {v5, p1, p2, v3, v0}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, mGeneratedAdapters:[Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    array-length v2, v1

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5, v0}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
