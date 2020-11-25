.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaDocumentsProvider$zNN_T4-1PDS5nIcHBXnAVPTMB_I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:I

.field private final synthetic f$2:J

.field private final synthetic f$3:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;IJLandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Ljava/lang/String;

    iput p2, p0, f$1:I

    iput-wide p3, p0, f$2:J

    iput-object p5, p0, f$3:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, f$0:Ljava/lang/String;

    iget v1, p0, f$1:I

    iget-wide v2, p0, f$2:J

    iget-object p0, p0, f$3:Landroid/content/Context;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/providers/media/MediaDocumentsProvider;->lambda$onMediaStoreDelete$1(Ljava/lang/String;IJLandroid/content/Context;)V

    return-void
.end method
