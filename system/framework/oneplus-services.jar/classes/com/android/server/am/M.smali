.class Lcom/android/server/am/M;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/N;->gck(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/N;


# direct methods
.method constructor <init>(Lcom/android/server/am/N;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/am/N;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, this$0:Lcom/android/server/am/N;

    invoke-static {p0}, Lcom/android/server/am/N;->rtg(Lcom/android/server/am/N;)V

    return-void
.end method
