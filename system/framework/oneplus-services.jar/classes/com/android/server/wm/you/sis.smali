.class Lcom/android/server/wm/you/sis;
.super Landroid/util/LruCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/you/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/you/ssp;


# direct methods
.method constructor <init>(Lcom/android/server/wm/you/ssp;I)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/you/ssp;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, zta(Ljava/lang/String;Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method protected zta(Ljava/lang/String;Landroid/graphics/Bitmap;)I
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method
