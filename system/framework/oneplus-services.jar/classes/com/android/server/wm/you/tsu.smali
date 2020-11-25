.class Lcom/android/server/wm/you/tsu;
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
.field final synthetic tga:I

.field final synthetic this$0:Lcom/android/server/wm/you/ssp;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/ssp;Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/ssp;

    iput-object p2, p0, val$packageName:Ljava/lang/String;

    iput-object p3, p0, val$context:Landroid/content/Context;

    iput p4, p0, tga:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, this$0:Lcom/android/server/wm/you/ssp;

    iget-object v1, p0, val$packageName:Ljava/lang/String;

    iget-object v2, p0, val$context:Landroid/content/Context;

    iget p0, p0, tga:I

    invoke-static {v0, v1, v2, p0}, Lcom/android/server/wm/you/ssp;->zta(Lcom/android/server/wm/you/ssp;Ljava/lang/String;Landroid/content/Context;I)V

    return-void
.end method
