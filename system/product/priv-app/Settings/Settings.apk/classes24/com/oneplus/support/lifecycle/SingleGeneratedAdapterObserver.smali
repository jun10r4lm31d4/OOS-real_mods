.class public Lcom/oneplus/support/lifecycle/SingleGeneratedAdapterObserver;
.super Ljava/lang/Object;
.source "SingleGeneratedAdapterObserver.java"

# interfaces
.implements Lcom/oneplus/support/lifecycle/GenericLifecycleObserver;


# annotations
.annotation build Lcom/oneplus/support/annotation/RestrictTo;
    value = {
        .enum Lcom/oneplus/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Lcom/oneplus/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private final mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;


# direct methods
.method constructor <init>(Lcom/oneplus/support/lifecycle/GeneratedAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    return-void
.end method


# virtual methods
.method public onStateChanged(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;)V
    .locals 3

    iget-object v0, p0, mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    iget-object v0, p0, mGeneratedAdapter:Lcom/oneplus/support/lifecycle/GeneratedAdapter;

    const/4 v2, 0x1

    invoke-interface {v0, p1, p2, v2, v1}, Lcom/oneplus/support/lifecycle/GeneratedAdapter;->callMethods(Lcom/oneplus/support/lifecycle/LifecycleOwner;Lcom/oneplus/support/lifecycle/Lifecycle$Event;ZLcom/oneplus/support/lifecycle/MethodCallsLogger;)V

    return-void
.end method
