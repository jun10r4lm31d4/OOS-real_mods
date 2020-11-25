.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaProvider$KH6NQR7ITTFd4DhabiUV0y5c2P4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/MediaProvider;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/MediaProvider;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/MediaProvider;

    iput-object p2, p0, f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/providers/media/MediaProvider;

    iget-object p0, p0, f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/providers/media/MediaProvider;->lambda$updateInternal$6$MediaProvider(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
