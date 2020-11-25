.class Lcom/android/providers/media/MediaProviderRingtoneUtils$1;
.super Ljava/lang/Object;
.source "MediaProviderRingtoneUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/media/MediaProviderRingtoneUtils;->ringtoneCheck(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$ringSettingName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, val$context:Landroid/content/Context;

    iput-object p2, p0, val$ringSettingName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, val$context:Landroid/content/Context;

    iget-object p0, p0, val$ringSettingName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/providers/media/MediaProviderRingtoneUtils;->access$000(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    return-void
.end method
