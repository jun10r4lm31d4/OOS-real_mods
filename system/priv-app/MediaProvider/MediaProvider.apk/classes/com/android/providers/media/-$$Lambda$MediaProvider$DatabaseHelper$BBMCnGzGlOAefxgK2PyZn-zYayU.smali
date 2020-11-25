.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaProvider$DatabaseHelper$BBMCnGzGlOAefxgK2PyZn-zYayU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field private final synthetic f$1:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iput-object p2, p0, f$1:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iget-object p0, p0, f$1:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->lambda$notifyChange$1$MediaProvider$DatabaseHelper(Landroid/net/Uri;)V

    return-void
.end method
