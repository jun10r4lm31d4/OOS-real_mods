.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaProvider$DatabaseHelper$N-u9yi6Mt5jIJ5vOy7BmDFARARA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/MediaProvider$DatabaseHelper;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iput-object p2, p0, f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, f$0:Lcom/android/providers/media/MediaProvider$DatabaseHelper;

    iget-object p0, p0, f$1:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/providers/media/MediaProvider$DatabaseHelper;->lambda$setTransactionSuccessful$0$MediaProvider$DatabaseHelper(Ljava/util/List;)V

    return-void
.end method
