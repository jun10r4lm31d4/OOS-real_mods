.class Lcom/android/providers/media/PhotosProtectorUtils$ConfigUtils$RecycleBinConfigUpdater;
.super Ljava/lang/Object;
.source "PhotosProtectorUtils.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/PhotosProtectorUtils$ConfigUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecycleBinConfigUpdater"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    invoke-static {}, Lcom/android/providers/media/PhotosProtectorUtils;->access$200()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "PhotosProtectorUtils"

    const-string v0, "updateConfig"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/providers/media/PhotosProtectorUtils$ConfigUtils;->access$1000(Lorg/json/JSONArray;)V

    return-void
.end method
