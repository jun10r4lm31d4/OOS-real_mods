.class Lcom/android/server/wm/ywr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ugm$zta;->init(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityStackSupervisor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ugm$zta;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ugm$zta;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/wm/ugm$zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, this$0:Lcom/android/server/wm/ugm$zta;

    invoke-static {v0}, Lcom/android/server/wm/ugm$zta;->zta(Lcom/android/server/wm/ugm$zta;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_show_port_tool_box_guideline"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wm/ugm$zta;->access$000()Lcom/android/server/wm/ugm$zta$zta;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, this$0:Lcom/android/server/wm/ugm$zta;

    invoke-static {v0}, Lcom/android/server/wm/ugm$zta;->zta(Lcom/android/server/wm/ugm$zta;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "first_show_land_tool_box_guideline"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/android/server/wm/ugm$zta;->access$000()Lcom/android/server/wm/ugm$zta$zta;

    move-result-object v2

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, this$0:Lcom/android/server/wm/ugm$zta;

    invoke-virtual {p0}, Lcom/android/server/wm/ugm$zta;->Be()V

    return-void
.end method
