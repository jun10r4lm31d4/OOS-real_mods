.class Lcom/android/server/wm/you/bio$zta;
.super Lcom/android/server/wm/you/bio$rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/you/bio;


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/bio;I)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/bio;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/you/bio$rtg;-><init>(Lcom/android/server/wm/you/bio;Lcom/android/server/wm/you/kth;)V

    iput p2, p0, mUserId:I

    return-void
.end method


# virtual methods
.method write()V
    .locals 1

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    iget p0, p0, mUserId:I

    invoke-static {v0, p0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;I)V

    return-void
.end method
