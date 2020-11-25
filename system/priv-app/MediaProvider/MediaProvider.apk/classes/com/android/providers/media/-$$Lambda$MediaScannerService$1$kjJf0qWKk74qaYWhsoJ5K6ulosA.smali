.class public final synthetic Lcom/android/providers/media/-$$Lambda$MediaScannerService$1$kjJf0qWKk74qaYWhsoJ5K6ulosA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/providers/media/MediaScannerService$1;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:I

.field private final synthetic f$3:I

.field private final synthetic f$4:I

.field private final synthetic f$5:Landroid/media/IMediaScannerListener;

.field private final synthetic f$6:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService$1;Ljava/lang/String;IIILandroid/media/IMediaScannerListener;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/providers/media/MediaScannerService$1;

    iput-object p2, p0, f$1:Ljava/lang/String;

    iput p3, p0, f$2:I

    iput p4, p0, f$3:I

    iput p5, p0, f$4:I

    iput-object p6, p0, f$5:Landroid/media/IMediaScannerListener;

    iput-object p7, p0, f$6:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, f$0:Lcom/android/providers/media/MediaScannerService$1;

    iget-object v1, p0, f$1:Ljava/lang/String;

    iget v2, p0, f$2:I

    iget v3, p0, f$3:I

    iget v4, p0, f$4:I

    iget-object v5, p0, f$5:Landroid/media/IMediaScannerListener;

    iget-object v6, p0, f$6:Landroid/content/Context;

    invoke-virtual/range {v0 .. v6}, Lcom/android/providers/media/MediaScannerService$1;->lambda$requestScanFile$0$MediaScannerService$1(Ljava/lang/String;IIILandroid/media/IMediaScannerListener;Landroid/content/Context;)V

    return-void
.end method
