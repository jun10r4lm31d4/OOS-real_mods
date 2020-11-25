.class Lcom/android/server/wm/you/bio$you;
.super Lcom/android/server/wm/you/bio$rtg;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/bio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field private final mPackageName:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/you/bio;


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/bio;ILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/bio;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/you/bio$rtg;-><init>(Lcom/android/server/wm/you/bio;Lcom/android/server/wm/you/kth;)V

    iput p2, p0, mUserId:I

    iput-object p3, p0, mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method write()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/bio;

    iget v1, p0, mUserId:I

    iget-object p0, p0, mPackageName:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/you/bio;->zta(Lcom/android/server/wm/you/bio;ILjava/lang/String;)V

    return-void
.end method
