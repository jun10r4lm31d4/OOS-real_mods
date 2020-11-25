.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaProvider$KrjGG7ZAGv12t19m4gKPe__OhmI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/MediaProvider;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/providers/media/MediaProvider;

    check-cast p1, Landroid/net/Uri;

    invoke-virtual {p0, p1}, Lcom/android/providers/media/MediaProvider;->lambda$deleteInternal$4$MediaProvider(Landroid/net/Uri;)V

    return-void
.end method
