.class Lcom/android/server/pm/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OpLauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OpLauncherAppsService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OpLauncherAppsService;)V
    .locals 0

    iput-object p1, p0, this$0:Lcom/android/server/pm/OpLauncherAppsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    iget p1, p1, Landroid/os/Message;->arg1:I

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    iget-object v1, p0, this$0:Lcom/android/server/pm/OpLauncherAppsService;

    const v2, 0x50f00e2

    const v3, 0x50f00e1

    const v4, 0x50f00e0

    const v5, 0x50f00db

    new-instance v6, Lcom/android/server/pm/rtg;

    invoke-direct {v6, p0}, Lcom/android/server/pm/rtg;-><init>(Lcom/android/server/pm/kth;)V

    :goto_0
    invoke-static/range {v1 .. v6}, Lcom/android/server/pm/OpLauncherAppsService;->access$000(Lcom/android/server/pm/OpLauncherAppsService;IIIILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v1, p0, this$0:Lcom/android/server/pm/OpLauncherAppsService;

    const v2, 0x50f00de

    const v3, 0x50f00dc

    const v4, 0x50f00dd

    const v5, 0x50f00db

    new-instance v6, Lcom/android/server/pm/cno;

    invoke-direct {v6, p0}, Lcom/android/server/pm/cno;-><init>(Lcom/android/server/pm/kth;)V

    goto :goto_0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return p0
.end method
