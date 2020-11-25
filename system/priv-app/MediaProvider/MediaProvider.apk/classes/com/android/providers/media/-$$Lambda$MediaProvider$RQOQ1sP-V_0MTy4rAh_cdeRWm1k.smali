.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaProvider$RQOQ1sP-V_0MTy4rAh_cdeRWm1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


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
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {p0}, Lcom/android/providers/media/MediaProvider;->lambda$new$1$MediaProvider()Lcom/android/providers/media/LocalCallingIdentity;

    move-result-object p0

    return-object p0
.end method
