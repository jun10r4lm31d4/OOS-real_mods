.class public final Lcom/oneplus/support/loader/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/support/loader/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/support/loader/content/Loader;


# direct methods
.method public constructor <init>(Lcom/oneplus/support/loader/content/Loader;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/oneplus/support/loader/content/Loader;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, this$0:Lcom/oneplus/support/loader/content/Loader;

    invoke-virtual {v0}, Lcom/oneplus/support/loader/content/Loader;->onContentChanged()V

    return-void
.end method
