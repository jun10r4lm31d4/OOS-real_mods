.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaDocumentsProvider$pNuILuwz0IR_KmNauTyBduZQ64o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Ljava/lang/String;

    iput p2, p0, f$1:I

    iput-object p3, p0, f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, f$0:Ljava/lang/String;

    iget v1, p0, f$1:I

    iget-object p0, p0, f$2:Landroid/content/Context;

    invoke-static {v0, v1, p0}, Lcom/android/providers/media/MediaDocumentsProvider;->lambda$onMediaStoreInsert$0(Ljava/lang/String;ILandroid/content/Context;)V

    return-void
.end method
