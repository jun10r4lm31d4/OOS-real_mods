.class final Lcom/android/providers/media/MediaProvider$RedactionInfo;
.super Ljava/lang/Object;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RedactionInfo"
.end annotation


# instance fields
.field public final freeOffsets:[J

.field public final redactionRanges:[J


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, redactionRanges:[J

    iput-object p2, p0, freeOffsets:[J

    return-void
.end method
