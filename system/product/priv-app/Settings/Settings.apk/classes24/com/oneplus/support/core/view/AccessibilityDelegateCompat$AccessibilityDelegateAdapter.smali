.class final Lcom/oneplus/support/core/view/AccessibilityDelegateCompat$AccessibilityDelegateAdapter;
.super Landroid/view/View$AccessibilityDelegate;
.source "AccessibilityDelegateCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AccessibilityDelegateAdapter"
.end annotation


# instance fields
.field private final mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;


# direct methods
.method constructor <init>(Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    iput-object p1, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->dispatchPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityNodeProvider(Landroid/view/View;)Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2
    .annotation build Lcom/oneplus/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->getAccessibilityNodeProvider(Landroid/view/View;)Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeProviderCompat;->getProvider()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeProvider;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-static {p2}, Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;->wrap(Landroid/view/accessibility/AccessibilityNodeInfo;)Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Lcom/oneplus/support/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->onRequestSendAccessibilityEvent(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    return-void
.end method

.method public sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, mCompat:Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/support/core/view/AccessibilityDelegateCompat;->sendAccessibilityEventUnchecked(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method
