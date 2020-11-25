.class Lcom/android/server/wm/you/rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/you/ssp;->zta(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/you/ssp;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/ssp;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/ssp;

    iput p2, p0, val$userId:I

    iput-object p3, p0, val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/ssp;

    iget v1, p0, val$userId:I

    iget-object p0, p0, val$packageName:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/android/server/wm/you/ssp;->zta(Lcom/android/server/wm/you/ssp;ILjava/lang/String;)V

    return-void
.end method
