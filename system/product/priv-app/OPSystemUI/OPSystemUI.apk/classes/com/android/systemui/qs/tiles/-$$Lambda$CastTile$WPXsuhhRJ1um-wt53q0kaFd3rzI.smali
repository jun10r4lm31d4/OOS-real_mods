.class public final synthetic Lcom/android/systemui/qs/tiles/-$$Lambda$CastTile$WPXsuhhRJ1um-wt53q0kaFd3rzI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/tiles/CastTile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CastTile;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, f$0:Lcom/android/systemui/qs/tiles/CastTile;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, f$0:Lcom/android/systemui/qs/tiles/CastTile;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/CastTile;->lambda$showDetail$3$CastTile()V

    return-void
.end method
